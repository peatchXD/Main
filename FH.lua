local allowExecution = true

if not allowExecution then
    game.Players.LocalPlayer:Kick("Script Execution is Currently Locked. [Dm: peatchXD]")
    return
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Script-WH/refs/heads/main/Scriptf.lua"),true))()

-- Auto Farm Fisch by: NoName Hub --
-- สามารถกด J เพื่อหยุดการทำงานและกดอีกรอบคือให้มันทำงานต่อ Auto Farm --
-- สามารถกด K เพื่อหยุดการทำงานและกดอีกรอบคือให้มันทำงานต่อ Auto Sell --

local timeC = 1.7        -- เวลารอระหว่างการ Cast (Enchant: Hasty) --
local timeR = 0.3        -- เวลารอระหว่างการ Reel
local timeW = 0.1        -- เวลารอเมื่อหยุดทำงาน
local AutoFarm = true   -- สถานะของ Auto Farm
local AutoSell = true   -- สถานะของ Auto Sell 

local NpcName = ("Milo Merchant") -- Npc Name ตือชื่อ Npc ที่ต้องการดึกมาใกล้ๆตัวเรา --
local CFrameNpc = CFrame.new(950.527, -711.559, 1263.536) -- CFrame Npc คือจุดที่ไปหา Npc เพื่อให้โหลดตัว Npc --

local CFrameFisch = CFrame.new(939.556, -738.077, 1454.772) -- CFrame Fisch คือที่ยืนตกปลา --

local AnglesX = ("180")   -- Angles X หัดหน้าตัวละคร --
local AnglesY = ("8.801") -- Angles Y หัดหน้าตัวละคร --
local AnglesZ = ("180")   -- Angles Z หัดหน้าตัวละคร --
local CFrameAngles = CFrame.Angles(math.rad(AnglesX), math.rad(AnglesY), math.rad(AnglesZ))

local Cast = {
    [1] = 100,
    [2] = 1
}

local Reel = {
    [1] = 100,
    [2] = false
}

-- บริการที่ใช้
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart: Instance = character:WaitForChild("HumanoidRootPart")
-- ฟังก์ชันสำหรับกดปุ่ม 1
local function pressOneKey()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.One, false, game)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.One, false, game)
end

-- สลับสถานะการทำงานด้วยปุ่ม J
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.J then
        AutoFarm = not AutoFarm
        print(AutoFarm and "Script running." or "Script stopped.")
    end
end)

-- สลับสถานะการทำงานด้วยปุ่ม J
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.K then
        AutoSell = not AutoSell
        print(AutoSell and "Script running." or "Script stopped.")
    end
end)

-- ถือเบ็ด
pressOneKey()
wait(1.5)

-- ฟังก์ชันดัน NPC
local function moveNpcToPlayer(npcName)
    local npc = Workspace:WaitForChild("world"):WaitForChild("npcs"):FindFirstChild(npcName)
    local rootPart = character:WaitForChild("HumanoidRootPart")

    if npc then
        npc:SetPrimaryPartCFrame(rootPart.CFrame + Vector3.new(5, 0, 0)) -- ดัน NPC มาห่างจากตัว 5 หน่วย
        print(npcName .. " ถูกย้ายมาหาตัวละครของคุณแล้ว")
    else
        warn("ไม่พบนาย " .. npcName)
    end
end

rootPart.CFrame = CFrameNpc
game:GetService("Players").LocalPlayer.GameplayPaused = false
wait(1)

-- Auto Farm Script
spawn(function()
    while true do
        if AutoFarm then
            local rod = character:FindFirstChild("Rod Of The Depths")
            if rod and rod:FindFirstChild("events") then
                rootPart.CFrame = CFrameFisch * CFrameAngles
                game:GetService("Players").LocalPlayer.GameplayPaused = false
                task.wait(0.1)
                rod.events.cast:FireServer(unpack(Cast))
                task.wait(timeC)
                ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(Reel))
                task.wait(timeR)
            else
                print("Rod Of The Depths or events not found")
            end
        else
            task.wait(timeW)
        end
    end
end)

local function pressE()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- Auto Sell All Script
spawn(function()
    while true do
        if AutoSell then
            if rootPart then
            
                -- ย้ายไปจุดขาย
                task.wait(4)

                -- ดัน NPC Marc Merchant มาหาตัว
                moveNpcToPlayer(NpcName)

                -- กด E คุยกับ NPC
                pressE()

                task.wait(1)

                -- ขายปลา
                local success, errorMessage = pcall(function()
                    Workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild(NpcName):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
                end)

                if success then
                    print("Items sold successfully!")
                else
                    warn("Error during sell operation: " .. tostring(errorMessage))
                end

                task.wait(0.1)

                -- รีเซ็ตเบ็ดตกปลา
                local rod = character:FindFirstChild("Rod Of The Depths")
                if rod and rod:FindFirstChild("events") and rod.events:FindFirstChild("reset") then
                    rod.events.reset:FireServer()
                    print("Rod Of The Depths reset successfully.")
                else
                    warn("Rod Of The Depths or reset event not found.")
                end

                task.wait(30) -- รอ 30 วินาที
            else
                print("Invalid rootPart or positions.")
            end
        else
            task.wait(timeW)
        end
    end
end)

-- Anti-AFK
game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("Anti-AFK triggered")
end)

print("Script Initialized Successfully")
