local allowExecution = true

if not allowExecution then
    game.Players.LocalPlayer:Kick("Script Execution is Currently Locked. [Dm: peatchXD]")
    return
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Script-WH/refs/heads/main/Scriptf.lua"),true))()

-- Auto Farm Fisch by: NoName Hub --

----- กด J เพื่อหยุดสคริปหรือเล่นสคริปต่อ -----

local timeC = 2        -- เวลารอระหว่างการ cast (Enchant: Hasty)
local timeR = 0.5      -- เวลารอระหว่างการ reel ไม่ต้องปรับ
local timeW = 0.1      -- เวลารอเมื่อหยุดทำงาน ไม่ต้องปรับ
local running = true  -- สถานะของสคริปต์ (ต้องการให้สคริป auto farm ทำงานเลยไหม)
_G.AutoSellAll = true          -- ขายปลาในตัวทั้งหมดทุกๆ 35 วิ

----------------------------------------------------------------------------------------------------------------

local Reel = {
    [1] = 100,
    [2] = false
}

local Cast = {
    [1] = 100,
    [2] = 1
}

----------------------------------------------------------------------------------------------------------------

-- บริการที่ใช้
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local rootPart = character:WaitForChild("HumanoidRootPart")
local currentPosition = rootPart.CFrame
local sellPosition = CFrame.new(464, 151, 232)

----------------------------------------------------------------------------------------------------------------

-- ฟังก์ชันสำหรับกดปุ่ม 1
local function pressOneKey()
    -- กดปุ่ม 1
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.One, false, game)
    -- ปล่อยปุ่ม 1
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.One, false, game)
end

----------------------------------------------------------------------------------------------------------------

-- สลับสถานะการทำงานด้วยปุ่ม J
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.J then
            running = not running
            print(running and "Script running." or "Script stopped.")
        end
    end
end)

----------------------------------------------------------------------------------------------------------------

-- ถือเบ็ด
pressOneKey()
wait(1.5)

----------------------------------------------------------------------------------------------------------------

-- ลูปหลัก
while true do
    if running then
        -- ตรวจสอบว่า Rod Of The Depths อยู่ในตัวละครหรือไม่
        local rod = character:FindFirstChild("Rod Of The Depths")
        if rod and rod:FindFirstChild("events") then
            -- ตำแหน่งเป้าหมาย
            if character and character:FindFirstChild("HumanoidRootPart") then
                -- ย้ายตำแหน่งของ HumanoidRootPart ของตัวเอง
                character.HumanoidRootPart.CFrame = CFrame.new(939.5565795898438, -738.0772094726562, 1454.7725830078125) * CFrame.Angles(math.rad(180), math.rad(8.801), math.rad(180))
                print("ตัวเองถูกย้ายไปตำแหน่งที่กำหนด")
            end
            wait(0.1)
            rod.events.cast:FireServer(unpack(Cast))
            task.wait(timeC)
            ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(Reel))
            task.wait(timeR)
            player.PlayerGui.hud.Enabled = true
        else
            print("Rod Of The Depths หรือ events ไม่พบ")
        end
    else
        -- หยุดทำงานและรอ
        wait(timeW)
    end
end

----------------------------------------------------------------------------------------------------------------

-- Auto Sell All --
while true do
    if _G.AutoSellAll then
        -- ตรวจสอบ rootPart และตำแหน่งก่อน
        if rootPart and sellPosition and currentPosition then
            -- ย้ายตัวละครไปที่ตำแหน่งขาย
            wait(5)
            rootPart.CFrame = sellPosition
            task.wait(0.5)
            
            -- เรียกใช้การขาย
            workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
            task.wait(3)
            
            -- ย้ายตัวละครกลับตำแหน่งเดิม
            rootPart.CFrame = currentPosition
            wait(30)
        else
            print("ตำแหน่งหรือ rootPart ไม่ถูกต้อง")
        end
    else
        print("Auto SellAll มีปัญหา")
    end
    
    -- หยุดการทำงานชั่วคราว
    task.wait(timeW)
end


wait(5)

----------------------------------------------------------------------------------------------------------------

game.Players.LocalPlayer.Idled:Connect(function()
    local VirtualUser = game:GetService("VirtualUser")
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new()) -- คลิกปุ่มขวา
    print("AFK status detected. VirtualUser clicked to prevent idle.")
end)

print("OK AFK")

----------------------------------------------------------------------------------------------------------------
