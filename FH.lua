print("Loading Script NONAME HUB...")

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

local Section = Tab:NewSection("Auto Farm")

-- บริการที่ใช้
local Player = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local cast = { [1] = 100, [2] = 1 }
local reelfinished = { [1] = 100, [2] = true }

-- ตัวแปรสำหรับเก็บตำแหน่งที่บันทึกไว้
local savedPosition = nil

-- ฟังก์ชันสำหรับบันทึกตำแหน่ง
function savePositionA()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        savedPosition = player.Character.HumanoidRootPart.CFrame
        print("Location is saved:", savedPosition)
    else
        warn("Unable to save location.")
    end
end

-- ฟังก์ชันสำหรับเทเลพอร์ตไปยังตำแหน่งที่บันทึกไว้
local function teleportToSavedPosition()
    local player = game.Players.LocalPlayer
    if savedPosition and player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        -- เช็คว่า savedPosition มีค่า ก่อนที่จะเทเลพอร์ต
        player.Character.HumanoidRootPart.CFrame = savedPosition
    else
        warn("Unable to warp. Check if location is saved.")
    end
end

-- ปุ่มสำหรับบันทึกตำแหน่ง
Section:NewButton("Save Position Farm", "Record current location and direction", function()
    savePositionA()
end)

Section:NewToggle("Auto Farm", " ", function(Farm)
    _G.AutoFarm = (Farm)
end)

task.spawn(function()
    local Name = Player.Name

    -- ฟังก์ชันสำหรับการตั้งค่า Rod
    local function setupRod()
        local CheckRod = game:GetService("ReplicatedStorage").playerstats:FindFirstChild(Player.Name).Stats.rod.Value

        if not CheckRod then
            return nil, nil -- ส่งคืนค่าที่ว่างเปล่าหากไม่มีข้อมูล
        end

        local CastFisch = Player.Character:FindFirstChild(CheckRod)
        if not CastFisch or not CastFisch:FindFirstChild("events") or not CastFisch.events:FindFirstChild("cast") then
            return nil, nil -- ส่งคืนค่าที่ว่างเปล่าหากไม่มี Rod
        end

        return CastFisch.events.cast, game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished")
    end

    local CastFisch, ReelFisch
    while true do
        -- ตั้งค่า Rod ครั้งแรก
        if not CastFisch or not ReelFisch then
            CastFisch, ReelFisch = setupRod()
        end

        if _G.AutoFarm then
            -- ตรวจสอบตัวละครใหม่
            if not Player.Character or not CastFisch or not ReelFisch then
                CastFisch, ReelFisch = setupRod() -- รีเซ็ตค่าหากไม่มี
            end

            teleportToSavedPosition()  -- เทเลพอร์ตไปยังตำแหน่งที่บันทึกไว้

            local RODA = game:GetService("ReplicatedStorage").playerstats:FindFirstChild(Player.Name).Stats.rod.Value
        	local rodObject = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(RODA)
			game:GetService("Players").LocalPlayer.PlayerGui.hud.safezone.backpack.events.equip:FireServer(rodObject)

			task.wait(0.3)

            -- เรียกใช้อีเวนต์เมื่อ Rod ถูกตั้งค่า
            if CastFisch and ReelFisch then
                CastFisch:FireServer(unpack(cast))
                wait(1)
                ReelFisch:FireServer(unpack(reelfinished))
            end
        else
            task.wait(0.5)
        end
    end
end)

Section:NewToggle("Auto Cast", " ", function(cast)
    _G.AutoCast = (cast)
end)

task.spawn(function()
    local Name = Player.Name

    -- ฟังก์ชันสำหรับการตั้งค่า Rod
    local function setupRod()
        local CheckRod = game:GetService("ReplicatedStorage").playerstats:FindFirstChild(Player.Name).Stats.rod.Value
        if not CheckRod then
            return nil, nil -- ส่งคืนค่าที่ว่างเปล่าหากไม่มีข้อมูล
        end

        local CastFisch = Player.Character:FindFirstChild(CheckRod)
        if not CastFisch or not CastFisch:FindFirstChild("events") or not CastFisch.events:FindFirstChild("cast") then
            return nil, nil -- ส่งคืนค่าที่ว่างเปล่าหากไม่มี Rod
        end

        return CastFisch.events.cast
    end

    local CastFisch
    while true do
        -- ตั้งค่า Rod ครั้งแรก
        if not CastFisch then
            CastFisch = setupRod()
        end

        if _G.AutoCast then
            -- ตรวจสอบตัวละครใหม่
            if not Player.Character or not CastFisch then
                CastFisch = setupRod() -- รีเซ็ตค่าหากไม่มี
            end

            local RODA = game:GetService("ReplicatedStorage").playerstats:FindFirstChild(Player.Name).Stats.rod.Value
        	local rodObject = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(RODA)
			game:GetService("Players").LocalPlayer.PlayerGui.hud.safezone.backpack.events.equip:FireServer(rodObject)

			task.wait(0.3)

            -- เรียกใช้อีเวนต์เมื่อ Rod ถูกตั้งค่า
            if CastFisch then
                CastFisch:FireServer(unpack(cast))
                wait(1)
            end
        else
            task.wait(0.5)
        end
    end
end)

Section:NewToggle("Auto Shake (Waiting for fix)", " ", function(Shake)
    _G.AutoShake = (Shake)
end)

local VirtualInputManager = game:GetService("VirtualInputManager")

-- ฟังก์ชันสำหรับกดปุ่ม
local function pressKey(key)
    VirtualInputManager:SendKeyEvent(true, key, false, game)
    VirtualInputManager:SendKeyEvent(false, key, false, game)
end

-- ฟังก์ชันตรวจสอบและทำงาน
task.spawn(function()
    local shakeUI, safezone
    local wasSafezoneActive = false

    while true do
        if _G.AutoShake then
            task.wait(0.5) -- Increase the wait time to reduce CPU usage

            -- ตรวจสอบ SafeZone UI
            shakeUI = player.PlayerGui:FindFirstChild("shakeui")
            safezone = shakeUI and shakeUI:FindFirstChild("safezone")

            if safezone and not wasSafezoneActive then
                task.wait(0.05)

                -- กดปุ่มเมื่อ SafeZone ปรากฏ
                pressKey(Enum.KeyCode.BackSlash)
                task.wait(0.01)

                -- วนลูปจนกว่า SafeZone จะหายไป
                while safezone and safezone.Parent do
                    pressKey(Enum.KeyCode.S)
                    task.wait(0.0001) -- Adjust delay for better performance
                    pressKey(Enum.KeyCode.Return)

                    -- อัปเดตสถานะ SafeZone ใหม่
                    safezone = shakeUI:FindFirstChild("safezone")
                end

                wasSafezoneActive = true
            elseif not safezone and wasSafezoneActive then
                -- กดปุ่มเมื่อ SafeZone หายไป
                pressKey(Enum.KeyCode.BackSlash)
                wasSafezoneActive = false
            end
        else
            task.wait(0.5)
        end
    end
end)

Section:NewToggle("Auto Reel", " ", function(Reel)
    _G.AutoReel = (Reel)
end)

task.spawn(function()
    local ReelFisch = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished")

    while true do
        if _G.AutoReel then
            task.wait(0.5)
            ReelFisch:FireServer(unpack(reelfinished))
        else
            task.wait(0.5)
        end
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

-- ส่วนของ UI ที่ใช้ปุ่ม
local Section = Tab:NewSection("Save Position")

-- ปุ่มสำหรับบันทึกตำแหน่ง
Section:NewButton("Save Position", "Record current location and direction", function()
    savePositionA()
end)

-- ปุ่มสำหรับเทเลพอร์ต
Section:NewButton("Teleport to Saved Position", "Teleport to a saved location and direction.", function()
    teleportToSavedPosition()
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

local NpcName = "Jack Marrow" -- ชื่อ NPC
local CFrameNpc = CFrame.new(-2826.515, 214.708, 1516.846) -- ตำแหน่งที่ NPC โหลดเข้ามา

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

    local repairMapFunction = workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild(NpcName):WaitForChild("treasure"):FindFirstChild("repairmap")
    if repairMapFunction then
        repairMapFunction:InvokeServer() -- เรียกใช้ฟังก์ชันซ่อมแผนที่
        print("Repaired the map successfully!")
    else
        warn("Could not find 'repairmap' function.")
    end
end

-- ปุ่มสำหรับซ่อมแผนที่
Section:NewButton("Repair Treasure Map", "ซ่อมแผนที่", function()
    savePosition() -- บันทึกตำแหน่งปัจจุบัน
    character:FindFirstChild("HumanoidRootPart").CFrame = CFrameNpc -- วาร์ปไปที่ NPC
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

local Section = Tab:NewSection("Dupe Rod (Waiting for fix)")

-- Dropdown to select rod dupe type
Section:NewDropdown("Select Rod Dupe", "Click To Select", { "Rod Of The Eternal King", "Wisdom Rod" }, function(dupeA)
    RodDupe = dupeA
end)
-- Path to the folder
local rodAD = game:GetService("ReplicatedStorage").playerstats:FindFirstChild(Player.Name).Rods

-- Table to store file names
local RODGA = {}

-- Loop through and collect file names
for _, rod in ipairs(rodAD:GetChildren()) do
    if rod:IsA("Instance") then -- Check if it's an Instance (Folder, Model, or Object)
        table.insert(RODGA, rod.Name) -- Add the name to the table
    end
end

-- Dropdown for selecting items
Section:NewDropdown("Select Items", "Click To Select", RODGA, function(selectedA)
    selectedItemA = selectedA -- Save the selected item
    print("Selected Item:", selectedItemA)
end)

-- Toggle for auto duplication
Section:NewToggle("Auto Dupe (Rick)", "Require: -", function(Dupe: any)
    _G.DupeROD = Dupe
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("equiprod")

Section:NewButton("Dupe (Rick)", " ", function()
	for _ = 1, 20 do -- Fire events 10 times in a loop
		task.wait(0.001)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
		ReplicatedStorage:FireServer(RodDupe)
		ReplicatedStorage:FireServer(RODEQ)
	end
end)

Section:NewToggle("Auto Reel Falling", " ", function(ReelF)
    _G.AutoReelFall = (ReelF)
end)

local reelfinishedF = { [1] = -100, [2] = true }

task.spawn(function()
    local ReelFisch = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished")

    while true do
        if _G.AutoReelFall then
            task.wait(1)
            ReelFisch:FireServer(unpack(reelfinishedF))
        else
            task.wait(0.5)
        end
    end
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
    local Bestiary = workspace.world.map
    
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
local Section = Tab:NewSection("Megalodon")

Section:NewButton("Teleport To Megalodon", " ", function()
    local character = player.Character or player.CharacterAdded:Wait()

    -- ตรวจสอบ HumanoidRootPart ของตัวละคร
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    if not humanoidRootPart then
        warn("HumanoidRootPart not found in character.")
        return
    end

    local MegalodonA = game.Workspace:FindFirstChild("Megalodon Default", true)

    if not MegalodonA then
        warn("Megalodon Default not found in the workspace.")
        return
    end
    
    if MegalodonA then
        pcall(function()
            -- Teleport the player
            humanoidRootPart.CFrame = MegalodonA.CFrame * CFrame.new(0, 10, 0)

            task.wait(0.1)

            -- สร้าง Part ใต้เท้าผู้เล่น
            local part = Instance.new("Part")
            part.Size = Vector3.new(10, 0.4, 10)
            part.Position = humanoidRootPart.Position - Vector3.new(0, 3, 0)
            part.Anchored = true
            part.CanCollide = true
            part.Material = Enum.Material.SmoothPlastic
            part.Color = Color3.new(1, 1, 1)
            part.Transparency = 0.7
            part.Name = "Part Feet"
            part.Parent = workspace
        end)
    else
        warn("Megalodon Default not found in the workspace.")
    end
end)

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
    NPCS.Merlin.Cole.luck:InvokeServer()
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
    local ProximityPromptService = game:GetService("ProximityPromptService")
    
    ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
        prompt.HoldDuration = 0 -- ลดเวลาการกดปุ่มให้เป็น 0
        fireproximityprompt(prompt)
    end)
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
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Player = game:GetService("Players").LocalPlayer

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
    print("Monitoring world.cycle...")
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
    Time = 1 
    repeat wait() until game:IsLoaded()
    wait(Time)
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
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

local HttpService = game:GetService("HttpService")

-- Webhook URL ของ Discord
local Webhook = "https://discord.com/api/webhooks/1312045686753333279/g5WA7frezxwu32KMTpgUE4w5yL_6bkMRcMKW6lekxs_EhqKH5DTH0qneQd8PMuGBYD7U" -- เปลี่ยน URL ให้เป็นของคุณ

-- ตัวแปรติดตามสถานะของ Megalodon
local MegalodonDetected = {} -- ใช้ตารางเก็บชื่อของ "Megalodon" ที่ตรวจพบ

-- ฟังก์ชันสำหรับส่งข้อความไปยัง Discord Webhook
local function sendToWebhook(messageType, fileName, position)
    local embedColor = messageType == "Detected" and 0x00FF00 or 0xFF0000
    local description = messageType == "Detected" and "Megalodon has been detected!" or "Megalodon has disappeared."

    if position then
        local formattedX = string.format("%.3f", position.X)
        local formattedY = string.format("%.3f", position.Y)
        local formattedZ = string.format("%.3f", position.Z)
        description = description .. "\nPosition: **X: " .. formattedX .. ", Y: " .. formattedY .. ", Z: " .. formattedZ .. "**"
    else
        description = description .. "\nPosition: Not available."
    end

    local data = {
        ["content"] = "**@everyone Megalodon Status Update!**",
        ["embeds"] = {
            {
                ["title"] = messageType .. ": " .. fileName,
                ["description"] = description,
                ["color"] = embedColor,
                ["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%SZ', os.time()),
                ["fields"] = position and {
                    {
                        ["name"] = "Teleport CFrame",
                        ["value"] = "```game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. position.X .. ", " .. position.Y .. ", " .. position.Z .. ")```",
                        ["inline"] = true
                    }
                } or nil
            }
        }
    }

    local success, errorMsg = pcall(function()
        local requestFunction = http_request or request or HttpPost or syn.request
        requestFunction({
            Url = Webhook,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(data)
        })
    end)

    if not success then
        warn("Failed to send webhook: " .. tostring(errorMsg))
    end
    wait(2) -- หน่วงเวลาเพื่อป้องกัน rate limit
end

local function checkMegalodon()
    local fishingZone = workspace:FindFirstChild("zones") and workspace.zones:FindFirstChild("fishing")
    if not fishingZone then
        warn("Fishing zone not found!")
        return
    end

    -- ตรวจสอบ Megalodon ใหม่
    for _, child in pairs(fishingZone:GetChildren()) do
        if child.Name == "Megalodon Default" and child:IsA("Part") then
            local position = child.Position -- ใช้ Position ของ Part โดยตรง
            if not MegalodonDetected[child] then
                sendToWebhook("Detected", child.Name, position)
                print("Megalodon found at position:", position)
                MegalodonDetected[child] = true -- บันทึกว่าเจอแล้ว
            end
        end
    end

    -- ตรวจสอบว่ามี Megalodon ที่ถูกลบออกไปหรือไม่
    for detectedPart, _ in pairs(MegalodonDetected) do
        if not detectedPart:IsDescendantOf(fishingZone) then
            sendToWebhook("Removed", detectedPart.Name, nil)
            print(detectedPart.Name .. " removed.")
            MegalodonDetected[detectedPart] = nil
        end
    end
end

print("Script NONAME HUB Initialized Successfully")

while true do
    checkMegalodon()
    wait(10)
end
