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
local Workspace = game:GetService("Workspace")

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

-- Auto Farm Script --
spawn(function()
    while true do
        if running then
            local rod = character:FindFirstChild("Rod Of The Depths")
            if rod and rod:FindFirstChild("events") then
                character.HumanoidRootPart.CFrame = CFrame.new(939.556, -738.077, 1454.772) * CFrame.Angles(math.rad(180), math.rad(8.801), math.rad(180))
                print("Moved to fishing position")
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

----------------------------------------------------------------------------------------------------------------

-- Auto Sell All Script --
spawn(function()
    while _G.AutoSellAll do
        if rootPart and sellPosition and currentPosition then
            rootPart.CFrame = sellPosition
            task.wait(0.5)
            
            local success, errorMessage = pcall(function()
                Workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
            end)

            if success then
                print("Items sold successfully!")
            else
                warn("Error during sell operation: " .. tostring(errorMessage))
            end

            task.wait(3)
            rootPart.CFrame = currentPosition
            task.wait(0.1)

            local rod = character:FindFirstChild("Rod Of The Depths")
            if rod and rod:FindFirstChild("events") and rod.events:FindFirstChild("reset") then
                rod.events.reset:FireServer()
                print("Rod Of The Depths reset successfully.")
            else
                warn("Rod Of The Depths or reset event not found.")
            end

            task.wait(30)
        else
            print("Invalid rootPart or positions.")
        end
    end
end)

----------------------------------------------------------------------------------------------------------------

-- Anti-AFK --
game.Players.LocalPlayer.Idled:Connect(function()
    local VirtualUser = game:GetService("VirtualUser")
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("Anti-AFK triggered")
end)


print("OK AFK")

----------------------------------------------------------------------------------------------------------------
