-- Define the allowed PlaceGameID
local allowedPlaceGameID = 7305309231 -- Replace with your own PlaceGameID

-- Get the user's PlaceGameID
local placeGameID = game.PlaceId

-- Check if the user's PlaceGameID matches the allowed ID
if placeGameID == allowedPlaceGameID then
else
    -- If the user's PlaceGameID doesn't match the allowed ID, kick them
    game.Players.LocalPlayer:Kick("Banned | Reason: Cheating")
end

------------------------------------------------------------------------------------------

getgenv().RatingTarget  = 2;
getgenv().HighestRatingTarget  = 10.3;

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Taxi Boss | NONAME HUB 4.0", "DarkTheme")

----------------------------------------------------------------------------------

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Auto Farm")
Section:NewButton("Start", "Rejoin To Stop Auto Farm", function() 

local HundredHardDash     = Instance.new('Part');
HundredHardDash.Parent    = workspace;
HundredHardDash.Name      = '+AlrightBud';
HundredHardDash.CFrame    = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1000,0)
HundredHardDash.Size     = Vector3.new(500000, 4, 500000)
HundredHardDash.Anchored = true
HundredHardDash.Transparency = 1

local YourCar = function()
    local Car = nil;
    for i,v in pairs(workspace.Vehicles:GetChildren()) do
        if (v:FindFirstChild'Server' and v.Server:FindFirstChild'Player' and v.Server.Player.Value == game.Players.LocalPlayer) then
            Car = v;
        end
    end;
    return Car
end;

local Customer = function(car)
    local Target = nil;
    for i,v in pairs(workspace.NewCustomers:GetChildren()) do
        if car and v:FindFirstChild'Part' and v.Part:GetAttribute('Rating') >= RatingTarget and v.Part:GetAttribute('Rating') <= HighestRatingTarget then
            Target = v;
        end
    end
    return Target
end;

while true do
    local PlayerCar = YourCar();
    if PlayerCar and PlayerCar:FindFirstChild'REAL' and PlayerCar.REAL:FindFirstChild'DRIFT' then
        
        local TargetCustomer = Customer(PlayerCar);
        if TargetCustomer and TargetCustomer:FindFirstChild'Part' and not workspace.ParkingMarkers:FindFirstChild'destinationPart' then
            PlayerCar:PivotTo(TargetCustomer.Part.CFrame)
            
            if (PlayerCar.REAL.DRIFT.Position - TargetCustomer.Part.Position).Magnitude <= 10 then
                
                game.VirtualInputManager:SendKeyEvent(1, Enum.KeyCode.R, 0, game)
                if workspace.ParkingMarkers:FindFirstChild'destinationPart' then
                    game.VirtualInputManager:SendKeyEvent(0, Enum.KeyCode.R, 0, game)
                end
            end
        end;
        
        if workspace.ParkingMarkers:FindFirstChild'destinationPart' then
            local Destination = workspace.ParkingMarkers.destinationPart;
            
            HundredHardDash.CFrame = Destination.CFrame * CFrame.new(0,1000,0)
            
            if (PlayerCar.REAL.DRIFT.Position - Destination.Position).Magnitude >= 20 then
                PlayerCar:PivotTo(HundredHardDash.CFrame * CFrame.new(0,6,0))
                game.VirtualInputManager:SendKeyEvent(1, Enum.KeyCode.W, 0, game)
            end
            
            task.wait(5)
            task.spawn(function()
                if PlayerCar and PlayerCar:FindFirstChild'REAL' and PlayerCar.REAL:FindFirstChild'DRIFT' then
                    PlayerCar:PivotTo(Destination.CFrame * CFrame.new(0,0,9))
                    game.VirtualInputManager:SendKeyEvent(0, Enum.KeyCode.W, 0, game)
                    repeat wait() until (PlayerCar.REAL.DRIFT.Position - Destination.Position).Magnitude <= 9
                    task.wait(.5)
                    game.ReplicatedStorage.CustomerMissions.CustomerMissionEnd:InvokeServer()
                end
            end)
        end
    end
    task.wait()
end

end)

----------------------------------------------------------------------------------

local Section = Tab:NewSection("Game")

Section:NewButton("Rejoin", "Rejoin To Stop Auto Farm", function() 
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
 
local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)
 
    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)
 
coroutine.resume(Rejoin)
end)

Section:NewButton("Anti AFK", "Anti AFK", function() 
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
end)

----------------------------------------------------------------------------------

local Section = Tab:NewSection("Player")

Section:NewSlider("Walk Speed", "Walk Speed", 300, 16, function(W)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = W
end)

Section:NewSlider("Jump Power", "Jump Power", 300, 50, function(J)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = J
end)

----------------------------------------------------------------------------------

local Tab = Window:NewTab("Keybind") 

local Section = Tab:NewSection("By: peatchXD#6075")
Section:NewKeybind("⚙ Press To Change Button", "KeybindInfo", Enum.KeyCode.Tab, function() Library:ToggleUI() end)  

----------------------------------------------------------------------------------

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
