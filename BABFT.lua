local Reason = "Banned | Reason: Cheating" --Insert Reason Here
local Player = "" --Full player name here
function Kick(Plr,B)
    game.Players:FindFirstChild(Plr):Kick(B)
    print("กูแบนไอส้สไม่ต้องใช้สคริปกูรห้สนี้กูขอแบนไม่ให้ใช้สคริปละกัน")
    print("Ban Script I want to ban it.")
end
pcall(Kick,Player,Reason)

local allowExecution = true

print("Script Execution is Allowed.")

if not allowExecution then
    game.Players.LocalPlayer:Kick("Script Execution is Currently Locked. [Dm: peatchXD#6075]")
    return
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Script-WH/main/Scripts.lua"),true))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("Build A Boat For Treasure | NONAME HUB 4.0", "DarkTheme")

local Tab = Window:NewTab("💳 Auto Farm")

local Section = Tab:NewSection("🚀 Teleport Farm")
Section:NewToggle("Auto Teleport Farm", " ", function(Farm)
    local Players = game:GetService("Players")
    local connections = getconnections or get_signal_cons
    if connections then
        for i,v in pairs(connections(Players.LocalPlayer.Idled)) do
            if v["Disable"] then
                v["Disable"](v)
            elseif v["Disconnect"] then
                v["Disconnect"](v)
            end
        end
    else
        Players.LocalPlayer.Idled:Connect(function()
            local VirtualUser = game:GetService("VirtualUser")
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end

-- // Custom Settings
getgenv().TreasureAutoFarm = {
    Enabled = (Farm), -- // Toggle the auto farm on and off
    Teleport = 2, -- // How fast between each teleport between the stages and stuff
    TimeBetweenRuns = 5 -- // How long to wait until it goes to the next run
}

-- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

-- // Vars
local LocalPlayer = Players.LocalPlayer

-- // Goes through all of the stages
local autoFarm = function(currentRun)
    -- // Variables
    local Character = LocalPlayer.Character
    local NormalStages = Workspace.BoatStages.NormalStages

    -- // Go to each stage thing
    for i = 1, 10 do
        local Stage = NormalStages["CaveStage" .. i]
        local DarknessPart = Stage:FindFirstChild("DarknessPart")

        if (DarknessPart) then
            -- // Teleport to next stage
            print("Teleporting to next stage: Stage " .. i)
            Character.HumanoidRootPart.CFrame = DarknessPart.CFrame

            -- // Create a temp part under you
            local Part = Instance.new("Part", LocalPlayer.Character)
            Part.Anchored = true
            Part.Position = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 6, 0)

            -- // Wait and remove temp part
            wait(getgenv().TreasureAutoFarm.Teleport)
            Part:Destroy()
        end
    end

    -- // Go to end
    print("Teleporting to the end")
    repeat wait()
        Character.HumanoidRootPart.CFrame = NormalStages.TheEnd.GoldenChest.Trigger.CFrame
    until Lighting.ClockTime ~= 14

    -- // Wait until you have respawned
    local Respawned = false
    local Connection
    Connection = LocalPlayer.CharacterAdded:Connect(function()
        Respawned = true
        Connection:Disconnect()
    end)

    repeat wait() until Respawned
    wait(getgenv().TreasureAutoFarm.TimeBetweenRuns)
    print("Auto Farm: Run " .. currentRun .. " finished")
end

-- // Whilst the autofarm is enable, constantly do it
local autoFarmRun = 1
while wait() do
    if (getgenv().TreasureAutoFarm.Enabled) then
        print("Initialising Auto Farm: Run " .. autoFarmRun)
        autoFarm(autoFarmRun)
        autoFarmRun = autoFarmRun + 1
    end
end

end)

local Tab = Window:NewTab("🔨 Auto Builder") 
local Section = Tab:NewSection("🧱 Script Auto Builder")

Section:NewButton("Click", "🧱 Script Auto Builder", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Builder.lua"))() end)

local Section = Tab:NewSection("🎨 Script Auto Builder Image")

Section:NewButton("Click", "🎨Script Auto Builder Image", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Builder%20Image.lua"))() end)

local Tab = Window:NewTab("👑 Fake") 
local Section = Tab:NewSection("∞ Fake Gold")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Fake%20Gold"))()
end)

local Section = Tab:NewSection("🧱 Fake Blocks")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Fake%20All.lua"))()
end)

local Tab = Window:NewTab("☢ Crash Server")
local Section = Tab:NewSection("Server")

Section:NewButton("Start 1", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Crash%20Server.lua"))()
end)

Section:NewToggle("Start 2", " ", function(SSSSSS)
    _G.CrashS = (SSSSSS)
end)

local white = game:GetService("Teams").white
local red = game:GetService("Teams").red
local black = game:GetService("Teams").black
local blue = game:GetService("Teams").blue
local green = game:GetService("Teams").green
local magenta = game:GetService("Teams").magenta
local yellow = game:GetService("Teams").yellow

spawn(function()
	while wait() do
		if _G.CrashS then
            workspace.ChangeTeam:FireServer(white)
            workspace.ChangeTeam:FireServer(red)
            workspace.ChangeTeam:FireServer(black)
            workspace.ChangeTeam:FireServer(blue)
            workspace.ChangeTeam:FireServer(green)
            workspace.ChangeTeam:FireServer(magenta)
            workspace.ChangeTeam:FireServer(yellow)
            workspace.ChangeTeam:FireServer(white)
            workspace.ChangeTeam:FireServer(red)
            workspace.ChangeTeam:FireServer(black)
            workspace.ChangeTeam:FireServer(blue)
            workspace.ChangeTeam:FireServer(green)
            workspace.ChangeTeam:FireServer(magenta)
            workspace.ChangeTeam:FireServer(yellow)
            workspace.ChangeTeam:FireServer(white)
            workspace.ChangeTeam:FireServer(red)
            workspace.ChangeTeam:FireServer(black)
            workspace.ChangeTeam:FireServer(blue)
            workspace.ChangeTeam:FireServer(green)
            workspace.ChangeTeam:FireServer(magenta)
            workspace.ChangeTeam:FireServer(yellow)
            workspace.ChangeTeam:FireServer(white)
            workspace.ChangeTeam:FireServer(red)
            workspace.ChangeTeam:FireServer(black)
            workspace.ChangeTeam:FireServer(blue)
            workspace.ChangeTeam:FireServer(green)
            workspace.ChangeTeam:FireServer(magenta)
            workspace.ChangeTeam:FireServer(yellow)
            workspace.ChangeTeam:FireServer(white)
            workspace.ChangeTeam:FireServer(red)
            workspace.ChangeTeam:FireServer(black)
            workspace.ChangeTeam:FireServer(blue)
            workspace.ChangeTeam:FireServer(green)
            workspace.ChangeTeam:FireServer(magenta)
            workspace.ChangeTeam:FireServer(yellow)
            workspace.ChangeTeam:FireServer(white)
            workspace.ChangeTeam:FireServer(red)
            workspace.ChangeTeam:FireServer(black)
            workspace.ChangeTeam:FireServer(blue)
            workspace.ChangeTeam:FireServer(green)
            workspace.ChangeTeam:FireServer(magenta)
            workspace.ChangeTeam:FireServer(yellow)
        wait(0.0001)
		else
		end
	end
end)

local Tab = Window:NewTab("🎄 Quests") 
local Section = Tab:NewSection("🗑 Clear Quest")
Section:NewButton("Click", " ", function()
local args = {
    [1] = 0
}

workspace.QuestMakerEvent:FireServer(unpack(args))
end)

local Section = Tab:NewSection("🍞 Bread Quest")
Section:NewButton("Click", "Loads in the fabbie boss (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(100) end)

local Section = Tab:NewSection("🎁 Gift Quest")
Section:NewButton("Click", "Loads in the gingerbread Fight (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(99) end)

local Section = Tab:NewSection("👩‍👧‍👧 Christmas Quest")
Section:NewButton("Click", "Loads in the xmas Fight (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(101) end)

local Section = Tab:NewSection("🎄 Auto Loop Quest") 

local Section = Tab:NewSection("🍞 Loop Quest Bread Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function() 
while true do
		workspace.QuestMakerEvent:FireServer(100)
	wait(150) 
end
	end)

local Section = Tab:NewSection("🎁 Loop Quest Gift Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function() 
while true do
	workspace.QuestMakerEvent:FireServer(99)
	wait(150) 
end
	end)
		
local Section = Tab:NewSection("👩‍👩‍ Loop Quest Christmas Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function()
while true do
	workspace.QuestMakerEvent:FireServer(101)
	wait(150) 
end
	end)

local Section = Tab:NewSection("💥 Event BOSS")
Section:NewButton("🎃 HALLOWEEN BOSS", " TP ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/AUTO%20FARM%20HALLOWEEN%20BOSS.lua"))() end)

Section:NewButton("🥚 EGG BOSS", " TP ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/TP%20EGG%20%20BOSS.lua"))() end)


local Tab = Window:NewTab("🌌 Teleport")

local Section = Tab:NewSection("📃 Teleport Player !")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end

local drop = Section:NewDropdown("📃 Select Player!", "Click To Select", Plr, function(t)
   PlayerTP = t
end)
Section:NewButton("🎯 Teleport", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewToggle("🎯 Auto Teleport", "", function(t)
_G.TPPlayer = t
while _G.TPPlayer do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end
end)

Section:NewButton("💾 Refresh","Refresh", function()
  drop:Refresh(Plr)
end)


local Section = Tab:NewSection("⬜ White")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.0028458, -9.65999889, -567.075378, -0.999934494, 1.69590315e-08, -0.0114457831, 1.56394382e-08, 1, 1.15380317e-07, 0.0114457831, 1.15193757e-07, -0.999934494) end)

local Section = Tab:NewSection("⬛ Black")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.587769, -9.65999889, -69.4330597, 0.044106476, -2.16794671e-09, -0.999026835, -4.38382752e-09, 1, -2.36360198e-09, 0.999026835, 4.48381154e-09, 0.044106476) end)

local Section = Tab:NewSection("🟥 Red")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.415039, -9.65999889, -64.935936, -0.0039063096, -1.38479038e-07, 0.999992371, 2.78122503e-08, 1, 1.38588746e-07, -0.999992371, 2.83534085e-08, -0.0039063096) end)

local Section = Tab:NewSection("🟦 Blue")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.401245, -9.65999889, 300.047424, 0.0413250774, -1.24215788e-07, 0.999145746, 3.61023424e-08, 1, 1.2282878e-07, -0.999145746, 3.09955936e-08, 0.0413250774) end)
                
local Section = Tab:NewSection("🟩 Green")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -550.645752, -9.65999889, 293.29657, 0.0522636063, 3.91167561e-08, -0.998633325, -3.50806033e-08, 1, 3.73343418e-08, 0.998633325, 3.30814345e-08, 0.0522636063) end)

local Section = Tab:NewSection("🟨 Yellow")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.60083, -9.65999889, 640.269409, 0.0527031086, 5.94260179e-08, -0.998610198, 9.28528578e-08, 1, 6.44091642e-08, 0.998610198, -9.61183773e-08, 0.0527031086) end)

local Section = Tab:NewSection("🟪 Magenta")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.725342, -9.89999676, 647.826416, -0.00752122747, -6.9397494e-08, 0.999971688, -4.07260288e-08, 1, 6.90931401e-08, -0.999971688, -4.02052116e-08, -0.00752122747) end)

local Tab = Window:NewTab("👨‍💻 Player")

local Section = Tab:NewSection("👁 Spectate Player")
Section:NewButton("👁 Spectate", " ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Spectate%20Player"))() end)

local Section = Tab:NewSection("🎛 All Deffault")

Section:NewButton("Deffault", "WalksSpeed & JumpPower Deffault", function() 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)

local Section = Tab:NewSection("⚡ WalksSpeed")

Section:NewSlider("Speed", "WalksSpeed", 300, 16, function(WalksSpeeds)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (WalksSpeeds)
end)

local Section = Tab:NewSection("🦵 JumpPower")

Section:NewSlider("JumpPower", "JumpPower", 500, 50, function(JumpPowers)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (JumpPowers)
end)

local Tab = Window:NewTab("🎮 Main") 

local Section = Tab:NewSection("GAME")

Section:NewButton("Exit/Quit", "ShutDown Game", function()
    game:shutdown() 
end)

Section:NewButton("Remove Water", " ", function()
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "Water" then
			v:Destroy()
		end
	end
end)

Section:NewButton("Remove Tree", " ", function()
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "Trees" then
			v:Destroy()
		end
	end
	
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "SpringFlowers" then
			v:Destroy()
		end
	end
end)

local Section = Tab:NewSection("Settings FPS")

Section:NewButton("Show Fps", " ", function()
repeat wait() until game:IsLoaded() wait(2)
local ScreenGui = Instance.new("ScreenGui")
local Fps = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Fps.Name = "Fps"
Fps.Parent = ScreenGui
Fps.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.SourceSans
Fps.TextColor3 = Color3.fromRGB(0, 255, 0)
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true

local script = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame) -- This will fire every time a frame is rendered
script.Parent.Text = ("FPS: "..math.round(1/frame)) 
end)

end)
Section:NewSlider("UnLock FPS", "FPS Unlock", 300, 15, function(FPSS)
    setfpscap(FPSS)
end)

Section:NewButton("FPS BOOSTER", " ", function()
    _G.Settings = {
        Players = {
            ["Ignore Me"] = true, -- Ignore your Character
            ["Ignore Others"] = true -- Ignore other Characters
        },
        Meshes = {
            Destroy = true, -- Destroy Meshes
            LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
        },
        Images = {
            Invisible = true, -- Invisible Images
            LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
            Destroy = true, -- Destroy Images
        },
        Other = {
            ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
            ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
            ["No Explosions"] = true, -- Makes Explosion's invisible
            ["No Clothes"] = true, -- Removes Clothing from the game
            ["Low Water Graphics"] = true, -- Removes Water Quality
            ["No Shadows"] = true, -- Remove Shadows
            ["Low Rendering"] = true, -- Lower Rendering
            ["Low Quality Parts"] = true -- Lower quality parts
        }
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Main/main/FPSB.lua"))()
end)

local Section = Tab:NewSection("Anti Sit")

Section:NewButton("Click", " ", function()
    local RunService = game:GetService("RunService")
    function antiSit()
    if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then 
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
    end
    RunService:BindToRenderStep("tempBinding", 1000, antiSit)
end)

local Section = Tab:NewSection("↻ Rejoin")

Section:NewButton("Click", "ออกเข้าใหม่", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/blox-fruit-fake-level-/main/Rejoin%20Game.lua"))() end)

local Section = Tab:NewSection("👁‍ X-Ray")
Section:NewButton("Click", "Press X To X-Ray", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/X-Ray.lua"))() end)
		
local Section = Tab:NewSection("❄ Infinite Yield")

Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

local Section = Tab:NewSection("🕧 Anit AFK")
  
Section:NewButton("Click", "เปิด Anit AFK", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Roblox-Script-AFK/main/Script%20AFK.lua"))() end)

local Section = Tab:NewSection("☁ Remove Fog")
  
Section:NewButton("Click", "", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Remove%20Fog.lua"))() end)

local Tab = Window:NewTab("🗂 Script Hub")

local Section = Tab:NewSection("📕 Astra Hub")
Section:NewButton("Click", "", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Astra%20Hub.lua"))() end)

local Section = Tab:NewSection("📕 Emotes")
Section:NewButton("Click", "press to </ม to Open", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Emotes.lua"))() end)

local Section = Tab:NewSection("📕 Max2007killer")
Section:NewButton("Click", "Key Donatepls152621", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Max2007killer.lua"))() end)

local Tab = Window:NewTab("🎫 credit") local Section = Tab:NewSection("By: peatchXD#6075")

Section:NewKeybind("⚙ press to change button", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)  
