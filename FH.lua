local allowExecution = true

if not allowExecution then
    game.Players.LocalPlayer:Kick("Script Execution is Currently Locked. [Dm: peatchXD]")
    return
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Script-WH/refs/heads/main/Scriptf.lua"),true))()

-- Auto Farm Fisch by: NoName Hub --

local timeC = 1.7        -- เวลารอระหว่างการ cast (Enchant: Hasty)
local timeR = 0.3      -- เวลารอระหว่างการ reel
local timeW = 0.1      -- เวลารอเมื่อหยุดทำงาน
local running = true   -- สถานะของ Auto Farm
_G.AutoSellAll = true  -- สถานะของ Auto Sell All
_G.ashake = false -- Auto Shake
_G.ashakespeed = true -- true คือกดเร็ว false คือกดช้า

local Reel = {
    [1] = 100,
    [2] = false
}

local Cast = {
    [1] = 100,
    [2] = 1
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
        running = not running
        print(running and "Script running." or "Script stopped.")
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

rootPart.CFrame = CFrame.new(950.527, -711.559, 1263.536)
game:GetService("Players").LocalPlayer.GameplayPaused = false
wait(1)

-- Auto Farm Script
spawn(function()
    while true do
        if running then
            local rod = character:FindFirstChild("Rod Of The Depths")
            if rod and rod:FindFirstChild("events") then
                rootPart.CFrame = CFrame.new(939.556, -738.077, 1454.772) * CFrame.Angles(math.rad(180), math.rad(8.801), math.rad(180))
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
    while _G.AutoSellAll do
        if rootPart then
        
            -- ย้ายไปจุดขาย
            task.wait(4)

            -- ดัน NPC Marc Merchant มาหาตัว
            moveNpcToPlayer("Milo Merchant")

            -- กด E คุยกับ NPC
            pressE()

            task.wait(1)

            -- ขายปลา
            local success, errorMessage = pcall(function()
                Workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Milo Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
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
    end
end)

-- Anti-AFK
game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("Anti-AFK triggered")
end)

print("Script Initialized Successfully")
