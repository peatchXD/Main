local allowExecution = true

if not allowExecution then
    game.Players.LocalPlayer:Kick("Script Execution is Currently Locked. [Dm: peatchXD]")
    return
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Script-WH/refs/heads/main/Scriptf.lua"),true))()

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

------------------------------------------------------------------------------------------

-- โหลด Library GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib( GameName .. " | NONAME HUB", "DarkTheme")

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

			local RODA = game:GetService("ReplicatedStorage").playerstats.peatchXD.Stats.rod.Value -- ใช้การเข้าถึง Rod ที่ถูกต้อง
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

			local RODA = game:GetService("ReplicatedStorage").playerstats.peatchXD.Stats.rod.Value -- ใช้การเข้าถึง Rod ที่ถูกต้อง
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

Section:NewToggle("Auto Shake", " ", function(Shake)
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
                task.wait(0.5)

                -- กดปุ่มเมื่อ SafeZone ปรากฏ
                pressKey(Enum.KeyCode.BackSlash)
                task.wait(0.01)

                -- วนลูปจนกว่า SafeZone จะหายไป
                while safezone and safezone.Parent do
                    pressKey(Enum.KeyCode.S)
                    task.wait(0.01) -- Adjust delay for better performance
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

Section:NewSlider("Bar Size", " ", 1, 0.1, function(Barsize) 
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
------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Miscellaneous")

local Section = Tab:NewSection("Auto Dupe Rod")

local Eternal = { "Rod Of The RodDupe King" }
local Wisdom = { "Wisdom Rod" }
local Depths = { "Rod Of The Depths" }

-- Dropdown to select rod dupe type
Section:NewDropdown("Select Rod Dupe", "Click To Select", { "Rod Of The RodDupe King", "Wisdom Rod" }, function(dupeA)
    RodDupe = dupeA
end)

-- Toggle for auto duplication
Section:NewToggle("Auto Dupe", "Require: ( Rod Of The Depths )", function(Dupe)
    _G.DupeROD = Dupe
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("equiprod")

spawn(function()
    while true do
        if _G.DupeROD then
            for _ = 1, 20 do -- Fire events 10 times in a loop
                task.wait(0.0001)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                ReplicatedStorage:FireServer(RodDupe)
                ReplicatedStorage:FireServer(Depths)
                task.wait(0.001)
            end
        else
            task.wait(0.5) -- Delay when inactive
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
    task.wait(0.5)
    pressKey(Enum.KeyCode.E)

    -- Mark the item as collected
    collectedItems[targetItem] = true

    -- Wait for a second before warping back
    task.wait(1)
    if originalPosition then
        humanoidRootPart.CFrame = originalPosition
    end

    isWarping = false
end

-- Function to monitor MeteorItems
local function monitorMeteorItems()
    while true do
        -- Remove MeteorItems that are no longer in the workspace
        for item, _ in pairs(collectedItems) do
            if not item.Parent then
                collectedItems[item] = nil
                print("MeteorItem removed, ready to collect again.")
            end
        end

        -- Find the first MeteorItem
        local targetItem = getFirstMeteorItem()

        if targetItem then
            -- If MeteorItem is found and not collected yet
            if not collectedItems[targetItem] then
                warpAndInteract(targetItem)
            end
        end

        task.wait(1) -- Check every second for MeteorItems
    end
end

-- Toggle the Auto Meteor feature
Section:NewToggle("Auto Meteor", "Automatically collect MeteorItems", function(Meteor)
    if Meteor then
        -- Start monitoring MeteorItems when enabled
        spawn(monitorMeteorItems)
    else
        -- Stop monitoring when disabled (clear items)
        collectedItems = {}
    end
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Virtual User")

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

print("Script NONAME HUB Initialized Successfully")
