------------------------------------------------------------------------------------------

print("Loading Script NONAME HUB...")

------------------------------------------------------------------------------------------

local allowExecution = true

if not allowExecution then
    game.Players.LocalPlayer:Kick("Script Execution is Currently Locked. [Dm: peatchxd]")
    return
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Script-WH/refs/heads/main/Scriptf.lua"),true))()

------------------------------------------------------------------------------------------

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

------------------------------------------------------------------------------------------

-- โหลด Library GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib( GameName .. " | NONAME HUB (Beta)", "DarkTheme")

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("General")

-- บริการที่ใช้
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

-- ฟังก์ชันสำหรับกดปุ่ม
local function pressKey(key)
    VirtualInputManager:SendKeyEvent(true, key, false, game)
    VirtualInputManager:SendKeyEvent(false, key, false, game)
end

-- ตัวแปรสำหรับเก็บตำแหน่งที่บันทึกไว้
local savedPosition = nil

local Player = game:GetService("Players").LocalPlayer

-- เส้นทางโฟลเดอร์และไฟล์สำหรับบันทึก
local hubFolder = "NONAME HUB"
local playerFolder = hubFolder .. "/" .. Player.Name
local configFolder = playerFolder .. "/Config"
local positionFilePath = configFolder .. "/savedPosition.txt"

-- สร้างโฟลเดอร์หากยังไม่มี
if not isfolder(hubFolder) then
    makefolder(hubFolder)
end
if not isfolder(playerFolder) then
    makefolder(playerFolder)
end
if not isfolder(configFolder) then
    makefolder(configFolder)
end

-- ฟังก์ชันสำหรับบันทึกตำแหน่ง
function FarmPositionA()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        FarmPositionA = player.Character.HumanoidRootPart.CFrame
        -- แปลง CFrame เป็นข้อความ และบันทึกลงไฟล์
        local positionString = tostring(FarmPositionA) -- แปลง CFrame เป็นข้อความ
        writefile(positionFilePath, positionString)
        print("ตำแหน่งถูกบันทึก:", positionString)
    else
        warn("ไม่สามารถบันทึกตำแหน่งได้")
    end
end

-- ฟังก์ชันสำหรับเทเลพอร์ตไปยังตำแหน่งที่บันทึกไว้
function teleportToSavedPositionFarm()
    local player = game.Players.LocalPlayer
    if isfile(positionFilePath) then
        -- อ่านข้อมูลจากไฟล์และแปลงกลับเป็น CFrame
        local positionData = readfile(positionFilePath)
        -- แปลงข้อความกลับเป็น CFrame
        local success, loadedPosition = pcall(function()
            return CFrame.new(loadstring("return " .. positionData)())
        end)

        if success and player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = loadedPosition
        else
            warn("ไม่สามารถเทเลพอร์ตได้ หรือข้อมูลตำแหน่งไม่ถูกต้อง")
        end
    else
        warn("ไม่มีตำแหน่งที่บันทึกไว้")
    end
end

-- ตัวแปรสำหรับควบคุมสถานะ
local Config = { ["Auto Farm"] = false }

-- ฟังก์ชันสำหรับการฟาร์มปลา
local function FarmFish()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local Backpack = game.Players.LocalPlayer:WaitForChild("Backpack")
    local LocalPlayer = game.Players.LocalPlayer
    local RunService = game:GetService("RunService")
    local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value

    while Config["Auto Farm"] and task.wait() do
        if Backpack:FindFirstChild(RodName) then
            LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild(RodName))
        end

        teleportToSavedPositionFarm()

        if LocalPlayer.Character:FindFirstChild(RodName) and LocalPlayer.Character:FindFirstChild(RodName):FindFirstChild("bobber") then
            local XyzClone = ReplicatedStorage.resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
            XyzClone.Parent = PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
            XyzClone.Name = "Lure"
            XyzClone.Text = "<font color='#ff4949'>Lure </font>: 0%"

            teleportToSavedPositionFarm()

            repeat
                pcall(function()
                    PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size = UDim2.new(1001, 0, 1001, 0)
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
                    game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
                end)
                XyzClone.Text = "<font color='#ff4949'>Lure </font>: " .. tostring(LocalPlayer.Character:FindFirstChild(RodName).values.lure.Value) .. "%"
                RunService.Heartbeat:Wait()
            until not LocalPlayer.Character:FindFirstChild(RodName) or LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Config["Auto Farm"]

            XyzClone.Text = "<font color='#ff4949'>FISHING!</font>"
            delay(1, function()
                XyzClone:Destroy()
            end)

            repeat
                ReplicatedStorage.events.reelfinished:FireServer(100, true)
                teleportToSavedPositionFarm()
                task.wait(0.5)
            until not LocalPlayer.Character:FindFirstChild(RodName) or not LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Config["Auto Farm"]
        else
            LocalPlayer.Character:FindFirstChild(RodName).events.cast:FireServer(100)
            teleportToSavedPositionFarm()
            task.wait(2)
        end
    end
end

-- ส่วนของ UI ที่ใช้ปุ่ม
local Section = Tab:NewSection("Save Position Farm")

-- ปุ่มสำหรับบันทึกตำแหน่ง
Section:NewButton("Save Farm Position", "Record current location and direction", function()
    FarmPositionA()
end)

-- ปุ่มสำหรับเทเลพอร์ต
Section:NewButton("Teleport to Saved Position Farm", "Teleport to a saved location and direction.", function()
    teleportToSavedPositionFarm()
end)

local Section = Tab:NewSection("Auto Farm")

-- เพิ่ม Toggle ใน UI
Section:NewToggle("Auto Farm", "เปิด/ปิดการทำงานของฟังก์ชันฟาร์มปลา", function(state)
    Config["Auto Farm"] = state
    if state then
        print("Auto Farm Enabled")
        task.spawn(FarmFish)
    else
        print("Auto Farm Disabled")
    end
end)

-- Variable to control the Auto Cast state
Config = { ["Auto Cast"] = false }

-- Function for Auto Cast
local function AutoCast()
    local Player = game.Players.LocalPlayer
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RodName = ReplicatedStorage.playerstats[Player.Name].Stats.rod.Value
    local CastEvent

    -- Setup function to locate the Rod and Cast Event
    local function setupRod()
        local RodObject = Player.Character and Player.Character:FindFirstChild(RodName)
        if RodObject and RodObject:FindFirstChild("events") and RodObject.events:FindFirstChild("cast") then
            return RodObject.events.cast
        end
        return nil
    end

    -- Locate Cast Event for the first time
    CastEvent = setupRod()

    while Config["Auto Cast"] and task.wait(1) do
        -- If Cast Event is not found, try setting it up again
        if not CastEvent then
            CastEvent = setupRod()
        end

        -- If Cast Event is found, use it
        if CastEvent then
            CastEvent:FireServer(100)
        else
            print("Rod or Cast Event not found.")
        end
    end
end

-- Add Toggle to UI
Section:NewToggle("Auto Cast", "Enable/Disable Auto Cast function", function(state)
    Config["Auto Cast"] = state
    if state then
        print("Auto Cast Enabled")
        task.spawn(AutoCast)
    else
        print("Auto Cast Disabled")
    end
end)

-- ตัวแปรสำหรับควบคุมสถานะ
Config = { ["Auto Shake"] = false }

-- ฟังก์ชัน Auto Shake
local function AutoShake()
    local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local VirtualUser = game:GetService("VirtualUser")
    local RunService = game:GetService("RunService")

    while Config["Auto Shake"] and task.wait() do
        pcall(function()
            -- ขยายปุ่ม Shake เพื่อให้ VirtualUser คลิกได้
            local ShakeButton = PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button")
            if ShakeButton then
                ShakeButton.Size = UDim2.new(1001, 0, 1001, 0)
                VirtualUser:Button1Down(Vector2.new(1, 1))
                VirtualUser:Button1Up(Vector2.new(1, 1))
            end
        end)
        RunService.Heartbeat:Wait()
    end
end

-- เพิ่ม Toggle ใน UI
Section:NewToggle("Auto Shake", "เปิด/ปิดการทำงาน Auto Shake", function(state)
    Config["Auto Shake"] = state
    if state then
        print("Auto Shake Enabled")
        task.spawn(AutoShake)
    else
        print("Auto Shake Disabled")
    end
end)

-- Variable to control the Auto Reel state
Config = { ["Auto Reel"] = false }

-- Function for Auto Reel
local function AutoReel()
    local Player = game.Players.LocalPlayer
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    while Config["Auto Reel"] and task.wait(0.5) do
        pcall(function()
            -- Detect if the player has a rod with an active bite
            local RodName = ReplicatedStorage.playerstats[Player.Name].Stats.rod.Value
            local RodObject = Player.Character and Player.Character:FindFirstChild(RodName)
            if RodObject and RodObject:FindFirstChild("values") and RodObject.values.bite.Value then
                -- Trigger the reel event when a bite is detected
                ReplicatedStorage.events.reelfinished:FireServer(100, true)
            end
        end)
    end
end

-- Add Toggle to UI
Section:NewToggle("Auto Reel", "Enable/Disable Auto Reel function", function(state)
    Config["Auto Reel"] = state
    if state then
        print("Auto Reel Enabled")
        task.spawn(AutoReel)
    else
        print("Auto Reel Disabled")
    end
end)

local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local Section = Tab:NewSection("Reel Bar")

Section:NewTextBox("Bar Size (0-1)", " ", function(Barsize) 
    BarSize = Barsize
end)

-- ฟังก์ชันปรับขนาด playerbar
local function adjustPlayerBar()
    local reel = playerGui:FindFirstChild("reel")
    wait(0.45)
    if reel and reel:FindFirstChild("bar") and reel.bar:FindFirstChild("playerbar") then
        reel.bar.playerbar.Size = UDim2.new(BarSize, 0, 1, 0) -- ปรับขนาดใหม่
    else
        print("ไม่พบ playerbar หรือส่วนที่เกี่ยวข้องใน reel.")
    end
end

Section:NewButton("Reel Bar", " ", function()
    adjustPlayerBar()
end)

local Section = Tab:NewSection("Anti-AFK Display Tag")

local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

-- สถานะการทำงาน
local isMonitoringEnabled = false

-- ฟังก์ชันตรวจสอบตัวละครของผู้เล่นใน Workspace
local function checkAfk(character)
    -- ตรวจสอบว่า character มีไฟล์ "afk" หรือไม่
    local afkFile = character:FindFirstChild("afk")
    if afkFile then
        -- ถ้าเจอ "afk" file ก็ส่งคำสั่งไปยัง Server
        local afkEvent = ReplicatedStorage:FindFirstChild("events") and ReplicatedStorage.events:FindFirstChild("afk")
        if afkEvent then
            afkEvent:FireServer()
        else
            warn("Event 'afk' not found.")
        end
    end
end

-- ฟังก์ชันเมื่อมีการเพิ่มตัวละคร
local function onCharacterAdded(character)
    -- ตรวจสอบว่าเป็นตัวละครของผู้เล่นหรือไม่
    if character:IsA("Model") and character:FindFirstChild("Humanoid") then
        checkAfk(character)
    end
end

-- ฟังก์ชันเปิด/ปิดการตรวจจับ
local function toggleMonitoring(state)
    isMonitoringEnabled = state
    if isMonitoringEnabled then
        -- ตรวจสอบตัวละครใน Workspace ทุกครั้ง
        RunService.Heartbeat:Connect(function()
            -- ตรวจสอบทุกตัวละครใน Workspace ตลอดเวลา
            for _, character in ipairs(Workspace:GetChildren()) do
                if character:IsA("Model") and character:FindFirstChild("Humanoid") then
                    if character == Players.LocalPlayer.Character then
                        -- ตรวจสอบเฉพาะตัวละครของเรา
                        checkAfk(character)
                    end
                end
            end
        end)

    else
    end
end

-- ปุ่มใน UI สำหรับเปิด/ปิดการตรวจจับ
Section:NewToggle("Anti AFK Tag", " ", function(state)
    toggleMonitoring(state)
end)

local Section = Tab:NewSection("Repair Map")

local function pressE()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- ฟังก์ชันสำหรับบันทึกตำแหน่ง
function savePosition()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        savedPosition = player.Character.HumanoidRootPart.CFrame
        print("ตำแหน่งถูกบันทึก:", savedPosition)
    else
        warn("ไม่สามารถบันทึกตำแหน่งได้.")
    end
end

-- ฟังก์ชันสำหรับวาร์ปกลับไปยังตำแหน่งเดิม
function warpToSavedPosition()
    local player = game.Players.LocalPlayer
    if savedPosition and player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = savedPosition
        print("วาร์ปกลับไปยังตำแหน่งที่บันทึกไว้สำเร็จ!")
    else
        warn("ไม่สามารถวาร์ปได้. ตรวจสอบว่าตำแหน่งถูกบันทึกแล้วหรือยัง.")
    end
end

-- ฟังก์ชันเพื่อดึง Part ใน workspace.world.chests มาที่ตัวละคร
function bringPartsToPlayer()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then
        warn("Could not find HumanoidRootPart in the player character.")
        return
    end

    local chestsFolder = workspace:FindFirstChild("world") and workspace.world:FindFirstChild("chests")
    if chestsFolder then
        for _, part in ipairs(chestsFolder:GetDescendants()) do
            if part:IsA("BasePart") then
                -- ย้าย Part มาที่ตำแหน่งข้างตัวผู้เล่น
                local targetCFrame = humanoidRootPart.CFrame * CFrame.new(5, 0, 0) -- ย้ายไปด้านขวาของผู้เล่น
                part.CFrame = targetCFrame
                print("Brought part:", part.Name, "to player.")
            end
        end
    else
        warn("Could not find 'chests' folder in workspace.world.")
    end
end

-- ฟังก์ชันสำหรับเปิดใช้งาน ProximityPrompt ใน TreasureChest ทุกอัน
local function activateAllChestPrompts()
    local chestsFolder = workspace:FindFirstChild("world") and workspace.world:FindFirstChild("chests")
    if chestsFolder then
        for _, chest in ipairs(chestsFolder:GetChildren()) do
            -- ตรวจสอบว่าเป็น TreasureChest หรือไม่
            if chest.Name:find("TreasureChest_") and chest:FindFirstChild("ProximityPrompt") then
                local prompt = chest.ProximityPrompt

                -- ปรับค่าการทำงานของ ProximityPrompt
                prompt.HoldDuration = 0 -- กดทันที
                prompt.RequiresLineOfSight = false -- ไม่ต้องการ Line of Sight
                prompt.MaxActivationDistance = 50 -- ขยายระยะโต้ตอบ

                -- เรียกใช้งาน ProximityPrompt
                fireproximityprompt(prompt)
                print("เปิดใช้งาน ProximityPrompt ใน:", chest.Name)
            end
        end
    else
        warn("ไม่พบโฟลเดอร์ 'chests' ใน workspace.world.")
    end
end

-- ฟังก์ชันซ่อมแผนที่
function repairMap()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local NpcName = "Jack Marrow" -- ชื่อ NPC

    local repairMapFunction = workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild(NpcName):WaitForChild("treasure"):FindFirstChild("repairmap")
    if repairMapFunction then
        repairMapFunction:InvokeServer() -- เรียกใช้ฟังก์ชันซ่อมแผนที่
        print("Repaired the map successfully!")
    else
        warn("Could not find 'repairmap' function.")
    end
end

local CFrameNpc = CFrame.new(-2826.515, 214.708, 1516.846) -- ตำแหน่งที่ NPC โหลดเข้ามา

-- ปุ่มสำหรับซ่อมแผนที่
Section:NewButton("Repair Treasure Map", "ซ่อมแผนที่", function()
    savePosition() -- บันทึกตำแหน่งปัจจุบัน
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameNpc -- วาร์ปไปที่ NPC
    task.wait(0.5)
    pressE() -- กดปุ่ม E เพื่อโต้ตอบ
    task.wait(0.5)
    repairMap()
    -- เรียกใช้ฟังก์ชัน
    task.wait(0.5)
    warpToSavedPosition() -- วาร์ปกลับตำแหน่งเดิม
    task.wait(0.5)
    bringPartsToPlayer()
    -- เรียกใช้ฟังก์ชัน
    activateAllChestPrompts()
    pressE() -- กดปุ่ม E เพื่อโต้ตอบ
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Miscellaneous")

local Section = Tab:NewSection("Misc Controls")

Section:NewToggle("Infinite (oxygen, oxygen(peaks), temperature)", " ", function(BypASS)
    -- เมื่อกด toggle ให้สลับค่า BypASS จาก true เป็น false หรือจาก false เป็น true
    BypASS = not BypASS  -- สลับค่า

    -- วนลูปหาตัวละครทั้งหมดใน workspace
    for _, character in pairs(workspace:GetChildren()) do
        -- ค้นหา client ในแต่ละตัวละคร
        local client = character:FindFirstChild("client")
        
        -- ถ้ามี client
        if client then
            -- ค้นหาวัตถุ 'oxygen'
            local oxygen = client:FindFirstChild("oxygen")
            if oxygen then
                oxygen.Enabled = BypASS
            else
                warn("Object 'oxygen' not found in " .. character.Name)
            end
    
            -- ค้นหาวัตถุ 'oxygen(peaks)'
            local oxygenPeaks = client:FindFirstChild("oxygen(peaks)")
            if oxygenPeaks then
                oxygenPeaks.Enabled = BypASS
            else
                warn("Object 'oxygen(peaks)' not found in " .. character.Name)
            end
    
            -- ค้นหาวัตถุ 'temperature'
            local temperature = client:FindFirstChild("temperature")
            if temperature then
                temperature.Enabled = BypASS
            else
                warn("Object 'temperature' not found in " .. character.Name)
            end
        else
            -- ถ้าไม่พบ 'client' ในตัวละคร
            warn("Object 'client' not found in " .. character.Name)
        end
    end
end)

-- Bypass Radar Toggle
Section:NewToggle("Bypass Radar", "Toggle Bypass Radar", function(state)
    for _, v in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
        if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
            v.Enabled = state
        end
    end
    print("Bypass Radar:", state)
end)

-- Bypass GPS Toggle
local BypassGpsLoop = nil
Section:NewToggle("Bypass GPS", "Toggle Bypass GPS", function(state)
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local hud = playerGui:WaitForChild("hud")
    local backpack = hud:WaitForChild("safezone"):WaitForChild("backpack")

    if state then
        local xyzClone = replicatedStorage.resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
        xyzClone.Parent = backpack

        local function getPosition()
            -- Replace this with the actual function to get position
            return {0, 0, 0} -- Example position
        end

        local function exportValue(value)
            return tostring(value) -- Replace with actual formatting if needed
        end

        BypassGpsLoop = game:GetService("RunService").Heartbeat:Connect(function()
            local pos = getPosition()
            local stringInput = string.format("%s,%s,%s", exportValue(pos[1]), exportValue(pos[2]), exportValue(pos[3]))
            xyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: " .. stringInput
        end)
    else
        if backpack:FindFirstChild("xyz") then
            backpack:FindFirstChild("xyz"):Destroy()
        end
        if BypassGpsLoop then
            BypassGpsLoop:Disconnect()
            BypassGpsLoop = nil
        end
    end
    print("Bypass GPS:", state)
end)

-- Bypass Sell All Toggle
Section:NewToggle("Bypass Sell All", "Toggle Bypass Sell All (Game Pass)", function(state)
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local sellAllButton = playerGui.hud.safezone.backpack.inventory.Sell.sellall
    local replicatedStorage = game:GetService("ReplicatedStorage")

    if state then
        sellAllButton.Disabled = true
        sellAllButton.MouseButton1Click:Connect(function()
            if sellAllButton.Disabled then
                replicatedStorage:WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
            end
        end)
    else
        sellAllButton.Disabled = false
    end
    print("Bypass Sell All:", state)
end)

-- Weather Clear Toggle
Section:NewToggle("Weather Clear", "Toggle Weather Clear", function(state)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local weather = ReplicatedStorage.world.weather
    local OldWEA = ReplicatedStorage.world.weather.Value
    if weather then
        if state then
            weather.Value = "Clear"
        else
            weather.Value = OldWEA -- เปลี่ยนเป็นสภาพอากาศที่ต้องการ
        end
        print("Weather Clear:", state)
    end
end)

-- ฟังก์ชัน Walk On Water
local function SetWalkOnWater(enabled)
    for i, v in pairs(workspace.zones.fishing:GetChildren()) do
        if v.Name == "Ocean" or v.Name == "Deep Ocean" then
            v.CanCollide = enabled
        end
    end
end

-- เพิ่ม Toggle "Walk On Water"
Section:NewToggle("Walk On Water", "Toggle to walk on water surfaces", function(state)
    SetWalkOnWater(state)
    if state then
        print("Walk On Water Enabled")
    else
        print("Walk On Water Disabled")
    end
end)

-- See at Night Toggle
Section:NewToggle("See at Night", "Remove Fog", function(state)
    local lighting = game:GetService("Lighting")
    if lighting then
        if state then
            local sky = lighting:FindFirstChild("Sky")
            if sky then
                sky.Parent = lighting:FindFirstChild("bloom") or lighting
            end
        else
            local bloom = lighting:FindFirstChild("bloom")
            if bloom and bloom:FindFirstChild("Sky") then
                bloom.Sky.Parent = lighting
            end
        end
        print("See at Night:", state)
    end
end)

-- Day Only Toggle
local DayOnlyLoop = nil
Section:NewToggle("Day Only", "Set daytime to noon", function(state)
    local lighting = game:GetService("Lighting")
    if state then
        DayOnlyLoop = game:GetService("RunService").Heartbeat:Connect(function()
            lighting.TimeOfDay = "12:00:00"
        end)
    else
        if DayOnlyLoop then
            DayOnlyLoop:Disconnect()
            DayOnlyLoop = nil
        end
    end
    print("Day Only:", state)
end)

local Section = Tab:NewSection("Auto Collect Meteor")

local workspaceMeteorItems = workspace:WaitForChild("MeteorItems")

-- Status variables
local isWarping = false
local originalPosition = nil
local collectedItems = {}  -- Table to store collected MeteorItems

-- Function to find the first MeteorItem
local function getFirstMeteorItem()
    for _, item in pairs(workspaceMeteorItems:GetChildren()) do
        if item:IsA("BasePart") then
            return item
        elseif item:IsA("Model") then
            local primaryPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
            if primaryPart then
                return primaryPart
            end
        end
    end
    return nil
end

-- Function to warp and interact with a MeteorItem
local function warpAndInteract(targetItem)
    if isWarping then return end
    isWarping = true

    local character = Player.Character or Player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Save original position
    originalPosition = humanoidRootPart.CFrame

    -- Warp to MeteorItem's position
    humanoidRootPart.CFrame = targetItem.CFrame * CFrame.new(0, 3, 0) -- Slightly raise
    print("Warped to MeteorItem:", targetItem.Parent and targetItem.Parent.Name or targetItem.Name)

    -- Wait a bit and simulate pressing the 'E' key
    task.wait(0.25)
    pressKey(Enum.KeyCode.E)

    -- Mark the item as collected
    collectedItems[targetItem] = true

    -- Wait for a second before warping back
    task.wait(0.25)
    if originalPosition then
        humanoidRootPart.CFrame = originalPosition
    end

    isWarping = false
end

-- Function to monitor MeteorItems
task.spawn(function()
    while _G.MeteorItems do
        -- Clean up collected items no longer in the workspace
        for item, _ in pairs(collectedItems) do
            if not item:IsDescendantOf(workspace) then
                collectedItems[item] = nil
                print("MeteorItem removed, ready to collect again.")
            end
        end

        -- Find the first MeteorItem
        local targetItem = getFirstMeteorItem()

        if targetItem and not collectedItems[targetItem] then
            -- Warp and interact with uncollected item
            pcall(function()
                warpAndInteract(targetItem)
            end)
        end

        task.wait(1) -- Check every second for new MeteorItems
    end
end)

-- Toggle the Auto Meteor feature
Section:NewToggle("Auto Meteor", "Automatically collect MeteorItems", function(Meteor)
    _G.MeteorItems = Meteor
    if Meteor then
        print("Auto Meteor Enabled.")
    else
        print("Auto Meteor Disabled.")
    end
end)

local Section = Tab:NewSection("Dupe Totem")

Section:NewDropdown("Select Totem Dupe", "Click To Select", { "Aurora Totem", "Eclipse Totem", "Meteor Totem", "Smokescreen Totem", "Sundial Totem", "Tempest Totem", "Windset Totem" }, function(totemDU)
    totem = totemDU
end)

Section:NewButton("Dupe Totem (Must have 1 only.)", "ButtonInfo", function()
    -- ย้าย "Rod" จาก Backpack ไปยัง Character
    for _, item in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if item:FindFirstChild("rod/client") then
            item.Parent = game.Players.LocalPlayer.Character
        end
    end
    task.wait(2) -- รอให้การย้าย Rod เสร็จสมบูรณ์

    -- ตรวจสอบ Totem ใน Backpack และใช้งาน
    local totemTool = game.Players.LocalPlayer.Backpack:FindFirstChild(totem)
    if totemTool then
        totemTool.Parent = game.Players.LocalPlayer.Character
        task.wait(1) -- รอให้ Totem ถูกเพิ่มเข้าไปใน Character

        -- ใช้งาน Totem
        local equippedTotem = game.Players.LocalPlayer.Character:FindFirstChild(totem)
        if equippedTotem then
            equippedTotem:Activate()
            task.wait(6) -- รอระหว่างการใช้งาน Totem
        else
            warn("Totem not found in Character after equipping.")
        end
    else
        warn("Totem not found in Backpack: " .. totem)
        return
    end

    -- คืนอุปกรณ์ทั้งหมดกลับไปยัง Backpack
    for _, tool in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Teleport")

local Section = Tab:NewSection("Bestiary")
Section:NewButton("Un Lock All Bestiary", " ", function()
    local Discoverlocation = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("discoverlocation")

    -- Path to the folder
    local Bestiary = workspace.zones.fishing
    
    -- Table to store file names
    local zones = {}
    
    -- Loop through and collect file names
    for _, itemsA in ipairs(Bestiary:GetChildren()) do
        if itemsA:IsA("Instance") then -- Check if it's an Instance (Folder, Model, or Object)
            table.insert(zones, itemsA.Name) -- Add the name to the table
        end
    end
    
    -- วนลูปส่งข้อมูลโซนทั้งหมด
    for _, zoneName in ipairs(zones) do
        Discoverlocation:FireServer(zoneName)
    end
    
    print("Un Lock All Bestiary")
end)

local TeleportMenu = Tab:NewSection("Teleport Event")
local CreatedParts = {} -- เก็บ Part ที่ถูกสร้างไว้

local DeletedPart = TeleportMenu:NewButton("Delete All Parts", "Delete all created parts", function()
    for _, part in pairs(CreatedParts) do
        if part and part.Parent then
            part:Destroy()
        end
    end
    CreatedParts = {} -- ล้างรายการ Part ที่ถูกเก็บไว้
    print("All parts have been deleted.")
end)

local EventFisch = {"Megalodon Default", "Great Hammerhead Shark", "Whale Shark", "Great White Shark", "Isonade", "The Depths - Serpent"}

for i, EventName in ipairs(EventFisch) do
    TeleportMenu:NewButton("Teleport To " .. EventName, "To " .. EventName, function()
        local player = game.Players.LocalPlayer
        local item = workspace.zones.fishing:FindFirstChild(EventName)
        
        if item then
            local rootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                rootPart.CFrame = item.CFrame * CFrame.new(0, 10, 0)
                item.CanCollide = true
                print("Teleport To " .. EventName)

                -- สร้าง Part ใต้ตัวละคร
                local part = Instance.new("Part")
                part.Size = Vector3.new(15, 0.4, 15)
                part.Position = rootPart.Position - Vector3.new(0, 3, 0)
                part.Anchored = true
                part.CanCollide = true
                part.Material = Enum.Material.SmoothPlastic
                part.Color = Color3.new(1, 1, 1)
                part.Transparency = 0.7
                part.Name = "PartFeet"
                part.Parent = workspace

                -- เก็บ Part ในตาราง
                table.insert(CreatedParts, part)
            else
                print("HumanoidRootPart not found.")
            end
        else
            print("Item " .. EventName .. " not found in the workspace.")
        end
    end)
end

local Section = Tab:NewSection("Teleport Zone")

-- Path to the folder
local SpotsS = workspace.world.spawns.TpSpots

-- Table to store teleport spots
local teleportSpots = {}

-- Loop through and collect names and positions
for _, spot in ipairs(SpotsS:GetChildren()) do
    if spot:IsA("BasePart") or spot:IsA("Model") then -- Check if it's a part or model
        local cframeValue = spot:FindFirstChild("CFrameValue") -- Check if it has a CFrameValue child
        if cframeValue and cframeValue:IsA("CFrameValue") then
            teleportSpots[spot.Name] = cframeValue.Value
        elseif spot:IsA("BasePart") then
            teleportSpots[spot.Name] = spot.CFrame
        else
            warn("No valid CFrame found for spot:", spot.Name)
        end
    end
end

local itemSpots = {
    Training_Rod = CFrame.new(457.693848, 148.357529, 230.414307, 1, -0, 0, 0, 0.975410998, 0.220393807, -0, -0.220393807, 0.975410998),
    Plastic_Rod = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, -0.298537821, -3.42726707e-07, 0.972884834, 0.231290117, 0.306858391, -0.220131472, 0.925948203),
    Lucky_Rod = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, -0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, -0.107199371, -0.371867687, 0.922075212),
    Kings_Rod = CFrame.new(1375.57642, -810.201721, -303.509247, -0.7490201, 0.662445903, -0.0116144121, -0.0837960541, -0.0773290396, 0.993478119, 0.657227278, 0.745108068, 0.113431036),
    Flimsy_Rod = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, -0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, -0.13314943, 0.831042409),
    Nocturnal_Rod = CFrame.new(-141.874237, -515.313538, 1139.04529, 0.161644459, -0.98684907, 1.87754631e-05, 1.87754631e-05, 2.21133232e-05, 1, -0.98684907, -0.161644459, 2.21133232e-05),
    Fast_Rod = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 1.26492232e-05, 0.193478703, -0.0522461236, 0.962867677, 0.264870107, -0.186291039, -0.269973755, 0.944674432),
    Carbon_Rod = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, -0.170404434, 1.41561031e-07, 1.41561031e-07, 1.7285347e-06, 1, -0.170404434, -0.985374212, 1.7285347e-06),
    Long_Rod = CFrame.new(485.695038, 171.656326, 145.746109, -0.630167365, -0.776459217, -5.33461571e-06, 5.33461571e-06, -1.12056732e-05, 1, -0.776459217, 0.630167365, 1.12056732e-05),
    Mythical_Rod = CFrame.new(389.716705, 132.588821, 314.042847, 0, 1, 0, 0, 0, -1, -1, 0, 0),
    Midas_Rod = CFrame.new(401.981659, 133.258316, 326.325745, 0.16456604, 0.986365497, 0.00103566051, 0.00017541647, 0.00102066994, -0.999999464, -0.986366034, 0.1645661, -5.00679016e-06),
    Trident_Rod = CFrame.new(-1484.34192, -222.325562, -2194.77002, -0.466092706, -0.536795318, 0.703284025, -0.319611132, 0.843386114, 0.43191275, -0.824988723, -0.0234660208, -0.56466186),
    Enchated_Altar = CFrame.new(1310.54651, -799.469604, -82.7303467, 0.999973059, 0, 0.00733732153, 0, 1, 0, -0.00733732153, 0, 0.999973059),
    Bait_Crate = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
    Quality_Bait_Crate = CFrame.new(-177.876, 144.472, 1932.844),
    Crab_Cage = CFrame.new(474.803589, 149.664566, 229.49469, -0.721874595, 0, 0.692023814, 0, 1, 0, -0.692023814, 0, -0.721874595),
    GPS = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-06, -0.719539165, -0.694451928, -1, -7.39097595e-06, -3.01003456e-06, -3.01003456e-06, 0.694451928, -0.719539165),
    Basic_Diving_Gear = CFrame.new(369.174774, 132.508835, 248.705368, 0.228398502, -0.158300221, -0.96061182, 1.58026814e-05, 0.986692965, -0.162594408, 0.973567724, 0.037121132, 0.225361705),
    Fish_Radar = CFrame.new(365.75177, 134.50499, 274.105804, 0.704499543, -0.111681774, -0.70086211, 1.32396817e-05, 0.987542748, -0.157350808, 0.709704578, 0.110844307, 0.695724905)
}

for name, cframe in pairs(teleportSpots) do
    Section:NewButton(name, "Teleport to " .. name, function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = cframe
        end
    end)
end

local Section = Tab:NewSection("Item")

for name, cframe in pairs(itemSpots) do
    Section:NewButton(name, "Teleport to " .. name, function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = cframe
        end
    end)
end

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Shop")

local Section = Tab:NewSection("Item")

-- Variables to store the selected item and amount
local selectedItem = nil
local itemAmount = nil

-- Path to the folder
local itemsAD = game:GetService("ReplicatedStorage").resources.items.items

-- Table to store file names
local itemsGA = {}

-- Loop through and collect file names
for _, itemsA in ipairs(itemsAD:GetChildren()) do
    if itemsA:IsA("Instance") then -- Check if it's an Instance (Folder, Model, or Object)
        table.insert(itemsGA, itemsA.Name) -- Add the name to the table
    end
end

-- Dropdown for selecting items
Section:NewDropdown("Select Items", "Click To Select", itemsGA, function(selected)
    selectedItem = selected -- Save the selected item
    print("Selected Item:", selectedItem)
end)

-- TextBox for entering the amount
Section:NewTextBox("Amount Item", " ", function(amountInput)
    local num = tonumber(amountInput)
    if num and num > 0 then
        itemAmount = num -- Save the valid amount
        print("Item Amount Set To:", itemAmount)
    else
        warn("Invalid amount entered. Please enter a positive number.")
    end
end)

-- Button to trigger the purchase
Section:NewButton("Buy Item", " ", function()
    if selectedItem and itemAmount then
        -- Trigger the purchase event
        local success, err = pcall(function()
            game:GetService('ReplicatedStorage').events.purchase:FireServer(selectedItem, 'item', nil, itemAmount)
        end)

        if success then
            print("Purchase Successful: " .. selectedItem .. " x" .. itemAmount)
        else
            warn("Purchase Failed:", err)
        end
    else
        warn("Please select an item and enter a valid amount before purchasing.")
    end
end)

local Section = Tab:NewSection("Rods")

-- Variables to store the selected item and amount
local selectedItemA = nil
local itemAmountA = nil

-- Path to the folder
local rodAD = game:GetService("ReplicatedStorage").resources.items.rods

-- Table to store file names
local RODGA = {}

-- Loop through and collect file names
for _, rodA in ipairs(rodAD:GetChildren()) do
    if rodA:IsA("Instance") then -- Check if it's an Instance (Folder, Model, or Object)
        table.insert(RODGA, rodA.Name) -- Add the name to the table
    end
end

-- Dropdown for selecting items
Section:NewDropdown("Select Items", "Click To Select", RODGA, function(selectedA)
    selectedItemA = selectedA -- Save the selected item
    print("Selected Item:", selectedItemA)
end)

-- TextBox for entering the amount
Section:NewTextBox("Amount Item", " ", function(amountInputA)
    local num = tonumber(amountInputA)
    if num and num > 0 then
        itemAmountA = num -- Save the valid amount
        print("Item Amount Set To:", itemAmountA)
    else
        warn("Invalid amount entered. Please enter a positive number.")
    end
end)

-- Button to trigger the purchase
Section:NewButton("Buy Item", " ", function()
    if selectedItemA and itemAmountA then
        -- Trigger the purchase event
        local success, err = pcall(function()
            game:GetService('ReplicatedStorage').events.purchase:FireServer(selectedItemA, 'rod', nil, itemAmountA)
        end)

        if success then
            print("Purchase Successful: " .. selectedItemA .. " x" .. itemAmountA)
        else
            warn("Purchase Failed:", err)
        end
    else
        warn("Please select an item and enter a valid amount before purchasing.")
    end
end)

local Section = Tab:NewSection("Fish")

-- Variables to store the selected item and amount
local selectedItemAD = nil
local itemAmountAD = nil

-- Path to the folder
local FishG = game:GetService("ReplicatedStorage").resources.items.fish

-- Table to store file names
local fishGA = {}

-- Loop through and collect file names
for _, rod in ipairs(FishG:GetChildren()) do
    if rod:IsA("Instance") then -- Check if it's an Instance (Folder, Model, or Object)
        table.insert(fishGA, rod.Name) -- Add the name to the table
    end
end

-- Dropdown for selecting items
Section:NewDropdown("Select Items", "Click To Select", fishGA, function(selectedAD)
    selectedItemAD = selectedAD -- Save the selected item
    print("Selected Item:", selectedItemAD)
end)

-- TextBox for entering the amount
Section:NewTextBox("Amount Item", "Enter the amount", function(amountInputAD)
    local num = tonumber(amountInputAD)
    if num and num > 0 then
        itemAmountAD = num -- Save the valid amount
        print("Item Amount Set To:", itemAmountAD)
    else
        warn("Invalid amount entered. Please enter a positive number.")
    end
end)

-- Button to trigger the purchase
Section:NewButton("Buy Item", "Click to purchase the item", function()
    if selectedItemAD and itemAmountAD then
        -- Trigger the purchase event
        local success, err = pcall(function()
            game:GetService("ReplicatedStorage").events.purchase:FireServer(selectedItemAD, "fish", nil, itemAmountAD)
        end)

        if success then
            print("Purchase Successful: " .. selectedItemAD .. " x" .. itemAmountAD)
        else
            warn("Purchase Failed:", err)
        end
    else
        warn("Please select an item and enter a valid amount before purchasing.")
    end
end)

local Section = Tab:NewSection("Teleport Merlin")

local NPCS = workspace.world.npcs

Section:NewButton("Teleport To Merlin", "Click to purchase the item", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-928.032, 223.700, -998.744)
end)

local Section = Tab:NewSection("Enchant Relic (Merlin)")

Section:NewButton("Buy Item (1)", "Click to purchase the item", function()
    NPCS.Merlin.Merlin.power:InvokeServer()
end)

local Section = Tab:NewSection("Luck VI (Merlin)")

Section:NewButton("Buy Item (1)", "Click to purchase the item", function()
    NPCS.Merlin.Merlin.luck:InvokeServer()
end)

local Section = Tab:NewSection("Teleport Appraiser")

Section:NewButton("Teleport To Appraiser", "Click to purchase the item", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21.058, 136.492, -1132.180)
end)

local Section = Tab:NewSection("Appraiser Fisch (Appraiser)")

Section:NewButton("Buy Item (1)", "Click to purchase the item", function()
    NPCS.Appraiser.appraiser.appraise:InvokeServer()
end)

local Section = Tab:NewSection("Teleport Cole (Statue Of Sovereignty)")

Section:NewButton("Teleport To Cole", "Click to purchase the item", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21.058, 136.492, -1132.180)
end)

local Section = Tab:NewSection("MineTokens/Token (Cole)")

Section:NewButton("Buy Item (1)", "Click to purchase the item", function()
    NPCS.Cole.dialog.purchased:InvokeServer()
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Virtual User")

local Section = Tab:NewSection("Developer Console")

Section:NewButton("Open Console", " ", function()
    pressKey(Enum.KeyCode.F9)
end)

local Section = Tab:NewSection("No Cooldown")

Section:NewButton("Auto Interact [E] (Beta)", false, function()
    _G.AutoInteract = not _G.AutoInteract -- Toggle เปิด/ปิด
    if _G.AutoInteract then
        print("Auto Interact [E] เริ่มทำงาน")
        while _G.AutoInteract do
            local virtualUser = game:GetService('VirtualUser')
            virtualUser:CaptureController()
            virtualUser:SetKeyDown('0x65') -- กดปุ่ม E
            wait(0.001)
            virtualUser:SetKeyUp('0x65') -- ปล่อยปุ่ม E
            wait(0.01) -- เว้นระยะห่างระหว่างการกด
        end
        print("Auto Interact [E] หยุดทำงาน")
    else
        print("Auto Interact [E] ถูกปิด")
    end
end)

Section:NewButton("Remove Cooldown", " ", function()
    -- เรียกใช้บริการ ProximityPromptService
    local ProximityPromptService = game:GetService("ProximityPromptService")
    
    -- ฟังก์ชันสำหรับลดเวลาการกดปุ่มของทุก ProximityPrompt
    local function removeCooldown()
        for _, prompt in pairs(workspace:GetDescendants()) do
            if prompt:IsA("ProximityPrompt") then
                prompt.HoldDuration = 0 -- ตั้ง HoldDuration เป็น 0
            end
        end

        -- เชื่อมต่อการเปลี่ยน HoldDuration สำหรับ ProximityPrompt ใหม่
        ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
            prompt.HoldDuration = 0 -- ลดเวลาการกดปุ่มให้เป็น 0
            fireproximityprompt(prompt) -- เรียกใช้งาน fireproximityprompt เพื่อจำลองการกด
        end)

        print("Cooldown removed for all prompts.")
    end

    -- เรียกใช้ฟังก์ชัน
    removeCooldown()
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Player")

-- Section สำหรับ Spectate
local Section = Tab:NewSection("Spectate Player")
Section:NewButton("Spectate", " ", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Spectate%20Player"))()
end)

-- Section สำหรับ Teleport
local Section = Tab:NewSection("Teleport Player !")

-- ฟังก์ชันสำหรับอัปเดตรายชื่อผู้เล่น
local function updatePlayerList()
    local Plr = {}
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        table.insert(Plr, v.Name)
    end
    return Plr
end

-- Dropdown สำหรับเลือกผู้เล่น
local drop = Section:NewDropdown("Select Player!", "Click To Select", updatePlayerList(), function(selectedPlayer)
    PlayerTP = selectedPlayer
end)

-- อัปเดตรายชื่อผู้เล่นแบบเรียลไทม์
game:GetService("Players").PlayerAdded:Connect(function()
    drop:Refresh(updatePlayerList(), true)
end)

game:GetService("Players").PlayerRemoving:Connect(function()
    drop:Refresh(updatePlayerList(), true)
end)

-- ปุ่มสำหรับ Teleport ไปยังผู้เล่นที่เลือก
Section:NewButton("Teleport", "", function()
    local player = game.Players.LocalPlayer
    if PlayerTP and game.Players:FindFirstChild(PlayerTP) then
        local targetPlayer = game.Players[PlayerTP]
        if player.Character and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
        else
            warn("ไม่สามารถวาร์ปได้ ตรวจสอบว่าผู้เล่นหรือคุณมีตัวละคร")
        end
    else
        warn("ไม่พบผู้เล่นที่เลือก")
    end
end)

-- Toggle สำหรับการวาร์ปอัตโนมัติ
Section:NewToggle("Auto Teleport", "", function(state)
    _G.TPPlayer = state
    while _G.TPPlayer do
        task.wait()
        local player = game.Players.LocalPlayer
        if PlayerTP and game.Players:FindFirstChild(PlayerTP) then
            local targetPlayer = game.Players[PlayerTP]
            if player.Character and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            else
                warn("ไม่สามารถวาร์ปอัตโนมัติได้ ตรวจสอบตัวละคร")
            end
        end
    end
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Main") 

local Section = Tab:NewSection("Auto Use Totem")

-- ตัวเลือก Totem
local availableTotems = {
    "Sundial Totem",
    "Aurora Totem",
    "Smokescreen Totem",
    "Eclipse Totem",
    "Tempest Totem",
    "Windset Totem" -- เพิ่ม Totem ได้ตามต้องการ
}

-- ตัวแปรเปิด/ปิดการทำงาน
local isTotemActive = false

-- Dropdown สำหรับเลือก Totem กลางวัน
Section:NewDropdown("Day Totem", "Select the Totem to use during the day.", availableTotems, function(selected)
    selectedDayTotem = selected
    print("Selected Day Totem:", selectedDayTotem)
end)

-- Dropdown สำหรับเลือก Totem กลางคืน
Section:NewDropdown("Night Totem", "Select the Totem to use during the night.", availableTotems, function(selected)
    selectedNightTotem = selected
    print("Selected Night Totem:", selectedNightTotem)
end)

-- Toggle สำหรับเปิด/ปิดฟังก์ชัน
Section:NewToggle("Auto Use Totem", "Toggle the automatic usage of totems.", function(state)
    isTotemActive = state
    print("Totem Auto Use:", isTotemActive and "Enabled" or "Disabled")
end)

-- ฟังก์ชันในการตรวจสอบค่า cycle

local worldCycle = ReplicatedStorage:FindFirstChild("world") and ReplicatedStorage.world:FindFirstChild("cycle")

local function checkCycleValue()
    if not isTotemActive then return end -- ถ้าไม่ได้เปิดใช้งานฟังก์ชัน ให้หยุดทำงาน

    if worldCycle.Value == "Day" then
        print("Day Cycle")
        local totemObject = Player.Backpack:FindFirstChild(selectedDayTotem)
        if totemObject then
            -- Equip and activate the selected Day Totem
            Player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(totemObject)
            task.wait(0.5)
            local totemInCharacter = Player.Character and Player.Character:FindFirstChild(selectedDayTotem)
            if totemInCharacter then
                totemInCharacter:Activate()
            end
        end
    elseif worldCycle.Value == "Night" then
        print("Night Cycle")
        local totemObject = Player.Backpack:FindFirstChild(selectedNightTotem)
        if totemObject then
            -- Equip and activate the selected Night Totem
            Player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(totemObject)
            task.wait(0.5)
            local totemInCharacter = Player.Character and Player.Character:FindFirstChild(selectedNightTotem)
            if totemInCharacter then
                totemInCharacter:Activate()
            end
        end
    else
        print("Unknown cycle value:", worldCycle.Value)
    end
end

-- ตรวจสอบ world.cycle
if worldCycle then
    checkCycleValue()
    worldCycle:GetPropertyChangedSignal("Value"):Connect(function()
        if isTotemActive then
            checkCycleValue()
        end
    end)
else
    print("world.cycle does not exist!")
end

-- ตรวจสอบ Character ของผู้เล่น
Player.CharacterAdded:Connect(function()
    if isTotemActive then
        checkCycleValue()
    end
end)

local Section = Tab:NewSection("Server Hop")

Section:NewButton("Click", " ", function() 
    local Time = 1 
    repeat wait() until game:IsLoaded()
    wait(Time)
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    function TPReturner()
       local Site;
       if foundAnything == "" then
           Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
       else
           Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
       end
       local ID = ""
       if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
           foundAnything = Site.nextPageCursor
       end
       local num = 0;
       for i,v in pairs(Site.data) do
           local Possible = true
           ID = tostring(v.id)
           if tonumber(v.maxPlayers) > tonumber(v.playing) then
               for _,Existing in pairs(AllIDs) do
                   if num ~= 0 then
                       if ID == tostring(Existing) then
                           Possible = false
                       end
                   else
                       if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                           end)
                       end
                   end
                   num = num + 1
               end
               if Possible == true then
                   table.insert(AllIDs, ID)
                   wait()
                   pcall(function()
                       writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                       wait()
                       game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                   end)
                   wait(2)
               end
           end
       end
    end
    
    function Teleport()
       while wait() do
           pcall(function()
               TPReturner()
               if foundAnything ~= "" then
                   TPReturner()
               end
           end)
       end
    end
    
    -- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
    Teleport()
end)


local Section = Tab:NewSection("Rejoin")

Section:NewButton("Click", "ออกเข้าใหม่", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/blox-fruit-fake-level-/main/Rejoin%20Game.lua"))() end)

local Section = Tab:NewSection("Infinite Yield")

Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

local Section = Tab:NewSection("Anit AFK")
  
Section:NewButton("Click", "เปิด Anit AFK", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Roblox-Script-AFK/main/Script%20AFK.lua"))() end)

local Section = Tab:NewSection("Remove Fog")
  
Section:NewButton("Click", "", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Remove%20Fog.lua"))() end)

------------------------------------------------------------------------------------------

-- เส้นทางโฟลเดอร์และไฟล์สำหรับบันทึก Webhook URL และ Delay
local webhookConfigFolder = playerFolder .. "/Config"
local webhookFilePath = webhookConfigFolder .. "/webhookConfig.txt"

-- สร้างโฟลเดอร์หากยังไม่มี
if not isfolder(hubFolder) then
    makefolder(hubFolder)
end
if not isfolder(playerFolder) then
    makefolder(playerFolder)
end
if not isfolder(configFolder) then
    makefolder(configFolder)
end
if not isfolder(webhookConfigFolder) then
    makefolder(webhookConfigFolder)
end

-- ฟังก์ชันสำหรับบันทึก Webhook URL และ Delay ลงในไฟล์
local function saveWebhookConfig(url, delay)
    local configData = {
        webhookUrl = url,
        webhookDelay = delay
    }
    local jsonData = game:GetService("HttpService"):JSONEncode(configData)
    
    -- บันทึกข้อมูลลงในไฟล์
    writefile(webhookFilePath, jsonData)
end

-- ฟังก์ชันสำหรับโหลด Webhook URL และ Delay จากไฟล์
local function loadWebhookConfig()
    if isfile(webhookFilePath) then
        local jsonData = readfile(webhookFilePath)
        local configData = game:GetService("HttpService"):JSONDecode(jsonData)
        
        return configData.webhookUrl, configData.webhookDelay
    else
        return "", 10  -- ถ้าไม่มีไฟล์จะใช้ค่าเริ่มต้น
    end
end

-- โหลดค่าจากไฟล์
local savedWebhookUrl, savedWebhookDelay = loadWebhookConfig()

-- ตั้งค่าตัวแปร Webhook
local WebhookUrl = savedWebhookUrl
local WebhookDelay = savedWebhookDelay

-- สร้าง Tab ใหม่
local Tab = Window:NewTab("Webhook Settings")

-- สร้าง Section ใหม่ใน Tab
local Section = Tab:NewSection("Webhook Controls")

-- เพิ่ม TextBox สำหรับใส่ Webhook URL
Section:NewTextBox("Webhook URL", "Enter your Discord Webhook URL", function(state)
    WebhookUrl = state
    print("Webhook URL set to:", WebhookUrl)

    -- บันทึก Webhook URL ลงในไฟล์
    saveWebhookConfig(WebhookUrl, WebhookDelay)
end)

-- เพิ่ม TextBox สำหรับใส่ Delay
Section:NewTextBox("Webhook Delay", "Enter delay in seconds", function(state)
    local delay = tonumber(state)
    if delay and delay > 0 then
        WebhookDelay = delay
        print("Webhook Delay set to:", WebhookDelay, "seconds")

        -- บันทึก Delay ลงในไฟล์
        saveWebhookConfig(WebhookUrl, WebhookDelay)
    else
        warn("Invalid delay value")
    end
end)

-- เพิ่ม Toggle สำหรับเปิด/ปิดการส่ง Webhook
Section:NewToggle("Enable Webhook", "Toggle to start/stop Webhook logging", function(state)
    WebhookLog = state
    if WebhookLog then
        print("Webhook logging started.")
        WebhookManager()
    else
        print("Webhook logging stopped.")
    end
end)

-- ฟังก์ชัน WebhookManager
function WebhookManager()
    spawn(function()
        while WebhookLog do
            local OSTime = os.time()
            local playerLocalTime = os.date('*t', OSTime)
            local formattedLocalTime = string.format('%02d:%02d:%02d',
                playerLocalTime.hour,
                playerLocalTime.min,
                playerLocalTime.sec)

            local player = game.Players.LocalPlayer
            local playerUserId = player.UserId
            local playerProfileUrl = "https://www.roblox.com/users/" .. playerUserId .. "/profile"

            local MoneyPlayer = game:GetService("Players").LocalPlayer.leaderstats["C$"].Value
            local LvlPlayer = game:GetService("Players").LocalPlayer.leaderstats.Level.Value

            local Embed = {
                title = '🎣 Noname Hub - Fishing Stats',
                color = 0xFF0000, -- สีแดง
                fields = {
                    { name = 'Player Profile', value = playerProfileUrl, inline = false },
                    { name = '💸 Total Coin $', value = '```' .. MoneyPlayer .. '```', inline = true },
                    { name = '🎣 Fishing Level', value = '```' .. LvlPlayer .. '```', inline = true },
                    { name = '🕒 Current Local Time', value = formattedLocalTime, inline = false },
                },
                footer = {
                    text = 'Thank you for using Noname Hub 🤍',
                    icon_url = 'https://cdn.discordapp.com/attachments/1188875843330658404/1321898635105013863/Banner_NONAME_HUB_V1.png'
                },
                timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ', OSTime),
            }

            -- ส่งข้อมูลไปยัง Webhook
            local success, response = pcall(function()
                return (syn and syn.request or http_request) {
                    Url = WebhookUrl, -- ใส่ URL ของ Webhook
                    Method = 'POST',
                    Headers = { ['Content-Type'] = 'application/json' },
                    Body = game:GetService('HttpService'):JSONEncode({
                        username = 'Noname Hub | Fisch 🎣',
                        avatar_url = 'https://cdn.discordapp.com/attachments/1188875843330658404/1321898635105013863/Banner_NONAME_HUB_V1.png',
                        embeds = { Embed }
                    }),
                }
            end)

            -- แสดงข้อความใน Console
            if not success then
                warn("Failed to send data to webhook:", response)
            else
                print("Webhook response:", response.StatusCode, response.Body)
            end
            task.wait(WebhookDelay)
        end
    end)
end

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Script Hub")

local Section = Tab:NewSection("Infinite Yield")
Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

local Section = Tab:NewSection("Emotes")
Section:NewButton("Click", "press to </ม to Open", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Emotes.lua"))() end)

local Section = Tab:NewSection("Orca")
Section:NewButton("Click", " ", function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/peatchXD/Main/main/Orca"))()end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("credit") 
local Section = Tab:NewSection("By: peatchxd")
Section:NewKeybind("press to change button", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)  

------------------------------------------------------------------------------------------

local VirtualUser = game:GetService("VirtualUser")

game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("Anti-AFK triggered")
end)

------------------------------------------------------------------------------------------

print("Script NONAME HUB Initialized Successfully")
