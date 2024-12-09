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

Section:NewToggle("Auto Farm", " ", function(Farm)
    _G.AutoFarm = (Farm)
end)

task.spawn(function()
    local Name = Player.Name

    -- ฟังก์ชันสำหรับการตั้งค่า Rod
    local function setupRod()
        local RodStats = game:GetService("ReplicatedStorage"):WaitForChild("playerstats"):FindFirstChild(Name)
        local CheckRod = RodStats and RodStats:FindFirstChild("Stats") and RodStats.Stats:FindFirstChild("rod") and RodStats.Stats.rod.Value

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
        local RodStats = game:GetService("ReplicatedStorage"):WaitForChild("playerstats"):FindFirstChild(Name)
        local CheckRod = RodStats and RodStats:FindFirstChild("Stats") and RodStats.Stats:FindFirstChild("rod") and RodStats.Stats.rod.Value

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

Section:NewTextBox("Bar Size", " ", 1, 0.1, function(Barsize) 
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

-- ตัวแปรสำหรับเก็บตำแหน่งและทิศทางที่บันทึกไว้
local savedPosition = nil
local savedOrientation = nil

-- ฟังก์ชันสำหรับบันทึกตำแหน่งปัจจุบันพร้อมทิศทาง
local function savePosition()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootPart = player.Character.HumanoidRootPart
        savedPosition = {X = rootPart.Position.X, Y = rootPart.Position.Y, Z = rootPart.Position.Z}
        savedOrientation = rootPart.CFrame - rootPart.Position -- เก็บข้อมูลการหมุนโดยไม่รวมตำแหน่ง
        print(string.format(
            "The position is saved.: X: %.2f, Y: %.2f, Z: %.2f",
            savedPosition.X, savedPosition.Y, savedPosition.Z
        ))
    else
        print("Error: Unable to save location.")
    end
end

-- ฟังก์ชันสำหรับเทเลพอร์ตไปยังตำแหน่งและทิศทางที่บันทึกไว้
local function teleportToSavedPosition()
    if savedPosition and savedOrientation then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            -- สร้าง CFrame ใหม่จากตำแหน่งและการหมุนที่บันทึกไว้
            rootPart.CFrame = CFrame.new(savedPosition.X, savedPosition.Y, savedPosition.Z) * savedOrientation
            print(string.format(
                "Teleport successful: X: %.2f, Y: %.2f, Z: %.2f",
                savedPosition.X, savedPosition.Y, savedPosition.Z
            ))
        else
            print("Error: Unable to teleport.")
        end
    else
        print("Error: No saved location.")
    end
end

local Section = Tab:NewSection("Save Position")

-- ปุ่มสำหรับบันทึกตำแหน่ง
Section:NewButton("Save Position", "Record current location and direction", function()
    savePosition()
end)

-- ปุ่มสำหรับเทเลพอร์ต
Section:NewButton("Teleport to Saved Position", "Teleport to a saved location and direction.", function()
    teleportToSavedPosition()
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
    local rootPart = character:FindFirstChild("HumanoidRootPart")

    if not rootPart then
        warn("HumanoidRootPart not found.")
        return
    end

    local repairMapFunction = workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild(NpcName):WaitForChild("treasure"):FindFirstChild("repairmap")
    if repairMapFunction then
        savePosition() -- บันทึกตำแหน่งปัจจุบัน
        rootPart.CFrame = CFrameNpc -- วาร์ปไปที่ NPC
        task.wait(0.5)
        pressE() -- กดปุ่ม E เพื่อโต้ตอบ
        task.wait(0.5)
        repairMapFunction:InvokeServer() -- เรียกใช้ฟังก์ชันซ่อมแผนที่
        task.wait(0.5)
        warpToSavedPosition() -- วาร์ปกลับตำแหน่งเดิม
        print("Repaired the map successfully!")
        -- เรียกใช้ฟังก์ชัน
        bringPartsToPlayer()
        -- เรียกใช้ฟังก์ชัน
        activateAllChestPrompts()
        pressE() -- กดปุ่ม E เพื่อโต้ตอบ
    else
        warn("Could not find 'repairmap' function.")
    end
end

-- ปุ่มสำหรับซ่อมแผนที่
Section:NewButton("Repair Treasure Map", "ซ่อมแผนที่", function()
    repairMap()
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

            -- Check and remove any existing parts named "Part Feet"
            for _, v in pairs(workspace:GetChildren()) do
                if v:IsA("Part") and v.Name == "Part Feet" then
                    v:Destroy()
                end
            end
        end)
    else
        warn("Megalodon Default not found in the workspace.")
    end
end)

local Section = Tab:NewSection("Teleport Zone")

local teleportSpots = {
    altar = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    arch = CFrame.new(998.966796875, 126.6849365234375, -1237.1434326171875),
    birch = CFrame.new(1742.3203125, 138.25787353515625, -2502.23779296875),
    brine = CFrame.new(-1794.10596, -145.849701, -3302.92358, -5.16176224e-05, 3.10316682e-06, 0.99999994, 0.119907647, 0.992785037, 3.10316682e-06, -0.992785037, 0.119907647, -5.16176224e-05),
    deep = CFrame.new(-1510.88672, -237.695053, -2852.90674, 0.573604643, 0.000580655003, 0.81913209, -0.000340352941, 0.999999762, -0.000470530824, -0.819132209, -8.89541116e-06, 0.573604763),
    deepshop = CFrame.new(-979.196411, -247.910156, -2699.87207, 0.587748766, 0, 0.809043527, 0, 1, 0, -0.809043527, 0, 0.587748766),
    enchant = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    executive = CFrame.new(-29.836761474609375, -250.48486328125, 199.11614990234375),
    keepers = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    mod_house = CFrame.new(-30.205902099609375, -249.40594482421875, 204.0529022216797),
    moosewood = CFrame.new(383.10113525390625, 131.2406005859375, 243.93385314941406),
    mushgrove = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    roslit = CFrame.new(-1476.511474609375, 130.16842651367188, 671.685302734375),
    snow = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    snowcap = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    spike = CFrame.new(-1254.800537109375, 133.88555908203125, 1554.2021484375),
    statue = CFrame.new(72.8836669921875, 138.6964874267578, -1028.4193115234375),
    sunstone = CFrame.new(-933.259705, 128.143951, -1119.52063, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685),
    swamp = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    terrapin = CFrame.new(-143.875244140625, 141.1676025390625, 1909.6070556640625),
    trident = CFrame.new(-1479.48987, -228.710632, -2391.39307, 0.0435845852, 0, 0.999049723, 0, 1, 0, -0.999049723, 0, 0.0435845852),
    vertigo = CFrame.new(-112.007278, -492.901093, 1040.32788, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    volcano = CFrame.new(-1888.52319, 163.847565, 329.238281, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    wilson = CFrame.new(2938.80591, 277.474762, 2567.13379, 0.4648332, 0, 0.885398269, 0, 1, 0, -0.885398269, 0, 0.4648332),
    wilsons_rod = CFrame.new(2879.2085, 135.07663, 2723.64233, 0.970463336, -0.168695927, -0.172460333, 0.141582936, -0.180552125, 0.973321974, -0.195333466, -0.968990743, -0.151334763)
}
local FishAreas = {
    Roslit_Bay = CFrame.new(-1663.73889, 149.234116, 495.498016, 0.0380855016, 4.08820178e-08, -0.999274492, 5.74658472e-08, 1, 4.3101906e-08, 0.999274492, -5.90657123e-08, 0.0380855016),
    Ocean = CFrame.new(7665.104, 125.444443, 2601.59351, 0.999966085, -0.000609769544, -0.00821684115, 0.000612694537, 0.999999762, 0.000353460142, 0.00821662322, -0.000358482561, 0.999966204),
    Snowcap_Pond = CFrame.new(2778.09009, 283.283783, 2580.323, 1, 7.17688531e-09, -2.22843701e-05, -7.17796267e-09, 1, -4.83369114e-08, 2.22843701e-05, 4.83370712e-08, 1),
    Moosewood_Docks = CFrame.new(343.2359924316406, 133.61595153808594, 267.0580139160156),
    Deep_Ocean = CFrame.new(3569.07153, 125.480949, 6697.12695, 0.999980748, -0.00188910461, -0.00591362361, 0.00193980196, 0.999961317, 0.00857902411, 0.00589718809, -0.00859032944, 0.9999457),
    Vertigo = CFrame.new(-137.697098, -736.86377, 1233.15271, 1, -1.61821543e-08, -2.01375751e-05, 1.6184277e-08, 1, 1.05423091e-07, 2.01375751e-05, -1.0542341e-07, 1),
    Snowcap_Ocean = CFrame.new(3088.66699, 131.534332, 2587.11304, 1, 4.30694858e-09, -1.19097813e-14, -4.30694858e-09, 1, -2.80603398e-08, 1.17889275e-14, 2.80603398e-08, 1),
    Harvesters_Spike = CFrame.new(-1234.61523, 125.228767, 1748.57166, 0.999991536, -0.000663080777, -0.00405627443, 0.000725277001, 0.999881923, 0.0153511297, 0.00404561637, -0.0153539423, 0.999873936),
    SunStone = CFrame.new(-845.903992, 133.172211, -1163.57776, 1, -7.93465915e-09, -2.09446498e-05, 7.93544608e-09, 1, 3.75741536e-08, 2.09446498e-05, -3.75743205e-08, 1),
    Roslit_Bay_Ocean = CFrame.new(-1708.09302, 155.000015, 384.928009, 1, -9.84460868e-09, -3.24939563e-15, 9.84460868e-09, 1, 4.66220271e-08, 2.79042003e-15, -4.66220271e-08, 1),
    Moosewood_Pond = CFrame.new(509.735992, 152.000031, 302.173004, 1, -1.78487678e-08, -8.1329488e-14, 1.78487678e-08, 1, 8.45405168e-08, 7.98205428e-14, -8.45405168e-08, 1),
    Terrapin_Ocean = CFrame.new(58.6469994, 135.499985, 2147.41699, 1, 2.09643041e-08, -5.6023784e-15, -2.09643041e-08, 1, -9.92988376e-08, 3.52064755e-15, 9.92988376e-08, 1),
    Isonade = CFrame.new(-1060.99902, 121.164787, 953.996033, 0.999958456, 0.000633197487, -0.00909138657, -0.000568434712, 0.999974489, 0.00712434994, 0.00909566507, -0.00711888634, 0.999933302),
    Moosewood_Ocean = CFrame.new(-167.642715, 125.19548, 248.009521, 0.999997199, -0.000432743778, -0.0023210498, 0.000467110571, 0.99988997, 0.0148265222, 0.00231437827, -0.0148275653, 0.999887407),
    Roslit_Pond = CFrame.new(-1811.96997, 148.047089, 592.642517, 1, 1.12983072e-08, -2.16573972e-05, -1.12998171e-08, 1, -6.97014357e-08, 2.16573972e-05, 6.97016844e-08, 1),
    Moosewood_Ocean_Mythical = CFrame.new(252.802994, 135.849625, 36.8839989, 1, -1.98115071e-08, -4.50667564e-15, 1.98115071e-08, 1, 1.22230617e-07, 2.08510289e-15, -1.22230617e-07, 1),
    Terrapin_Olm = CFrame.new(22.0639992, 182.000015, 1944.36804, 1, 1.14953362e-08, -2.7011112e-15, -1.14953362e-08, 1, -7.09263972e-08, 1.88578841e-15, 7.09263972e-08, 1),
    The_Arch = CFrame.new(1283.30896, 130.923569, -1165.29602, 1, -5.89772364e-09, -3.3183043e-15, 5.89772364e-09, 1, 3.63913486e-08, 3.10367822e-15, -3.63913486e-08, 1),
    Scallop_Ocean = CFrame.new(23.2255898, 125.236847, 738.952271, 0.999990165, -0.00109633175, -0.00429760758, 0.00115595153, 0.999902785, 0.0138949333, 0.00428195624, -0.013899764, 0.999894202),
    SunStone_Hidden = CFrame.new(-1139.55701, 134.62204, -1076.94324, 1, 3.9719481e-09, -1.6278158e-05, -3.97231048e-09, 1, -2.22651142e-08, 1.6278158e-05, 2.22651781e-08, 1),
    Mushgrove_Stone = CFrame.new(2525.36011, 131.000015, -776.184021, 1, 1.90145943e-08, -3.24206519e-15, -1.90145943e-08, 1, -1.06596836e-07, 1.21516956e-15, 1.06596836e-07, 1),
    Keepers_Altar = CFrame.new(1307.13599, -805.292236, -161.363998, 1, 2.40881981e-10, -3.25609947e-15, -2.40881981e-10, 1, -1.35044154e-09, 3.255774e-15, 1.35044154e-09, 1),
    Lava = CFrame.new(-1959.86206, 193.144821, 271.960999, 1, -6.02453598e-09, -2.97388313e-15, 6.02453598e-09, 1, 3.37767716e-08, 2.77039384e-15, -3.37767716e-08, 1),
    Roslit_Pond_Seaweed = CFrame.new(-1785.2869873046875, 148.15780639648438, 639.9299926757812),    
}
local NPCs = {
    Witch = CFrame.new(409.638092, 134.451523, 311.403687, -0.74079144, 0, 0.671735108, 0, 1, 0, -0.671735108, 0, -0.74079144),
    Quiet_Synph = CFrame.new(566.263245, 152.000031, 353.872101, -0.753558397, 0, -0.657381535, 0, 1, 0, 0.657381535, 0, -0.753558397),
    Pierre = CFrame.new(391.38855, 135.348389, 196.712387, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Phineas = CFrame.new(469.912292, 150.69342, 277.954987, 0.886104584, -0, -0.46348536, 0, 1, -0, 0.46348536, 0, 0.886104584),
    Paul = CFrame.new(381.741882, 136.500031, 341.891022, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Shipwright = CFrame.new(357.972595, 133.615967, 258.154541, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    Angler = CFrame.new(480.102478, 150.501053, 302.226898, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    Marc = CFrame.new(466.160034, 151.00206, 224.497086, -0.996853352, 0, -0.0792675018, 0, 1, 0, 0.0792675018, 0, -0.996853352),
    Lucas = CFrame.new(449.33963, 181.999893, 180.689072, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Latern_Keeper = CFrame.new(-39.0456772, -246.599976, 195.644363, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Latern_Keeper2 = CFrame.new(-17.4230175, -304.970276, -14.529892, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Inn_Keeper = CFrame.new(487.458466, 150.800034, 231.498932, -0.564704418, 0, -0.825293183, 0, 1, 0, 0.825293183, 0, -0.564704418),
    Roslit_Keeper = CFrame.new(-1512.37891, 134.500031, 631.24353, 0.738236904, 0, -0.674541533, 0, 1, 0, 0.674541533, 0, 0.738236904),
    FishingNpc_1 = CFrame.new(-1429.04138, 134.371552, 686.034424, 0, 0.0168599077, -0.999857903, 0, 0.999857903, 0.0168599077, 1, 0, 0),
    FishingNpc_2 = CFrame.new(-1778.55408, 149.791779, 648.097107, 0.183140755, 0.0223737024, -0.982832015, 0, 0.999741018, 0.0227586292, 0.983086705, -0.00416803267, 0.183093324),
    FishingNpc_3 = CFrame.new(-1778.26807, 147.83165, 653.258606, -0.129575253, 0.501478612, 0.855411887, -2.44146213e-05, 0.862683058, -0.505744994, -0.991569638, -0.0655529201, -0.111770131),
    Henry = CFrame.new(483.539307, 152.383057, 236.296143, -0.789363742, 0, 0.613925934, 0, 1, 0, -0.613925934, 0, -0.789363742),
    Daisy = CFrame.new(581.550049, 165.490753, 213.499969, -0.964885235, 0, -0.262671858, 0, 1, 0, 0.262671858, 0, -0.964885235),
    Appraiser = CFrame.new(453.182373, 150.500031, 206.908783, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Merchant = CFrame.new(416.690521, 130.302628, 342.765289, -0.249025017, -0.0326484665, 0.967946589, -0.0040341015, 0.999457955, 0.0326734781, -0.968488574, 0.00423171744, -0.249021754),
    Mod_Keeper = CFrame.new(-39.0905838, -245.141144, 195.837891, -0.948549569, -0.0898146331, -0.303623199, -0.197293222, 0.91766715, 0.34490931, 0.247647122, 0.387066364, -0.888172567),
    Ashe = CFrame.new(-1709.94055, 149.862411, 729.399536, -0.92290163, 0.0273250472, -0.384064913, 0, 0.997478604, 0.0709675401, 0.385035753, 0.0654960647, -0.920574605),
    Alfredrickus = CFrame.new(-1520.60632, 142.923264, 764.522034, 0.301733732, 0.390740901, -0.869642735, 0.0273988936, 0.908225596, 0.417582989, 0.952998459, -0.149826124, 0.26333645),
}
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

local Section = Tab:NewSection("Fishing Locations")

for name, cframe in pairs(FishAreas) do
    Section:NewButton(name, "Teleport to " .. name, function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = cframe
        end
    end)
end

local Section = Tab:NewSection("NPC")

for name, cframe in pairs(NPCs) do
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

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Virtual User")

local Section = Tab:NewSection("Developer Console")

Section:NewButton("Open Console", " ", function()
    pressKey(Enum.KeyCode.F9)
end)

local Section = Tab:NewSection("No Cooldown")

Section:NewButton("Auto Interact [E] (Beta)", false,function()
    while wait() do
		while wait() do
            local virtualUser = game:GetService('VirtualUser')
            virtualUser:CaptureController()
            virtualUser:SetKeyDown('0x65')
            wait(0.01)
            virtualUser:SetKeyUp('0x65')
        end
    end
end)

Section:NewButton("Remove Cooldown", " ", function()
    game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
        fireproximityprompt(prompt)
    end)
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Player")

local Section = Tab:NewSection("Spectate Player")
Section:NewButton("Spectate", " ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Spectate%20Player"))() end)

local Section = Tab:NewSection("Teleport Player !")

-- Create a function to update the player dropdown list
local function updatePlayerList()
    local Plr = {}
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Plr, v.Name)
    end
    return Plr
end

-- Initial dropdown setup
local drop = Section:NewDropdown("Select Player!", "Click To Select", updatePlayerList(), function(t)
    PlayerTP = t
end)

-- Update the player list dynamically when a player joins or leaves
game:GetService("Players").PlayerAdded:Connect(function()
    drop:Update(updatePlayerList())
end)

game:GetService("Players").PlayerRemoving:Connect(function()
    drop:Update(updatePlayerList())
end)

Section:NewButton("Teleport", "", function()
    if PlayerTP and game.Players[PlayerTP] then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
    end
end)

Section:NewToggle("Auto Teleport", "", function(t)
    _G.TPPlayer = t
    while _G.TPPlayer do wait()
        if PlayerTP and game.Players[PlayerTP] then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
        end
    end
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Main") 

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
