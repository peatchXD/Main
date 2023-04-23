-- Define the allowed PlaceGameID
local allowedPlaceGameID = 9853584748 -- Replace with your own PlaceGameID

-- Get the user's PlaceGameID
local placeGameID = game.PlaceId

-- Check if the user's PlaceGameID matches the allowed ID
if placeGameID == allowedPlaceGameID then
else
    -- If the user's PlaceGameID doesn't match the allowed ID, kick them
    game.Players.LocalPlayer:Kick("Banned | Reason: Cheating")
end

local allowExecution = true

print("Script Execution is Allowed.")

if not allowExecution then
    game.Players.LocalPlayer:Kick("Script Execution is Currently Locked. [Dm: peatchXD#6075]")
    return
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/GODMODs132/WebHook-Discord-Roblox/main/Script.lua"),true))()

------------------------------------------------------------------------------------------

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("MuangThai City [1.2] | NONAME HUB 4.0 (Beta)", "DarkTheme")

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Auto Farm")

local Section = Tab:NewSection("Auto Farm")

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Steak", " ",function(farmSteakt)
    _G.Steaks = (farmSteakt) 
    AutoEquipedKnife = (farmSteakt)
end)

spawn(function()
	while wait() do
		if _G.Steaks then
      local tpcows = game:GetService("Workspace").Cow --copypath มา
      local part = tpcows:FindFirstChild("cow") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.001)
		else
		end
	end
end)
spawn(function()
    while wait() do
    if AutoEquipedKnife then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Wood", " ",function(Woods)
    _G.Wood = (Woods) 
    AutoEquipedAxe = (Woods)
end)
  
spawn(function()
      while wait() do
          if _G.Wood then
        local tpcows = game:GetService("Workspace").Wood --copypath มา
        local part = tpcows:FindFirstChild("Wood") --ชื่อไอสัส
  
        if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
        end
        wait(0.001)
        else
        end
    end
end)
spawn(function()
    while wait() do
    if AutoEquipedAxe then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Axe)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Fish", " ",function(Fish)
    _G.Fish = (Fish) 
    AutoEquipedFishingrod = (Fish)
end)
  
spawn(function()
      while wait() do
          if _G.Fish then
        local tpcows = game:GetService("Workspace").Fish --copypath มา
        local part = tpcows:FindFirstChild("Fish") --ชื่อไอสัส
  
        if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
        end
        wait(0.001)
        else
        end
    end
end)
spawn(function()
    while wait() do
    if AutoEquipedFishingrod then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fishingrod)
    end)
    end
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

local Section = Tab:NewSection("Secerity Kick")

Section:NewToggle("Secerity (1)", "If Player More 1 Player = Kick", function(secerity)
    _G.SecerityKick = (secerity)
end)

spawn(function()
    pcall(function()
        while true do
            local playermore = #game.Players:GetPlayers() > 1
            if _G.SecerityKick then
                local args = {
                        [1] = "*"
                    }
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.MutePlayerRequest:InvokeServer(unpack(args))
                if playermore then
                    game.Players.LocalPlayer:Kick("There is more than 1 player on the server. automatic kick works")
                end
            end
            wait(1)
        end
    end)
end)

local Section = Tab:NewSection("Revive Auto")
Section:NewToggle("Revive Auto", "If LocalPlayer Die System revive", function(ReviveAuto)
    _G.ReviveAuto = (ReviveAuto)
end)

spawn(function()
    while true do
        pcall(function()
            local ReviveSys = "Respawn"
            local PlayerN = game:GetService("Players").LocalPlayer
            local EventRev = game:GetService("ReplicatedStorage").ReviveSystem.Event
            local NotifyScript1 = "Success"
            local NotifyTitle2 = "NONAME HUB"
            local NotifyScript3 = "Auto Revive"
            local Event2 = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent
            if _G.ReviveAuto then
                local character = PlayerN.Character
                if not character then
                    return
                end
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid.Health == 0 then
                    Event2:FireServer(NotifyScript1, NotifyTitle2, NotifyScript3)
                    EventRev:FireServer(ReviveSys, PlayerN)
                end
            end
        end)
        wait(1)
    end
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Teleport")

local Section = Tab:NewSection("Farm")

Section:NewButton("Tree", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318.51886, 39.9355125, -947.102295, 0.996385992, -8.43650216e-09, 0.0849410444, 6.03957284e-09, 1, 2.84757089e-08, -0.0849410444, -2.78597891e-08, 0.996385992)
end)

Section:NewButton("Banana", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.39197, 39.1152878, 829.456665, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Steak 1", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1786.57166, 39.1152878, 1209.62183, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Section:NewButton("Steak 2", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1802.63123, 39.1152878, 1314.78271, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Section:NewButton("Vegetable", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-404.22644, 39.1152878, 327.63858, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Fish", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(607.416443, 39.1152878, -456.061279, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Diamond", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(264.449951, 39.1152878, -1487.71606, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Poring", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1389.96875, 41.7929382, -777.645813, 0.999933541, -7.67082398e-09, -0.0115274489, 6.90298618e-09, 1, -6.66493207e-08, 0.0115274489, 6.65653204e-08, 0.999933541)
end)

Section:NewButton("Crystal", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1091.36121, 40.8069344, -777.011902, 0.998724937, -6.29743102e-09, -0.0504828505, 4.9253539e-09, 1, -2.73034768e-08, 0.0504828505, 2.70200164e-08, 0.998724937)
end)

Section:NewButton("Rebel Zone", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1603.75354, 41.8188553, -712.532227, 0.99997884, 8.69825811e-08, 0.00650205463, -8.71605437e-08, 1, 2.70866511e-08, -0.00650205463, -2.76528009e-08, 0.99997884)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Police Station")

Section:NewButton("Police Station", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.36969, 46.0186157, -340.901154, -0.03103479, -1.03037543e-07, 0.999518275, -2.72706053e-08, 1, 1.02240456e-07, -0.999518275, -2.40844589e-08, -0.03103479)
end)

Section:NewButton("Jail", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.911469, 81.3815308, -382.891968, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Hospital")

Section:NewButton("Hospital 1", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114.558403, 40.8006821, -23.9226418, -0.00935739279, 4.68217358e-08, 0.999956191, -3.05126555e-08, 1, -4.71093173e-08, -0.999956191, -3.09521404e-08, -0.00935739279)
end)

Section:NewButton("Hospital 2", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(74.7442703, 40.668972, 1777.00708, 0.997770727, 4.05047107e-09, 0.0667350888, -5.59293145e-09, 1, 2.29263524e-08, -0.0667350888, -2.32484894e-08, 0.997770727)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("ATM")

Section:NewButton("ATM", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-512.71698, 44.4325714, 577.378906, 0.0385520421, -1.83729565e-08, 0.999256611, 6.74520138e-08, 1, 1.57842788e-08, -0.999256611, 6.67933477e-08, 0.0385520421)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("SHOP")

Section:NewButton("Fishing Rod", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-546.703247, 40.262516, -1027.05383, 0.999968052, -3.43213209e-08, 0.00799484085, 3.39913413e-08, 1, 4.140961e-08, -0.00799484085, -4.11365306e-08, 0.999968052)
end)

Section:NewButton("Pickaxe Store", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-515.305298, 40.262516, -1026.15479, 0.999600291, 3.90739601e-08, 0.0282721762, -3.83475083e-08, 1, -2.62371458e-08, -0.0282721762, 2.5142489e-08, 0.999600291)
end)

Section:NewButton("Axe Shop", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-446.485809, 40.262516, -1025.66565, 0.999600947, -2.90768245e-08, 0.02824861, 3.04254826e-08, 1, -4.7312696e-08, -0.02824861, 4.81532929e-08, 0.999600947)
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Sell")

local Section = Tab:NewSection("SELL")

Section:NewButton("Sell All (1)", "", function()
local args = {
    [1] = "SteakPack",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "lron",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "BananaPack",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Coal",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Crystal",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Diamond",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "FishPack",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Gear",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "MeatPack",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "PoringPack",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Ruby",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "VegetablePack",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "WoodPack",
    [2] = "1"
}
game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
end)

Section:NewButton("Sell", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318.153931, 41.5269241, -576.075623, 0.999601483, -7.75936755e-08, -0.0282297973, 7.5198912e-08, 1, -8.58927152e-08, 0.0282297973, 8.37356353e-08, 0.999601483)
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Player")

local Section = Tab:NewSection("Respawn")
Section:NewButton("Respawn", " ", function() 
local args = {
    [1] = "Respawn",
    [2] = game:GetService("Players").LocalPlayer
 }
    
game:GetService("ReplicatedStorage").ReviveSystem.Event:FireServer(unpack(args))
end)

local Section = Tab:NewSection("Spectate Player")
Section:NewButton("Spectate", " ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Spectate%20Player"))() end)

local Section = Tab:NewSection("Teleport Player !")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end

local drop = Section:NewDropdown("Select Player!", "Click To Select", (Plr), function(t)
   PlayerTP = (t)
end)
Section:NewButton("Teleport", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewToggle("Auto Teleport", "", function(t)
_G.TPPlayer = (t)
while _G.TPPlayer do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end
end)

Section:NewButton("Refresh (Beta)","Refresh", function()
  drop:Refresh(Plr)
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Main") 

local Section = Tab:NewSection("Chat SPY")
Section:NewButton("Click", "chat /spy to toggle!", function() 

enabled = true --chat "/spy" to toggle!
spyOnMyself = true --if true will check your messages too
public = false --if true will chat the logs publicly (fun, risky)
publicItalics = true --if true will use /me to stand out
privateProperties = { --customize private logs
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}


local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==player and msg:lower():sub(1,4)=="/spy" then
			enabled = not enabled
			wait(0.3)
			privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabled and (spyOnMyself==true or p~=player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabled then
				if public then
					saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
				else
					privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)

local Section = Tab:NewSection("Server Hop")

Section:NewButton("Click", " ", function() 
    Time = 1 -- seconds
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
                   wait(4)
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

local Section = Tab:NewSection("X-Ray")
Section:NewButton("Click", "Press X To X-Ray", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/X-Ray.lua"))() end)
		
local Section = Tab:NewSection("Infinite Yield")

Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

local Section = Tab:NewSection("Anit AFK")
  
Section:NewButton("Click", "เปิด Anit AFK", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Roblox-Script-AFK/main/Script%20AFK.lua"))() end)

local Section = Tab:NewSection("Remove Fog")
  
Section:NewButton("Click", "", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Remove%20Fog.lua"))() end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Script Hub")

local Section = Tab:NewSection("Emotes")
Section:NewButton("Click", "press to </ม to Open", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Emotes.lua"))() end)

local Section = Tab:NewSection("Orca")
Section:NewButton("Click", " ", function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/peatchXD/Main/main/Orca"))()end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("credit") 
local Section = Tab:NewSection("By: peatchXD#6075")
Section:NewKeybind("press to change button", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)  

------------------------------------------------------------------------------------------
-- Auto Rejoin Kicked --

repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
 
local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
 
po.ChildAdded:connect(function(a)
    if a.Name == 'ErrorPrompt' then
        repeat
            ts:Teleport(game.PlaceId)
            wait(2)
        until false
    end
end)
