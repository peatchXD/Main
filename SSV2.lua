-- Define the allowed PlaceGameID
local allowedPlaceGameID = 13212005672-- Replace with your own PlaceGameID

-- Get the user's PlaceGameID
local placeGameID = game.PlaceId

-- Check if the user's PlaceGameID matches the allowed ID
if placeGameID == allowedPlaceGameID then
else
    -- If the user's PlaceGameID doesn't match the allowed ID, kick them
    game.Players.LocalPlayer:Kick("Banned | Reason: Cheating")
end

------------------------------------------------------------------------------------------

game:GetService("Players").LocalPlayer.PlayerGui.AutoDeleteCar.Client.Message.AnnounceSound.Volume = 0
game:GetService("Players").LocalPlayer.PlayerGui.AutoDeleteCar.Enabled = false

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Anti - fly" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Anti - speed" then
        v:Destroy()
    end
end

------------------------------------------------------------------------------------------

local function player()
    local playerNames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(playerNames, player.Name)
        end
    end
    return playerNames
end

------------------------------------------------------------------------------------------

loadstring(game:HttpGet(("https://raw.githubusercontent.com/GODMODs132/WebHook-Discord-Roblox/main/Script.lua"),true))()

------------------------------------------------------------------------------------------

local args = {
    [1] = "Error",
    [2] = "NONAME HUB",
    [3] = "Welcome To Script NONAME HUB 4.0 (Beta)"
}

game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent:FireServer(unpack(args))

------------------------------------------------------------------------------------------

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("SCRATCH MULTIVERSE | NONAME HUB", "DarkTheme")

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Admin")

local Section = Tab:NewSection("Admin Menu")

game:GetService("Players").LocalPlayer.PlayerGui["Admin gui"].ResetOnSpawn = false

Section:NewToggle("Open Admin UI", "เมนูเสกของแอดมิน", function(AdminGui)
local Admin_Menu = game:GetService("Players").LocalPlayer
    if Admin_Menu then
        Admin_Menu.PlayerGui["Admin gui"].open.Visible = (AdminGui)
    end
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Bring kill")

player = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(player,v.Name) 
end

local drop = Section:NewDropdown("Select Player!", "Click To Select", (player), function(t)
    PlayerTPs = (t)
 end)

Section:NewToggle("Auto kill", " ",function(kill)
    _G.kill = (kill) 
end)

spawn(function()
	while wait() do
		if _G.kill then
            local player = game:GetService("Players"):FindFirstChild(PlayerTPs)
            if player then
                player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
            wait(0.01)
		else
		end
	end
end)

local Section = Tab:NewSection("Kill & Give Money")

Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end

local drop = Section:NewDropdown("Select Player! (1)", "Click To Select", (Plr), function(t)
PlayerXD = (t)
end)

Section:NewButton("Kill All", " ",function()
    local KillallTitle = "Respawn"
    local KillAllGetEvent = game:GetService("ReplicatedStorage").ReviveSystem.Event
    local NotifyTitle1 = "Success"
    local NotifyTitle2 = "NONAME HUB"
    local NotifyScript3 = "Kill All Players"
    local Event2 = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent
    local KillallGetPlayer = game:GetService("Players"):GetPlayers()
    for i, player in ipairs(KillallGetPlayer) do
        KillAllGetEvent:FireServer(KillallTitle, player)
        Event2:FireServer(NotifyTitle1, NotifyTitle2, NotifyScript3)
    end
end)

Section:NewButton("Start 1", " ",function()
    local hee1 = "Respawn"
    local hee2 = game:GetService("Players"):FindFirstChild(PlayerXD)
    local Events = game:GetService("ReplicatedStorage").ReviveSystem.Event
    local NotifySctipt1 = "Success"
    local NotifyTitle2 = "ReviveSystem"
    local NotifySctipt3 = "Revive"
    local Event = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent
    Event:FireServer(NotifySctipt1, NotifyTitle2, NotifySctipt3)
    Events:FireServer(hee1, hee2)
end)

Section:NewToggle("Start 2", " ",function(MONEY)
    _G.MONEY = (MONEY) 
end)

spawn(function()
	while wait() do
		if _G.MONEY then
            local hee1 = "Respawn"
local hee2 = game:GetService("Players"):FindFirstChild(PlayerXD)
local Events = game:GetService("ReplicatedStorage").ReviveSystem.Event
Event:FireServer(hee1, hee2)
local NotifySctipt1 = "Success"
local NotifyTitle2 = "ReviveSystem"
local NotifySctipt3 = "Revive"
local Event = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent
Event:FireServer(NotifySctipt1, NotifyTitle2, NotifySctipt3)
wait(0.0001)
else
end
end
end)

local Section = Tab:NewSection("kill V2")


player = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(player,v.Name) 
end

local drop = Section:NewDropdown("Select Player! (2)", "Pls Select Player To Add Money 20K", (player), function(t)
PlayerK20 = (t)
end)

Section:NewButton("Add Money (x20)", " ",function()
    local hee1 = "Respawn"
    local hee2 = game:GetService("Players"):FindFirstChild(PlayerK20)
    local Events = game:GetService("ReplicatedStorage").ReviveSystem.Event
    local NotifySctipt1 = "Success"
    local NotifyTitle2 = "ReviveSystem"
    local NotifySctipt3 = "Revive"
    local Event = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent
    Event:FireServer(NotifySctipt1, NotifyTitle2, NotifySctipt3)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
    Events:FireServer(hee1, hee2)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Simple SPY")
Section:NewButton("Click", " ",function()
    if _G.SimpleSpyExecuted and type(_G.SimpleSpyShutdown) == "function" then
        print(pcall(_G.SimpleSpyShutdown))
    end
    
    local Players = game:GetService("Players")
    local CoreGui = game:GetService("CoreGui")
    local Highlight =
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Highlight.lua")
        )()
    
    local SimpleSpy2 = Instance.new("ScreenGui")
    local Background = Instance.new("Frame")
    local LeftPanel = Instance.new("Frame")
    local LogList = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local RemoteTemplate = Instance.new("Frame")
    local ColorBar = Instance.new("Frame")
    local Text = Instance.new("TextLabel")
    local Button = Instance.new("TextButton")
    local RightPanel = Instance.new("Frame")
    local CodeBox = Instance.new("Frame")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local FunctionTemplate = Instance.new("Frame")
    local ColorBar_2 = Instance.new("Frame")
    local Text_2 = Instance.new("TextLabel")
    local Button_2 = Instance.new("TextButton")
    local TopBar = Instance.new("Frame")
    local Simple = Instance.new("TextButton")
    local CloseButton = Instance.new("TextButton")
    local ImageLabel = Instance.new("ImageLabel")
    local MaximizeButton = Instance.new("TextButton")
    local ImageLabel_2 = Instance.new("ImageLabel")
    local MinimizeButton = Instance.new("TextButton")
    local ImageLabel_3 = Instance.new("ImageLabel")
    local ToolTip = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    
    --Properties:
    
    SimpleSpy2.Name = "SimpleSpy2"
    SimpleSpy2.ResetOnSpawn = false
    
    Background.Name = "Background"
    Background.Parent = SimpleSpy2
    Background.BackgroundColor3 = Color3.new(1, 1, 1)
    Background.BackgroundTransparency = 1
    Background.Position = UDim2.new(0, 500, 0, 200)
    Background.Size = UDim2.new(0, 450, 0, 268)
    
    LeftPanel.Name = "LeftPanel"
    LeftPanel.Parent = Background
    LeftPanel.BackgroundColor3 = Color3.fromRGB(53, 52, 55)
    LeftPanel.BorderSizePixel = 0
    LeftPanel.Position = UDim2.new(0, 0, 0, 19)
    LeftPanel.Size = UDim2.new(0, 131, 0, 249)
    
    LogList.Name = "LogList"
    LogList.Parent = LeftPanel
    LogList.Active = true
    LogList.BackgroundColor3 = Color3.new(1, 1, 1)
    LogList.BackgroundTransparency = 1
    LogList.BorderSizePixel = 0
    LogList.Position = UDim2.new(0, 0, 0, 9)
    LogList.Size = UDim2.new(0, 131, 0, 232)
    LogList.CanvasSize = UDim2.new(0, 0, 0, 0)
    LogList.ScrollBarThickness = 4
    
    UIListLayout.Parent = LogList
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    RemoteTemplate.Name = "RemoteTemplate"
    RemoteTemplate.Parent = LogList
    RemoteTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
    RemoteTemplate.BackgroundTransparency = 1
    RemoteTemplate.Size = UDim2.new(0, 117, 0, 27)
    
    ColorBar.Name = "ColorBar"
    ColorBar.Parent = RemoteTemplate
    ColorBar.BackgroundColor3 = Color3.fromRGB(255, 242, 0)
    ColorBar.BorderSizePixel = 0
    ColorBar.Position = UDim2.new(0, 0, 0, 1)
    ColorBar.Size = UDim2.new(0, 7, 0, 18)
    ColorBar.ZIndex = 2
    
    Text.Name = "Text"
    Text.Parent = RemoteTemplate
    Text.BackgroundColor3 = Color3.new(1, 1, 1)
    Text.BackgroundTransparency = 1
    Text.Position = UDim2.new(0, 12, 0, 1)
    Text.Size = UDim2.new(0, 105, 0, 18)
    Text.ZIndex = 2
    Text.Font = Enum.Font.SourceSans
    Text.Text = "TEXT"
    Text.TextColor3 = Color3.new(1, 1, 1)
    Text.TextSize = 14
    Text.TextXAlignment = Enum.TextXAlignment.Left
    Text.TextWrapped = true
    
    Button.Name = "Button"
    Button.Parent = RemoteTemplate
    Button.BackgroundColor3 = Color3.new(0, 0, 0)
    Button.BackgroundTransparency = 0.75
    Button.BorderColor3 = Color3.new(1, 1, 1)
    Button.Position = UDim2.new(0, 0, 0, 1)
    Button.Size = UDim2.new(0, 117, 0, 18)
    Button.AutoButtonColor = false
    Button.Font = Enum.Font.SourceSans
    Button.Text = ""
    Button.TextColor3 = Color3.new(0, 0, 0)
    Button.TextSize = 14
    
    RightPanel.Name = "RightPanel"
    RightPanel.Parent = Background
    RightPanel.BackgroundColor3 = Color3.fromRGB(37, 36, 38)
    RightPanel.BorderSizePixel = 0
    RightPanel.Position = UDim2.new(0, 131, 0, 19)
    RightPanel.Size = UDim2.new(0, 319, 0, 249)
    
    CodeBox.Name = "CodeBox"
    CodeBox.Parent = RightPanel
    CodeBox.BackgroundColor3 = Color3.new(0.0823529, 0.0745098, 0.0784314)
    CodeBox.BorderSizePixel = 0
    CodeBox.Size = UDim2.new(0, 319, 0, 119)
    
    ScrollingFrame.Parent = RightPanel
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.Position = UDim2.new(0, 0, 0.5, 0)
    ScrollingFrame.Size = UDim2.new(1, 0, 0.5, -9)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame.ScrollBarThickness = 4
    
    UIGridLayout.Parent = ScrollingFrame
    UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
    UIGridLayout.CellSize = UDim2.new(0, 94, 0, 27)
    
    FunctionTemplate.Name = "FunctionTemplate"
    FunctionTemplate.Parent = ScrollingFrame
    FunctionTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
    FunctionTemplate.BackgroundTransparency = 1
    FunctionTemplate.Size = UDim2.new(0, 117, 0, 23)
    
    ColorBar_2.Name = "ColorBar"
    ColorBar_2.Parent = FunctionTemplate
    ColorBar_2.BackgroundColor3 = Color3.new(1, 1, 1)
    ColorBar_2.BorderSizePixel = 0
    ColorBar_2.Position = UDim2.new(0, 7, 0, 10)
    ColorBar_2.Size = UDim2.new(0, 7, 0, 18)
    ColorBar_2.ZIndex = 3
    
    Text_2.Name = "Text"
    Text_2.Parent = FunctionTemplate
    Text_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Text_2.BackgroundTransparency = 1
    Text_2.Position = UDim2.new(0, 19, 0, 10)
    Text_2.Size = UDim2.new(0, 69, 0, 18)
    Text_2.ZIndex = 2
    Text_2.Font = Enum.Font.SourceSans
    Text_2.Text = "TEXT"
    Text_2.TextColor3 = Color3.new(1, 1, 1)
    Text_2.TextSize = 14
    Text_2.TextStrokeColor3 = Color3.new(0.145098, 0.141176, 0.14902)
    Text_2.TextXAlignment = Enum.TextXAlignment.Left
    Text_2.TextWrapped = true
    
    Button_2.Name = "Button"
    Button_2.Parent = FunctionTemplate
    Button_2.BackgroundColor3 = Color3.new(0, 0, 0)
    Button_2.BackgroundTransparency = 0.69999998807907
    Button_2.BorderColor3 = Color3.new(1, 1, 1)
    Button_2.Position = UDim2.new(0, 7, 0, 10)
    Button_2.Size = UDim2.new(0, 80, 0, 18)
    Button_2.AutoButtonColor = false
    Button_2.Font = Enum.Font.SourceSans
    Button_2.Text = ""
    Button_2.TextColor3 = Color3.new(0, 0, 0)
    Button_2.TextSize = 14
    
    TopBar.Name = "TopBar"
    TopBar.Parent = Background
    TopBar.BackgroundColor3 = Color3.fromRGB(37, 35, 38)
    TopBar.BorderSizePixel = 0
    TopBar.Size = UDim2.new(0, 450, 0, 19)
    
    Simple.Name = "Simple"
    Simple.Parent = TopBar
    Simple.BackgroundColor3 = Color3.new(1, 1, 1)
    Simple.AutoButtonColor = false
    Simple.BackgroundTransparency = 1
    Simple.Position = UDim2.new(0, 5, 0, 0)
    Simple.Size = UDim2.new(0, 57, 0, 18)
    Simple.Font = Enum.Font.SourceSansBold
    Simple.Text = "SimpleSpy"
    Simple.TextColor3 = Color3.new(1, 1, 1)
    Simple.TextSize = 14
    Simple.TextXAlignment = Enum.TextXAlignment.Left
    
    CloseButton.Name = "CloseButton"
    CloseButton.Parent = TopBar
    CloseButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
    CloseButton.BorderSizePixel = 0
    CloseButton.Position = UDim2.new(1, -19, 0, 0)
    CloseButton.Size = UDim2.new(0, 19, 0, 19)
    CloseButton.Font = Enum.Font.SourceSans
    CloseButton.Text = ""
    CloseButton.TextColor3 = Color3.new(0, 0, 0)
    CloseButton.TextSize = 14
    
    ImageLabel.Parent = CloseButton
    ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Position = UDim2.new(0, 5, 0, 5)
    ImageLabel.Size = UDim2.new(0, 9, 0, 9)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=5597086202"
    
    MaximizeButton.Name = "MaximizeButton"
    MaximizeButton.Parent = TopBar
    MaximizeButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
    MaximizeButton.BorderSizePixel = 0
    MaximizeButton.Position = UDim2.new(1, -38, 0, 0)
    MaximizeButton.Size = UDim2.new(0, 19, 0, 19)
    MaximizeButton.Font = Enum.Font.SourceSans
    MaximizeButton.Text = ""
    MaximizeButton.TextColor3 = Color3.new(0, 0, 0)
    MaximizeButton.TextSize = 14
    
    ImageLabel_2.Parent = MaximizeButton
    ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel_2.BackgroundTransparency = 1
    ImageLabel_2.Position = UDim2.new(0, 5, 0, 5)
    ImageLabel_2.Size = UDim2.new(0, 9, 0, 9)
    ImageLabel_2.Image = "http://www.roblox.com/asset/?id=5597108117"
    
    MinimizeButton.Name = "MinimizeButton"
    MinimizeButton.Parent = TopBar
    MinimizeButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
    MinimizeButton.BorderSizePixel = 0
    MinimizeButton.Position = UDim2.new(1, -57, 0, 0)
    MinimizeButton.Size = UDim2.new(0, 19, 0, 19)
    MinimizeButton.Font = Enum.Font.SourceSans
    MinimizeButton.Text = ""
    MinimizeButton.TextColor3 = Color3.new(0, 0, 0)
    MinimizeButton.TextSize = 14
    
    ImageLabel_3.Parent = MinimizeButton
    ImageLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel_3.BackgroundTransparency = 1
    ImageLabel_3.Position = UDim2.new(0, 5, 0, 5)
    ImageLabel_3.Size = UDim2.new(0, 9, 0, 9)
    ImageLabel_3.Image = "http://www.roblox.com/asset/?id=5597105827"
    
    ToolTip.Name = "ToolTip"
    ToolTip.Parent = SimpleSpy2
    ToolTip.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    ToolTip.BackgroundTransparency = 0.1
    ToolTip.BorderColor3 = Color3.new(1, 1, 1)
    ToolTip.Size = UDim2.new(0, 200, 0, 50)
    ToolTip.ZIndex = 3
    ToolTip.Visible = false
    
    TextLabel.Parent = ToolTip
    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Position = UDim2.new(0, 2, 0, 2)
    TextLabel.Size = UDim2.new(0, 196, 0, 46)
    TextLabel.ZIndex = 3
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "This is some slightly longer text."
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextSize = 14
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextYAlignment = Enum.TextYAlignment.Top
    
    -------------------------------------------------------------------------------
    -- init
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local ContentProvider = game:GetService("ContentProvider")
    local TextService = game:GetService("TextService")
    local Mouse
    
    local selectedColor = Color3.new(0.321569, 0.333333, 1)
    local deselectedColor = Color3.new(0.8, 0.8, 0.8)
    --- So things are descending
    local layoutOrderNum = 999999999
    --- Whether or not the gui is closing
    local mainClosing = false
    --- Whether or not the gui is closed (defaults to false)
    local closed = false
    --- Whether or not the sidebar is closing
    local sideClosing = false
    --- Whether or not the sidebar is closed (defaults to true but opens automatically on remote selection)
    local sideClosed = false
    --- Whether or not the code box is maximized (defaults to false)
    local maximized = false
    --- The event logs to be read from
    local logs = {}
    --- The event currently selected.Log (defaults to nil)
    local selected = nil
    --- The blacklist (can be a string name or the Remote Instance)
    local blacklist = {}
    --- The block list (can be a string name or the Remote Instance)
    local blocklist = {}
    --- Whether or not to add getNil function
    local getNil = false
    --- Array of remotes (and original functions) connected to
    local connectedRemotes = {}
    --- True = hookfunction, false = namecall
    local toggle = false
    local gm
    local original
    --- used to prevent recursives
    local prevTables = {}
    --- holds logs (for deletion)
    local remoteLogs = {}
    --- used for hookfunction
    local remoteEvent = Instance.new("RemoteEvent")
    --- used for hookfunction
    local remoteFunction = Instance.new("RemoteFunction")
    local originalEvent = remoteEvent.FireServer
    local originalFunction = remoteFunction.InvokeServer
    --- the maximum amount of remotes allowed in logs
    _G.SIMPLESPYCONFIG_MaxRemotes = 500
    --- how many spaces to indent
    local indent = 4
    --- used for task scheduler
    local scheduled = {}
    --- RBXScriptConnect of the task scheduler
    local schedulerconnect
    local SimpleSpy = {}
    local topstr = ""
    local bottomstr = ""
    local remotesFadeIn
    local rightFadeIn
    local codebox
    local p
    local getnilrequired = false
    
    -- autoblock variables
    local autoblock = false
    local history = {}
    local excluding = {}
    
    -- function info variables
    local funcEnabled = true
    
    -- remote hooking/connecting api variables
    local remoteSignals = {}
    local remoteHooks = {}
    
    -- original mouse icon
    local oldIcon
    
    -- if mouse inside gui
    local mouseInGui = false
    
    -- handy array of RBXScriptConnections to disconnect on shutdown
    local connections = {}
    
    -- whether or not SimpleSpy uses 'getcallingscript()' to get the script (default is false because detection)
    local useGetCallingScript = false
    
    --- used to enable/disable SimpleSpy's keyToString for remotes
    local keyToString = false
    
    -- determines whether return values are recorded
    local recordReturnValues = false
    
    -- functions
    
    --- Converts arguments to a string and generates code that calls the specified method with them, recommended to be used in conjunction with ValueToString (method must be a string, e.g. `game:GetService("ReplicatedStorage").Remote.remote:FireServer`)
    --- @param method string
    --- @param args any[]
    --- @return string
    function SimpleSpy:ArgsToString(method, args)
        assert(typeof(method) == "string", "string expected, got " .. typeof(method))
        assert(typeof(args) == "table", "table expected, got " .. typeof(args))
        return v2v({ args = args }) .. "\n\n" .. method .. "(unpack(args))"
    end
    
    --- Converts a value to variables with the specified index as the variable name (if nil/invalid then the name will be assigned automatically)
    --- @param t any[]
    --- @return string
    function SimpleSpy:TableToVars(t)
        assert(typeof(t) == "table", "table expected, got " .. typeof(t))
        return v2v(t)
    end
    
    --- Converts a value to a variable with the specified `variablename` (if nil/invalid then the name will be assigned automatically)
    --- @param value any
    --- @return string
    function SimpleSpy:ValueToVar(value, variablename)
        assert(variablename == nil or typeof(variablename) == "string", "string expected, got " .. typeof(variablename))
        if not variablename then
            variablename = 1
        end
        return v2v({ [variablename] = value })
    end
    
    --- Converts any value to a string, cannot preserve function contents
    --- @param value any
    --- @return string
    function SimpleSpy:ValueToString(value)
        return v2s(value)
    end
    
    --- Generates the simplespy function info
    --- @param func function
    --- @return string
    function SimpleSpy:GetFunctionInfo(func)
        assert(typeof(func) == "function", "Instance expected, got " .. typeof(func))
        warn("Function info currently unavailable due to crashing in Synapse X")
        return v2v({ functionInfo = {
            info = debug.getinfo(func),
            constants = debug.getconstants(func),
        } })
    end
    
    --- Gets the ScriptSignal for a specified remote being fired
    --- @param remote Instance
    function SimpleSpy:GetRemoteFiredSignal(remote)
        assert(typeof(remote) == "Instance", "Instance expected, got " .. typeof(remote))
        if not remoteSignals[remote] then
            remoteSignals[remote] = newSignal()
        end
        return remoteSignals[remote]
    end
    
    --- Allows for direct hooking of remotes **THIS CAN BE VERY DANGEROUS**
    --- @param remote Instance
    --- @param f function
    function SimpleSpy:HookRemote(remote, f)
        assert(typeof(remote) == "Instance", "Instance expected, got " .. typeof(remote))
        assert(typeof(f) == "function", "function expected, got " .. typeof(f))
        remoteHooks[remote] = f
    end
    
    --- Blocks the specified remote instance/string
    --- @param remote any
    function SimpleSpy:BlockRemote(remote)
        assert(
            typeof(remote) == "Instance" or typeof(remote) == "string",
            "Instance | string expected, got " .. typeof(remote)
        )
        blocklist[remote] = true
    end
    
    --- Excludes the specified remote from logs (instance/string)
    --- @param remote any
    function SimpleSpy:ExcludeRemote(remote)
        assert(
            typeof(remote) == "Instance" or typeof(remote) == "string",
            "Instance | string expected, got " .. typeof(remote)
        )
        blacklist[remote] = true
    end
    
    --- Creates a new ScriptSignal that can be connected to and fired
    --- @return table
    function newSignal()
        local connected = {}
        return {
            Connect = function(self, f)
                assert(connected, "Signal is closed")
                connected[tostring(f)] = f
                return {
                    Connected = true,
                    Disconnect = function(self)
                        if not connected then
                            warn("Signal is already closed")
                        end
                        self.Connected = false
                        connected[tostring(f)] = nil
                    end,
                }
            end,
            Wait = function(self)
                local thread = coroutine.running()
                local connection
                connection = self:Connect(function()
                    connection:Disconnect()
                    if coroutine.status(thread) == "suspended" then
                        coroutine.resume(thread)
                    end
                end)
                coroutine.yield()
            end,
            Fire = function(self, ...)
                for _, f in pairs(connected) do
                    coroutine.wrap(f)(...)
                end
            end,
        }
    end
    
    --- Prevents remote spam from causing lag (clears logs after `_G.SIMPLESPYCONFIG_MaxRemotes` or 500 remotes)
    function clean()
        local max = _G.SIMPLESPYCONFIG_MaxRemotes
        if not typeof(max) == "number" and math.floor(max) ~= max then
            max = 500
        end
        if #remoteLogs > max then
            for i = 100, #remoteLogs do
                local v = remoteLogs[i]
                if typeof(v[1]) == "RBXScriptConnection" then
                    v[1]:Disconnect()
                end
                if typeof(v[2]) == "Instance" then
                    v[2]:Destroy()
                end
            end
            local newLogs = {}
            for i = 1, 100 do
                table.insert(newLogs, remoteLogs[i])
            end
            remoteLogs = newLogs
        end
    end
    
    --- Scales the ToolTip to fit containing text
    function scaleToolTip()
        local size = TextService:GetTextSize(
            TextLabel.Text,
            TextLabel.TextSize,
            TextLabel.Font,
            Vector2.new(196, math.huge)
        )
        TextLabel.Size = UDim2.new(0, size.X, 0, size.Y)
        ToolTip.Size = UDim2.new(0, size.X + 4, 0, size.Y + 4)
    end
    
    --- Executed when the toggle button (the SimpleSpy logo) is hovered over
    function onToggleButtonHover()
        if not toggle then
            TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(252, 51, 51) }):Play()
        else
            TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(68, 206, 91) }):Play()
        end
    end
    
    --- Executed when the toggle button is unhovered over
    function onToggleButtonUnhover()
        TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
    end
    
    --- Executed when the X button is hovered over
    function onXButtonHover()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(255, 60, 60) }):Play()
    end
    
    --- Executed when the X button is unhovered over
    function onXButtonUnhover()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(37, 36, 38) }):Play()
    end
    
    --- Toggles the remote spy method (when button clicked)
    function onToggleButtonClick()
        if toggle then
            TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(252, 51, 51) }):Play()
        else
            TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(68, 206, 91) }):Play()
        end
        toggleSpyMethod()
    end
    
    --- Reconnects bringBackOnResize if the current viewport changes and also connects it initially
    function connectResize()
        local lastCam = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(bringBackOnResize)
        workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
            lastCam:Disconnect()
            if workspace.CurrentCamera then
                lastCam = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(bringBackOnResize)
            end
        end)
    end
    
    --- Brings gui back if it gets lost offscreen (connected to the camera viewport changing)
    function bringBackOnResize()
        validateSize()
        if sideClosed then
            minimizeSize()
        else
            maximizeSize()
        end
        local currentX = Background.AbsolutePosition.X
        local currentY = Background.AbsolutePosition.Y
        local viewportSize = workspace.CurrentCamera.ViewportSize
        if (currentX < 0) or (currentX > (viewportSize.X - (sideClosed and 131 or Background.AbsoluteSize.X))) then
            if currentX < 0 then
                currentX = 0
            else
                currentX = viewportSize.X - (sideClosed and 131 or Background.AbsoluteSize.X)
            end
        end
        if (currentY < 0) or (currentY > (viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36)) then
            if currentY < 0 then
                currentY = 0
            else
                currentY = viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36
            end
        end
        TweenService.Create(
            TweenService,
            Background,
            TweenInfo.new(0.1),
            { Position = UDim2.new(0, currentX, 0, currentY) }
        ):Play()
    end
    
    --- Drags gui (so long as mouse is held down)
    --- @param input InputObject
    function onBarInput(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local lastPos = UserInputService.GetMouseLocation(UserInputService)
            local mainPos = Background.AbsolutePosition
            local offset = mainPos - lastPos
            local currentPos = offset + lastPos
            RunService.BindToRenderStep(RunService, "drag", 1, function()
                local newPos = UserInputService.GetMouseLocation(UserInputService)
                if newPos ~= lastPos then
                    local currentX = (offset + newPos).X
                    local currentY = (offset + newPos).Y
                    local viewportSize = workspace.CurrentCamera.ViewportSize
                    if
                        (currentX < 0 and currentX < currentPos.X)
                        or (
                            currentX > (viewportSize.X - (sideClosed and 131 or TopBar.AbsoluteSize.X))
                            and currentX > currentPos.X
                        )
                    then
                        if currentX < 0 then
                            currentX = 0
                        else
                            currentX = viewportSize.X - (sideClosed and 131 or TopBar.AbsoluteSize.X)
                        end
                    end
                    if
                        (currentY < 0 and currentY < currentPos.Y)
                        or (
                            currentY > (viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36)
                            and currentY > currentPos.Y
                        )
                    then
                        if currentY < 0 then
                            currentY = 0
                        else
                            currentY = viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36
                        end
                    end
                    currentPos = Vector2.new(currentX, currentY)
                    lastPos = newPos
                    TweenService.Create(
                        TweenService,
                        Background,
                        TweenInfo.new(0.1),
                        { Position = UDim2.new(0, currentPos.X, 0, currentPos.Y) }
                    ):Play()
                end
                -- if input.UserInputState ~= Enum.UserInputState.Begin then
                --     RunService.UnbindFromRenderStep(RunService, "drag")
                -- end
            end)
            table.insert(
                connections,
                UserInputService.InputEnded:Connect(function(inputE)
                    if input == inputE then
                        RunService:UnbindFromRenderStep("drag")
                    end
                end)
            )
        end
    end
    
    --- Fades out the table of elements (and makes them invisible), returns a function to make them visible again
    function fadeOut(elements)
        local data = {}
        for _, v in pairs(elements) do
            if typeof(v) == "Instance" and v:IsA("GuiObject") and v.Visible then
                coroutine.wrap(function()
                    data[v] = {
                        BackgroundTransparency = v.BackgroundTransparency,
                    }
                    TweenService:Create(v, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
                    if v:IsA("TextBox") or v:IsA("TextButton") or v:IsA("TextLabel") then
                        data[v].TextTransparency = v.TextTransparency
                        TweenService:Create(v, TweenInfo.new(0.5), { TextTransparency = 1 }):Play()
                    elseif v:IsA("ImageButton") or v:IsA("ImageLabel") then
                        data[v].ImageTransparency = v.ImageTransparency
                        TweenService:Create(v, TweenInfo.new(0.5), { ImageTransparency = 1 }):Play()
                    end
                    wait(0.5)
                    v.Visible = false
                    for i, x in pairs(data[v]) do
                        v[i] = x
                    end
                    data[v] = true
                end)()
            end
        end
        return function()
            for i, _ in pairs(data) do
                coroutine.wrap(function()
                    local properties = {
                        BackgroundTransparency = i.BackgroundTransparency,
                    }
                    i.BackgroundTransparency = 1
                    TweenService
                        :Create(i, TweenInfo.new(0.5), { BackgroundTransparency = properties.BackgroundTransparency })
                        :Play()
                    if i:IsA("TextBox") or i:IsA("TextButton") or i:IsA("TextLabel") then
                        properties.TextTransparency = i.TextTransparency
                        i.TextTransparency = 1
                        TweenService
                            :Create(i, TweenInfo.new(0.5), { TextTransparency = properties.TextTransparency })
                            :Play()
                    elseif i:IsA("ImageButton") or i:IsA("ImageLabel") then
                        properties.ImageTransparency = i.ImageTransparency
                        i.ImageTransparency = 1
                        TweenService
                            :Create(i, TweenInfo.new(0.5), { ImageTransparency = properties.ImageTransparency })
                            :Play()
                    end
                    i.Visible = true
                end)()
            end
        end
    end
    
    --- Expands and minimizes the gui (closed is the toggle boolean)
    function toggleMinimize(override)
        if mainClosing and not override or maximized then
            return
        end
        mainClosing = true
        closed = not closed
        if closed then
            if not sideClosed then
                toggleSideTray(true)
            end
            LeftPanel.Visible = true
            TweenService:Create(LeftPanel, TweenInfo.new(0.5), { Size = UDim2.new(0, 131, 0, 0) }):Play()
            wait(0.5)
            remotesFadeIn = fadeOut(LeftPanel:GetDescendants())
            wait(0.5)
        else
            TweenService:Create(LeftPanel, TweenInfo.new(0.5), { Size = UDim2.new(0, 131, 0, 249) }):Play()
            wait(0.5)
            if remotesFadeIn then
                remotesFadeIn()
                remotesFadeIn = nil
            end
            bringBackOnResize()
        end
        mainClosing = false
    end
    
    --- Expands and minimizes the sidebar (sideClosed is the toggle boolean)
    function toggleSideTray(override)
        if sideClosing and not override or maximized then
            return
        end
        sideClosing = true
        sideClosed = not sideClosed
        if sideClosed then
            rightFadeIn = fadeOut(RightPanel:GetDescendants())
            wait(0.5)
            minimizeSize(0.5)
            wait(0.5)
            RightPanel.Visible = false
        else
            if closed then
                toggleMinimize(true)
            end
            RightPanel.Visible = true
            maximizeSize(0.5)
            wait(0.5)
            if rightFadeIn then
                rightFadeIn()
            end
            bringBackOnResize()
        end
        sideClosing = false
    end
    
    --- Expands code box to fit screen for more convenient viewing
    function toggleMaximize()
        if not sideClosed and not maximized then
            maximized = true
            local disable = Instance.new("TextButton")
            local prevSize = UDim2.new(0, CodeBox.AbsoluteSize.X, 0, CodeBox.AbsoluteSize.Y)
            local prevPos = UDim2.new(0, CodeBox.AbsolutePosition.X, 0, CodeBox.AbsolutePosition.Y)
            disable.Size = UDim2.new(1, 0, 1, 0)
            disable.BackgroundColor3 = Color3.new()
            disable.BorderSizePixel = 0
            disable.Text = 0
            disable.ZIndex = 3
            disable.BackgroundTransparency = 1
            disable.AutoButtonColor = false
            CodeBox.ZIndex = 4
            CodeBox.Position = prevPos
            CodeBox.Size = prevSize
            TweenService
                :Create(
                    CodeBox,
                    TweenInfo.new(0.5),
                    { Size = UDim2.new(0.5, 0, 0.5, 0), Position = UDim2.new(0.25, 0, 0.25, 0) }
                )
                :Play()
            TweenService:Create(disable, TweenInfo.new(0.5), { BackgroundTransparency = 0.5 }):Play()
            disable.MouseButton1Click:Connect(function()
                if
                    UserInputService:GetMouseLocation().Y + 36 >= CodeBox.AbsolutePosition.Y
                    and UserInputService:GetMouseLocation().Y + 36 <= CodeBox.AbsolutePosition.Y + CodeBox.AbsoluteSize.Y
                    and UserInputService:GetMouseLocation().X >= CodeBox.AbsolutePosition.X
                    and UserInputService:GetMouseLocation().X <= CodeBox.AbsolutePosition.X + CodeBox.AbsoluteSize.X
                then
                    return
                end
                TweenService:Create(CodeBox, TweenInfo.new(0.5), { Size = prevSize, Position = prevPos }):Play()
                TweenService:Create(disable, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
                maximized = false
                wait(0.5)
                disable:Destroy()
                CodeBox.Size = UDim2.new(1, 0, 0.5, 0)
                CodeBox.Position = UDim2.new(0, 0, 0, 0)
                CodeBox.ZIndex = 0
            end)
        end
    end
    
    --- Checks if cursor is within resize range
    --- @param p Vector2
    function isInResizeRange(p)
        local relativeP = p - Background.AbsolutePosition
        local range = 5
        if
            relativeP.X >= TopBar.AbsoluteSize.X - range
            and relativeP.Y >= Background.AbsoluteSize.Y - range
            and relativeP.X <= TopBar.AbsoluteSize.X
            and relativeP.Y <= Background.AbsoluteSize.Y
        then
            return true, "B"
        elseif relativeP.X >= TopBar.AbsoluteSize.X - range and relativeP.X <= Background.AbsoluteSize.X then
            return true, "X"
        elseif relativeP.Y >= Background.AbsoluteSize.Y - range and relativeP.Y <= Background.AbsoluteSize.Y then
            return true, "Y"
        end
        return false
    end
    
    --- Checks if cursor is within dragging range
    --- @param p Vector2
    function isInDragRange(p)
        local relativeP = p - Background.AbsolutePosition
        if
            relativeP.X <= TopBar.AbsoluteSize.X - CloseButton.AbsoluteSize.X * 3
            and relativeP.X >= 0
            and relativeP.Y <= TopBar.AbsoluteSize.Y
            and relativeP.Y >= 0
        then
            return true
        end
        return false
    end
    
    --- Called when mouse enters SimpleSpy
    function mouseEntered()
        local existingCursor = SimpleSpy2:FindFirstChild("Cursor")
        while existingCursor do
            existingCursor:Destroy()
            existingCursor = SimpleSpy2:FindFirstChild("Cursor")
        end
        local customCursor = Instance.new("ImageLabel")
        customCursor.Name = "Cursor"
        customCursor.Size = UDim2.fromOffset(200, 200)
        customCursor.ZIndex = 1e5
        customCursor.BackgroundTransparency = 1
        customCursor.Image = ""
        customCursor.Parent = SimpleSpy2
        UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
        RunService:BindToRenderStep("SIMPLESPY_CURSOR", 1, function()
            if mouseInGui and _G.SimpleSpyExecuted then
                local mouseLocation = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
                customCursor.Position = UDim2.fromOffset(
                    mouseLocation.X - customCursor.AbsoluteSize.X / 2,
                    mouseLocation.Y - customCursor.AbsoluteSize.Y / 2
                )
                local inRange, type = isInResizeRange(mouseLocation)
                if inRange and not sideClosed and not closed then
                    customCursor.Image = type == "B" and "rbxassetid://6065821980"
                        or type == "X" and "rbxassetid://6065821086"
                        or type == "Y" and "rbxassetid://6065821596"
                elseif inRange and not closed and type == "Y" or type == "B" then
                    customCursor.Image = "rbxassetid://6065821596"
                elseif customCursor.Image ~= "rbxassetid://6065775281" then
                    customCursor.Image = "rbxassetid://6065775281"
                end
            else
                UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
                customCursor:Destroy()
                RunService:UnbindFromRenderStep("SIMPLESPY_CURSOR")
            end
        end)
    end
    
    --- Called when mouse moves
    function mouseMoved()
        local mousePos = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
        if
            not closed
            and mousePos.X >= TopBar.AbsolutePosition.X
            and mousePos.X <= TopBar.AbsolutePosition.X + TopBar.AbsoluteSize.X
            and mousePos.Y >= Background.AbsolutePosition.Y
            and mousePos.Y <= Background.AbsolutePosition.Y + Background.AbsoluteSize.Y
        then
            if not mouseInGui then
                mouseInGui = true
                mouseEntered()
            end
        else
            mouseInGui = false
        end
    end
    
    --- Adjusts the ui elements to the 'Maximized' size
    function maximizeSize(speed)
        if not speed then
            speed = 0.05
        end
        TweenService
            :Create(
                LeftPanel,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
            )
            :Play()
        TweenService
            :Create(RightPanel, TweenInfo.new(speed), {
                Size = UDim2.fromOffset(
                    Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X,
                    Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y
                ),
            })
            :Play()
        TweenService
            :Create(
                TopBar,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(Background.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }
            )
            :Play()
        TweenService
            :Create(ScrollingFrame, TweenInfo.new(speed), {
                Size = UDim2.fromOffset(Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X, 110),
                Position = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y),
            })
            :Play()
        TweenService
            :Create(CodeBox, TweenInfo.new(speed), {
                Size = UDim2.fromOffset(
                    Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X,
                    Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y
                ),
            })
            :Play()
        TweenService
            :Create(
                LogList,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }
            )
            :Play()
    end
    
    --- Adjusts the ui elements to close the side
    function minimizeSize(speed)
        if not speed then
            speed = 0.05
        end
        TweenService
            :Create(
                LeftPanel,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
            )
            :Play()
        TweenService
            :Create(
                RightPanel,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(0, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
            )
            :Play()
        TweenService
            :Create(
                TopBar,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }
            )
            :Play()
        TweenService
            :Create(ScrollingFrame, TweenInfo.new(speed), {
                Size = UDim2.fromOffset(0, 119),
                Position = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y),
            })
            :Play()
        TweenService
            :Create(
                CodeBox,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y) }
            )
            :Play()
        TweenService
            :Create(
                LogList,
                TweenInfo.new(speed),
                { Size = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }
            )
            :Play()
    end
    
    --- Ensures size is within screensize limitations
    function validateSize()
        local x, y = Background.AbsoluteSize.X, Background.AbsoluteSize.Y
        local screenSize = workspace.CurrentCamera.ViewportSize
        if x + Background.AbsolutePosition.X > screenSize.X then
            if screenSize.X - Background.AbsolutePosition.X >= 450 then
                x = screenSize.X - Background.AbsolutePosition.X
            else
                x = 450
            end
        elseif y + Background.AbsolutePosition.Y > screenSize.Y then
            if screenSize.X - Background.AbsolutePosition.Y >= 268 then
                y = screenSize.Y - Background.AbsolutePosition.Y
            else
                y = 268
            end
        end
        Background.Size = UDim2.fromOffset(x, y)
    end
    
    --- Called on user input while mouse in 'Background' frame
    --- @param input InputObject
    function backgroundUserInput(input)
        local mousePos = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
        local inResizeRange, type = isInResizeRange(mousePos)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and inResizeRange then
            local lastPos = UserInputService:GetMouseLocation()
            local offset = Background.AbsoluteSize - lastPos
            local currentPos = lastPos + offset
            RunService:BindToRenderStep("SIMPLESPY_RESIZE", 1, function()
                local newPos = UserInputService:GetMouseLocation()
                if newPos ~= lastPos then
                    local currentX = (newPos + offset).X
                    local currentY = (newPos + offset).Y
                    if currentX < 450 then
                        currentX = 450
                    end
                    if currentY < 268 then
                        currentY = 268
                    end
                    currentPos = Vector2.new(currentX, currentY)
                    Background.Size = UDim2.fromOffset(
                        (not sideClosed and not closed and (type == "X" or type == "B")) and currentPos.X
                            or Background.AbsoluteSize.X,
                        (--[[(not sideClosed or currentPos.X <= LeftPanel.AbsolutePosition.X + LeftPanel.AbsoluteSize.X) and]]not closed and (type == "Y" or type == "B"))
                                and currentPos.Y
                            or Background.AbsoluteSize.Y
                    )
                    validateSize()
                    if sideClosed then
                        minimizeSize()
                    else
                        maximizeSize()
                    end
                    lastPos = newPos
                end
            end)
            table.insert(
                connections,
                UserInputService.InputEnded:Connect(function(inputE)
                    if input == inputE then
                        RunService:UnbindFromRenderStep("SIMPLESPY_RESIZE")
                    end
                end)
            )
        elseif isInDragRange(mousePos) then
            onBarInput(input)
        end
    end
    
    --- Gets the player an instance is descended from
    function getPlayerFromInstance(instance)
        for _, v in pairs(Players:GetPlayers()) do
            if v.Character and (instance:IsDescendantOf(v.Character) or instance == v.Character) then
                return v
            end
        end
    end
    
    --- Runs on MouseButton1Click of an event frame
    function eventSelect(frame)
        if selected and selected.Log and selected.Log.Button then
            TweenService
                :Create(selected.Log.Button, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(0, 0, 0) })
                :Play()
            selected = nil
        end
        for _, v in pairs(logs) do
            if frame == v.Log then
                selected = v
            end
        end
        if selected and selected.Log then
            TweenService
                :Create(frame.Button, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(92, 126, 229) })
                :Play()
            codebox:setRaw(selected.GenScript)
        end
        if sideClosed then
            toggleSideTray()
        end
    end
    
    --- Updates the canvas size to fit the current amount of function buttons
    function updateFunctionCanvas()
        ScrollingFrame.CanvasSize = UDim2.fromOffset(UIGridLayout.AbsoluteContentSize.X, UIGridLayout.AbsoluteContentSize.Y)
    end
    
    --- Updates the canvas size to fit the amount of current remotes
    function updateRemoteCanvas()
        LogList.CanvasSize = UDim2.fromOffset(UIListLayout.AbsoluteContentSize.X, UIListLayout.AbsoluteContentSize.Y)
    end
    
    --- Allows for toggling of the tooltip and easy setting of le description
    --- @param enable boolean
    --- @param text string
    function makeToolTip(enable, text)
        if enable then
            if ToolTip.Visible then
                ToolTip.Visible = false
                RunService:UnbindFromRenderStep("ToolTip")
            end
            local first = true
            RunService:BindToRenderStep("ToolTip", 1, function()
                local topLeft = Vector2.new(Mouse.X + 20, Mouse.Y + 20)
                local bottomRight = topLeft + ToolTip.AbsoluteSize
                if topLeft.X < 0 then
                    topLeft = Vector2.new(0, topLeft.Y)
                elseif bottomRight.X > workspace.CurrentCamera.ViewportSize.X then
                    topLeft = Vector2.new(workspace.CurrentCamera.ViewportSize.X - ToolTip.AbsoluteSize.X, topLeft.Y)
                end
                if topLeft.Y < 0 then
                    topLeft = Vector2.new(topLeft.X, 0)
                elseif bottomRight.Y > workspace.CurrentCamera.ViewportSize.Y - 35 then
                    topLeft = Vector2.new(topLeft.X, workspace.CurrentCamera.ViewportSize.Y - ToolTip.AbsoluteSize.Y - 35)
                end
                if topLeft.X <= Mouse.X and topLeft.Y <= Mouse.Y then
                    topLeft = Vector2.new(Mouse.X - ToolTip.AbsoluteSize.X - 2, Mouse.Y - ToolTip.AbsoluteSize.Y - 2)
                end
                if first then
                    ToolTip.Position = UDim2.fromOffset(topLeft.X, topLeft.Y)
                    first = false
                else
                    ToolTip:TweenPosition(UDim2.fromOffset(topLeft.X, topLeft.Y), "Out", "Linear", 0.1)
                end
            end)
            TextLabel.Text = text
            ToolTip.Visible = true
        else
            if ToolTip.Visible then
                ToolTip.Visible = false
                RunService:UnbindFromRenderStep("ToolTip")
            end
        end
    end
    
    --- Creates new function button (below codebox)
    --- @param name string
    ---@param description function
    ---@param onClick function
    function newButton(name, description, onClick)
        local button = FunctionTemplate:Clone()
        button.Text.Text = name
        button.Button.MouseEnter:Connect(function()
            makeToolTip(true, description())
        end)
        button.Button.MouseLeave:Connect(function()
            makeToolTip(false)
        end)
        button.AncestryChanged:Connect(function()
            makeToolTip(false)
        end)
        button.Button.MouseButton1Click:Connect(function(...)
            onClick(button, ...)
        end)
        button.Parent = ScrollingFrame
        updateFunctionCanvas()
    end
    
    --- Adds new Remote to logs
    --- @param name string The name of the remote being logged
    --- @param type string The type of the remote being logged (either 'function' or 'event')
    --- @param args any
    --- @param remote any
    --- @param function_info string
    --- @param blocked any
    function newRemote(type, name, args, remote, function_info, blocked, src, returnValue)
        local remoteFrame = RemoteTemplate:Clone()
        remoteFrame.Text.Text = string.sub(name, 1, 50)
        remoteFrame.ColorBar.BackgroundColor3 = type == "event" and Color3.new(255, 242, 0) or Color3.fromRGB(99, 86, 245)
        local id = Instance.new("IntValue")
        id.Name = "ID"
        id.Value = #logs + 1
        id.Parent = remoteFrame
        local weakRemoteTable = setmetatable({ remote = remote }, { __mode = "v" })
        local log = {
            Name = name,
            Function = function_info,
            Remote = weakRemoteTable,
            Log = remoteFrame,
            Blocked = blocked,
            Source = src,
            GenScript = "-- Generating, please wait... (click to reload)\n-- (If this message persists, the remote args are likely extremely long)",
            ReturnValue = returnValue,
        }
        logs[#logs + 1] = log
        schedule(function()
            log.GenScript = genScript(remote, args)
            if blocked then
                logs[#logs].GenScript = "-- THIS REMOTE WAS PREVENTED FROM FIRING THE SERVER BY SIMPLESPY\n\n"
                    .. logs[#logs].GenScript
            end
        end)
        local connect = remoteFrame.Button.MouseButton1Click:Connect(function()
            eventSelect(remoteFrame)
        end)
        if layoutOrderNum < 1 then
            layoutOrderNum = 999999999
        end
        remoteFrame.LayoutOrder = layoutOrderNum
        layoutOrderNum = layoutOrderNum - 1
        remoteFrame.Parent = LogList
        table.insert(remoteLogs, 1, { connect, remoteFrame })
        clean()
        updateRemoteCanvas()
    end
    
    --- Generates a script from the provided arguments (first has to be remote path)
    function genScript(remote, args)
        prevTables = {}
        local gen = ""
        if #args > 0 then
            if not pcall(function()
                gen = v2v({ args = args }) .. "\n"
            end) then
                gen = gen
                    .. "-- TableToString failure! Reverting to legacy functionality (results may vary)\nlocal args = {"
                if
                    not pcall(function()
                        for i, v in pairs(args) do
                            if type(i) ~= "Instance" and type(i) ~= "userdata" then
                                gen = gen .. "\n    [object] = "
                            elseif type(i) == "string" then
                                gen = gen .. '\n    ["' .. i .. '"] = '
                            elseif type(i) == "userdata" and typeof(i) ~= "Instance" then
                                gen = gen .. "\n    [" .. string.format("nil --[[%s]]", typeof(v)) .. ")] = "
                            elseif type(i) == "userdata" then
                                gen = gen .. "\n    [game." .. i:GetFullName() .. ")] = "
                            end
                            if type(v) ~= "Instance" and type(v) ~= "userdata" then
                                gen = gen .. "object"
                            elseif type(v) == "string" then
                                gen = gen .. '"' .. v .. '"'
                            elseif type(v) == "userdata" and typeof(v) ~= "Instance" then
                                gen = gen .. string.format("nil --[[%s]]", typeof(v))
                            elseif type(v) == "userdata" then
                                gen = gen .. "game." .. v:GetFullName()
                            end
                        end
                        gen = gen .. "\n}\n\n"
                    end)
                then
                    gen = gen .. "}\n-- Legacy tableToString failure! Unable to decompile."
                end
            end
            if not remote:IsDescendantOf(game) and not getnilrequired then
                gen = "function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end\n\n"
                    .. gen
            end
            if remote:IsA("RemoteEvent") then
                gen = gen .. v2s(remote) .. ":FireServer(unpack(args))"
            elseif remote:IsA("RemoteFunction") then
                gen = gen .. v2s(remote) .. ":InvokeServer(unpack(args))"
            end
        else
            if remote:IsA("RemoteEvent") then
                gen = gen .. v2s(remote) .. ":FireServer()"
            elseif remote:IsA("RemoteFunction") then
                gen = gen .. v2s(remote) .. ":InvokeServer()"
            end
        end
        gen = "-- Script generated by SimpleSpy - credits to peatchXD#6075\n\n" .. gen
        prevTables = {}
        return gen
    end
    
    --- value-to-string: value, string (out), level (indentation), parent table, var name, is from tovar
    function v2s(v, l, p, n, vtv, i, pt, path, tables, tI)
        if not tI then
            tI = { 0 }
        else
            tI[1] += 1
        end
        if typeof(v) == "number" then
            if v == math.huge then
                return "math.huge"
            elseif tostring(v):match("nan") then
                return "0/0 --[[NaN]]"
            end
            return tostring(v)
        elseif typeof(v) == "boolean" then
            return tostring(v)
        elseif typeof(v) == "string" then
            return formatstr(v, l)
        elseif typeof(v) == "function" then
            return f2s(v)
        elseif typeof(v) == "table" then
            return t2s(v, l, p, n, vtv, i, pt, path, tables, tI)
        elseif typeof(v) == "Instance" then
            return i2p(v)
        elseif typeof(v) == "userdata" then
            return "newproxy(true)"
        elseif type(v) == "userdata" then
            return u2s(v)
        elseif type(v) == "vector" then
            return string.format("Vector3.new(%s, %s, %s)", v2s(v.X), v2s(v.Y), v2s(v.Z))
        else
            return "nil --[[" .. typeof(v) .. "]]"
        end
    end
    
    --- value-to-variable
    --- @param t any
    function v2v(t)
        topstr = ""
        bottomstr = ""
        getnilrequired = false
        local ret = ""
        local count = 1
        for i, v in pairs(t) do
            if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
                ret = ret .. "local " .. i .. " = " .. v2s(v, nil, nil, i, true) .. "\n"
            elseif tostring(i):match("^[%a_]+[%w_]*$") then
                ret = ret
                    .. "local "
                    .. tostring(i):lower()
                    .. "_"
                    .. tostring(count)
                    .. " = "
                    .. v2s(v, nil, nil, tostring(i):lower() .. "_" .. tostring(count), true)
                    .. "\n"
            else
                ret = ret
                    .. "local "
                    .. type(v)
                    .. "_"
                    .. tostring(count)
                    .. " = "
                    .. v2s(v, nil, nil, type(v) .. "_" .. tostring(count), true)
                    .. "\n"
            end
            count = count + 1
        end
        if getnilrequired then
            topstr = "function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end\n"
                .. topstr
        end
        if #topstr > 0 then
            ret = topstr .. "\n" .. ret
        end
        if #bottomstr > 0 then
            ret = ret .. bottomstr
        end
        return ret
    end
    
    --- table-to-string
    --- @param t table
    --- @param l number
    --- @param p table
    --- @param n string
    --- @param vtv boolean
    --- @param i any
    --- @param pt table
    --- @param path string
    --- @param tables table
    --- @param tI table
    function t2s(t, l, p, n, vtv, i, pt, path, tables, tI)
        local globalIndex = table.find(getgenv(), t) -- checks if table is a global
        if type(globalIndex) == "string" then
            return globalIndex
        end
        if not tI then
            tI = { 0 }
        end
        if not path then -- sets path to empty string (so it doesn't have to manually provided every time)
            path = ""
        end
        if not l then -- sets the level to 0 (for indentation) and tables for logging tables it already serialized
            l = 0
            tables = {}
        end
        if not p then -- p is the previous table but doesn't really matter if it's the first
            p = t
        end
        for _, v in pairs(tables) do -- checks if the current table has been serialized before
            if n and rawequal(v, t) then
                bottomstr = bottomstr
                    .. "\n"
                    .. tostring(n)
                    .. tostring(path)
                    .. " = "
                    .. tostring(n)
                    .. tostring(({ v2p(v, p) })[2])
                return "{} --[[DUPLICATE]]"
            end
        end
        table.insert(tables, t) -- logs table to past tables
        local s = "{" -- start of serialization
        local size = 0
        l = l + indent -- set indentation level
        for k, v in pairs(t) do -- iterates over table
            size = size + 1 -- changes size for max limit
            if size > (_G.SimpleSpyMaxTableSize or 1000) then
                s = s
                    .. "\n"
                    .. string.rep(" ", l)
                    .. "-- MAXIMUM TABLE SIZE REACHED, CHANGE '_G.SimpleSpyMaxTableSize' TO ADJUST MAXIMUM SIZE "
                break
            end
            if rawequal(k, t) then -- checks if the table being iterated over is being used as an index within itself (yay, lua)
                bottomstr = bottomstr
                    .. "\n"
                    .. tostring(n)
                    .. tostring(path)
                    .. "["
                    .. tostring(n)
                    .. tostring(path)
                    .. "]"
                    .. " = "
                    .. (
                        rawequal(v, k) and tostring(n) .. tostring(path)
                        or v2s(v, l, p, n, vtv, k, t, path .. "[" .. tostring(n) .. tostring(path) .. "]", tables)
                    )
                size -= 1
                continue
            end
            local currentPath = "" -- initializes the path of 'v' within 't'
            if type(k) == "string" and k:match("^[%a_]+[%w_]*$") then -- cleanly handles table path generation (for the first half)
                currentPath = "." .. k
            else
                currentPath = "[" .. k2s(k, l, p, n, vtv, k, t, path .. currentPath, tables, tI) .. "]"
            end
            if size % 100 == 0 then
                scheduleWait()
            end
            -- actually serializes the member of the table
            s = s
                .. "\n"
                .. string.rep(" ", l)
                .. "["
                .. k2s(k, l, p, n, vtv, k, t, path .. currentPath, tables, tI)
                .. "] = "
                .. v2s(v, l, p, n, vtv, k, t, path .. currentPath, tables, tI)
                .. ","
        end
        if #s > 1 then -- removes the last comma because it looks nicer (no way to tell if it's done 'till it's done so...)
            s = s:sub(1, #s - 1)
        end
        if size > 0 then -- cleanly indents the last curly bracket
            s = s .. "\n" .. string.rep(" ", l - indent)
        end
        return s .. "}"
    end
    
    --- key-to-string
    function k2s(v, ...)
        if keyToString then
            if typeof(v) == "userdata" and getrawmetatable(v) then
                return string.format(
                    '"<void> (%s)" --[[Potentially hidden data (tostring in SimpleSpy:HookRemote/GetRemoteFiredSignal at your own risk)]]',
                    safetostring(v)
                )
            elseif typeof(v) == "userdata" then
                return string.format('"<void> (%s)"', safetostring(v))
            elseif type(v) == "userdata" and typeof(v) ~= "Instance" then
                return string.format('"<%s> (%s)"', typeof(v), tostring(v))
            elseif type(v) == "function" then
                return string.format('"<Function> (%s)"', tostring(v))
            end
        end
        return v2s(v, ...)
    end
    
    --- function-to-string
    function f2s(f)
        for k, x in pairs(getgenv()) do
            local isgucci, gpath
            if rawequal(x, f) then
                isgucci, gpath = true, ""
            elseif type(x) == "table" then
                isgucci, gpath = v2p(f, x)
            end
            if isgucci and type(k) ~= "function" then
                if type(k) == "string" and k:match("^[%a_]+[%w_]*$") then
                    return k .. gpath
                else
                    return "getgenv()[" .. v2s(k) .. "]" .. gpath
                end
            end
        end
        if funcEnabled and debug.getinfo(f).name:match("^[%a_]+[%w_]*$") then
            return "function()end --[[" .. debug.getinfo(f).name .. "]]"
        end
        return "function()end --[[" .. tostring(f) .. "]]"
    end
    
    --- instance-to-path
    --- @param i userdata
    function i2p(i)
        local player = getplayer(i)
        local parent = i
        local out = ""
        if parent == nil then
            return "nil"
        elseif player then
            while true do
                if parent and parent == player.Character then
                    if player == Players.LocalPlayer then
                        return 'game:GetService("Players").LocalPlayer.Character' .. out
                    else
                        return i2p(player) .. ".Character" .. out
                    end
                else
                    if parent.Name:match("[%a_]+[%w+]*") ~= parent.Name then
                        out = ":FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
                    else
                        out = "." .. parent.Name .. out
                    end
                end
                parent = parent.Parent
            end
        elseif parent ~= game then
            while true do
                if parent and parent.Parent == game then
                    local service = game:FindService(parent.ClassName)
                    if service then
                        if parent.ClassName == "Workspace" then
                            return "workspace" .. out
                        else
                            return 'game:GetService("' .. service.ClassName .. '")' .. out
                        end
                    else
                        if parent.Name:match("[%a_]+[%w_]*") then
                            return "game." .. parent.Name .. out
                        else
                            return "game:FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
                        end
                    end
                elseif parent.Parent == nil then
                    getnilrequired = true
                    return "getNil(" .. formatstr(parent.Name) .. ', "' .. parent.ClassName .. '")' .. out
                elseif parent == Players.LocalPlayer then
                    out = ".LocalPlayer" .. out
                else
                    if parent.Name:match("[%a_]+[%w_]*") ~= parent.Name then
                        out = ":FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
                    else
                        out = "." .. parent.Name .. out
                    end
                end
                parent = parent.Parent
            end
        else
            return "game"
        end
    end
    
    --- userdata-to-string: userdata
    --- @param u userdata
    function u2s(u)
        if typeof(u) == "TweenInfo" then
            -- TweenInfo
            return "TweenInfo.new("
                .. tostring(u.Time)
                .. ", Enum.EasingStyle."
                .. tostring(u.EasingStyle)
                .. ", Enum.EasingDirection."
                .. tostring(u.EasingDirection)
                .. ", "
                .. tostring(u.RepeatCount)
                .. ", "
                .. tostring(u.Reverses)
                .. ", "
                .. tostring(u.DelayTime)
                .. ")"
        elseif typeof(u) == "Ray" then
            -- Ray
            return "Ray.new(" .. u2s(u.Origin) .. ", " .. u2s(u.Direction) .. ")"
        elseif typeof(u) == "NumberSequence" then
            -- NumberSequence
            local ret = "NumberSequence.new("
            for i, v in pairs(u.KeyPoints) do
                ret = ret .. tostring(v)
                if i < #u.Keypoints then
                    ret = ret .. ", "
                end
            end
            return ret .. ")"
        elseif typeof(u) == "DockWidgetPluginGuiInfo" then
            -- DockWidgetPluginGuiInfo
            return "DockWidgetPluginGuiInfo.new(Enum.InitialDockState" .. tostring(u) .. ")"
        elseif typeof(u) == "ColorSequence" then
            -- ColorSequence
            local ret = "ColorSequence.new("
            for i, v in pairs(u.KeyPoints) do
                ret = ret .. "Color3.new(" .. tostring(v) .. ")"
                if i < #u.Keypoints then
                    ret = ret .. ", "
                end
            end
            return ret .. ")"
        elseif typeof(u) == "BrickColor" then
            -- BrickColor
            return "BrickColor.new(" .. tostring(u.Number) .. ")"
        elseif typeof(u) == "NumberRange" then
            -- NumberRange
            return "NumberRange.new(" .. tostring(u.Min) .. ", " .. tostring(u.Max) .. ")"
        elseif typeof(u) == "Region3" then
            -- Region3
            local center = u.CFrame.Position
            local size = u.CFrame.Size
            local vector1 = center - size / 2
            local vector2 = center + size / 2
            return "Region3.new(" .. u2s(vector1) .. ", " .. u2s(vector2) .. ")"
        elseif typeof(u) == "Faces" then
            -- Faces
            local faces = {}
            if u.Top then
                table.insert(faces, "Enum.NormalId.Top")
            end
            if u.Bottom then
                table.insert(faces, "Enum.NormalId.Bottom")
            end
            if u.Left then
                table.insert(faces, "Enum.NormalId.Left")
            end
            if u.Right then
                table.insert(faces, "Enum.NormalId.Right")
            end
            if u.Back then
                table.insert(faces, "Enum.NormalId.Back")
            end
            if u.Front then
                table.insert(faces, "Enum.NormalId.Front")
            end
            return "Faces.new(" .. table.concat(faces, ", ") .. ")"
        elseif typeof(u) == "EnumItem" then
            return tostring(u)
        elseif typeof(u) == "Enums" then
            return "Enum"
        elseif typeof(u) == "Enum" then
            return "Enum." .. tostring(u)
        elseif typeof(u) == "RBXScriptSignal" then
            return "nil --[[RBXScriptSignal]]"
        elseif typeof(u) == "Vector3" then
            return string.format("Vector3.new(%s, %s, %s)", v2s(u.X), v2s(u.Y), v2s(u.Z))
        elseif typeof(u) == "CFrame" then
            local xAngle, yAngle, zAngle = u:ToEulerAnglesXYZ()
            return string.format(
                "CFrame.new(%s, %s, %s) * CFrame.Angles(%s, %s, %s)",
                v2s(u.X),
                v2s(u.Y),
                v2s(u.Z),
                v2s(xAngle),
                v2s(yAngle),
                v2s(zAngle)
            )
        elseif typeof(u) == "DockWidgetPluginGuiInfo" then
            return string.format(
                "DockWidgetPluginGuiInfo(%s, %s, %s, %s, %s, %s, %s)",
                "Enum.InitialDockState.Right",
                v2s(u.InitialEnabled),
                v2s(u.InitialEnabledShouldOverrideRestore),
                v2s(u.FloatingXSize),
                v2s(u.FloatingYSize),
                v2s(u.MinWidth),
                v2s(u.MinHeight)
            )
        elseif typeof(u) == "PathWaypoint" then
            return string.format("PathWaypoint.new(%s, %s)", v2s(u.Position), v2s(u.Action))
        elseif typeof(u) == "UDim" then
            return string.format("UDim.new(%s, %s)", v2s(u.Scale), v2s(u.Offset))
        elseif typeof(u) == "UDim2" then
            return string.format(
                "UDim2.new(%s, %s, %s, %s)",
                v2s(u.X.Scale),
                v2s(u.X.Offset),
                v2s(u.Y.Scale),
                v2s(u.Y.Offset)
            )
        elseif typeof(u) == "Rect" then
            return string.format("Rect.new(%s, %s)", v2s(u.Min), v2s(u.Max))
        else
            return string.format("nil --[[%s]]", typeof(u))
        end
    end
    
    --- Gets the player an instance is descended from
    function getplayer(instance)
        for _, v in pairs(Players:GetPlayers()) do
            if v.Character and (instance:IsDescendantOf(v.Character) or instance == v.Character) then
                return v
            end
        end
    end
    
    --- value-to-path (in table)
    function v2p(x, t, path, prev)
        if not path then
            path = ""
        end
        if not prev then
            prev = {}
        end
        if rawequal(x, t) then
            return true, ""
        end
        for i, v in pairs(t) do
            if rawequal(v, x) then
                if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
                    return true, (path .. "." .. i)
                else
                    return true, (path .. "[" .. v2s(i) .. "]")
                end
            end
            if type(v) == "table" then
                local duplicate = false
                for _, y in pairs(prev) do
                    if rawequal(y, v) then
                        duplicate = true
                    end
                end
                if not duplicate then
                    table.insert(prev, t)
                    local found
                    found, p = v2p(x, v, path, prev)
                    if found then
                        if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
                            return true, "." .. i .. p
                        else
                            return true, "[" .. v2s(i) .. "]" .. p
                        end
                    end
                end
            end
        end
        return false, ""
    end
    
    --- format s: string, byte encrypt (for weird symbols)
    function formatstr(s, indentation)
        if not indentation then
            indentation = 0
        end
        local handled, reachedMax = handlespecials(s, indentation)
        return '"'
            .. handled
            .. '"'
            .. (
                reachedMax
                    and " --[[ MAXIMUM STRING SIZE REACHED, CHANGE '_G.SimpleSpyMaxStringSize' TO ADJUST MAXIMUM SIZE ]]"
                or ""
            )
    end
    
    --- Adds \'s to the text as a replacement to whitespace chars and other things because string.format can't yayeet
    function handlespecials(value, indentation)
        local buildStr = {}
        local i = 1
        local char = string.sub(value, i, i)
        local indentStr
        while char ~= "" do
            if char == '"' then
                buildStr[i] = '\\"'
            elseif char == "\\" then
                buildStr[i] = "\\\\"
            elseif char == "\n" then
                buildStr[i] = "\\n"
            elseif char == "\t" then
                buildStr[i] = "\\t"
            elseif string.byte(char) > 126 or string.byte(char) < 32 then
                buildStr[i] = string.format("\\%d", string.byte(char))
            else
                buildStr[i] = char
            end
            i = i + 1
            char = string.sub(value, i, i)
            if i % 200 == 0 then
                indentStr = indentStr or string.rep(" ", indentation + indent)
                table.move({ '"\n', indentStr, '... "' }, 1, 3, i, buildStr)
                i += 3
            end
        end
        return table.concat(buildStr)
    end
    
    -- safe (ish) tostring
    function safetostring(v: any)
        if typeof(v) == "userdata" or type(v) == "table" then
            local mt = getrawmetatable(v)
            local badtostring = mt and rawget(mt, "__tostring")
            if mt and badtostring then
                rawset(mt, "__tostring", nil)
                local out = tostring(v)
                rawset(mt, "__tostring", badtostring)
                return out
            end
        end
        return tostring(v)
    end
    
    --- finds script from 'src' from getinfo, returns nil if not found
    --- @param src string
    function getScriptFromSrc(src)
        local realPath
        local runningTest
        --- @type number
        local s, e
        local match = false
        if src:sub(1, 1) == "=" then
            realPath = game
            s = 2
        else
            runningTest = src:sub(2, e and e - 1 or -1)
            for _, v in pairs(getnilinstances()) do
                if v.Name == runningTest then
                    realPath = v
                    break
                end
            end
            s = #runningTest + 1
        end
        if realPath then
            e = src:sub(s, -1):find("%.")
            local i = 0
            repeat
                i += 1
                if not e then
                    runningTest = src:sub(s, -1)
                    local test = realPath.FindFirstChild(realPath, runningTest)
                    if test then
                        realPath = test
                    end
                    match = true
                else
                    runningTest = src:sub(s, e)
                    local test = realPath.FindFirstChild(realPath, runningTest)
                    local yeOld = e
                    if test then
                        realPath = test
                        s = e + 2
                        e = src:sub(e + 2, -1):find("%.")
                        e = e and e + yeOld or e
                    else
                        e = src:sub(e + 2, -1):find("%.")
                        e = e and e + yeOld or e
                    end
                end
            until match or i >= 50
        end
        return realPath
    end
    
    --- schedules the provided function (and calls it with any args after)
    function schedule(f, ...)
        table.insert(scheduled, { f, ... })
    end
    
    --- yields the current thread until the scheduler gives the ok
    function scheduleWait()
        local thread = coroutine.running()
        schedule(function()
            coroutine.resume(thread)
        end)
        coroutine.yield()
    end
    
    --- the big (well tbh small now) boi task scheduler himself, handles p much anything as quicc as possible
    function taskscheduler()
        if not toggle then
            scheduled = {}
            return
        end
        if #scheduled > 1000 then
            table.remove(scheduled, #scheduled)
        end
        if #scheduled > 0 then
            local currentf = scheduled[1]
            table.remove(scheduled, 1)
            if type(currentf) == "table" and type(currentf[1]) == "function" then
                pcall(unpack(currentf))
            end
        end
    end
    
    --- Handles remote logs
    function remoteHandler(hookfunction, methodName, remote, args, funcInfo, calling, returnValue)
        local validInstance, validClass = pcall(function()
            return remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction")
        end)
        if validInstance and validClass then
            local func = funcInfo.func
            if not calling then
                _, calling = pcall(getScriptFromSrc, funcInfo.source)
            end
            coroutine.wrap(function()
                if remoteSignals[remote] then
                    remoteSignals[remote]:Fire(args)
                end
            end)()
            if autoblock then
                if excluding[remote] then
                    return
                end
                if not history[remote] then
                    history[remote] = { badOccurances = 0, lastCall = tick() }
                end
                if tick() - history[remote].lastCall < 1 then
                    history[remote].badOccurances += 1
                    return
                else
                    history[remote].badOccurances = 0
                end
                if history[remote].badOccurances > 3 then
                    excluding[remote] = true
                    return
                end
                history[remote].lastCall = tick()
            end
            local functionInfoStr
            local src
            if func and islclosure(func) then
                local functionInfo = {}
                functionInfo.info = funcInfo
                pcall(function()
                    functionInfo.constants = debug.getconstants(func)
                end)
                pcall(function()
                    functionInfoStr = v2v({ functionInfo = functionInfo })
                end)
                pcall(function()
                    if type(calling) == "userdata" then
                        src = calling
                    end
                end)
            end
            if methodName:lower() == "fireserver" then
                newRemote(
                    "event",
                    remote.Name,
                    args,
                    remote,
                    functionInfoStr,
                    (blocklist[remote] or blocklist[remote.Name]),
                    src
                )
            elseif methodName:lower() == "invokeserver" then
                newRemote(
                    "function",
                    remote.Name,
                    args,
                    remote,
                    functionInfoStr,
                    (blocklist[remote] or blocklist[remote.Name]),
                    src,
                    returnValue
                )
            end
        end
    end
    
    --- Used for hookfunction
    function hookRemote(remoteType, remote, ...)
        if typeof(remote) == "Instance" then
            local args = { ... }
            local validInstance, remoteName = pcall(function()
                return remote.Name
            end)
            if validInstance and not (blacklist[remote] or blacklist[remoteName]) then
                local funcInfo = {}
                local calling
                if funcEnabled then
                    funcInfo = debug.getinfo(4) or funcInfo
                    calling = useGetCallingScript and getcallingscript() or nil
                end
                if recordReturnValues and remoteType == "RemoteFunction" then
                    local thread = coroutine.running()
                    local args = { ... }
                    task.defer(function()
                        local returnValue
                        if remoteHooks[remote] then
                            args = { remoteHooks[remote](unpack(args)) }
                            returnValue = originalFunction(remote, unpack(args))
                        else
                            returnValue = originalFunction(remote, unpack(args))
                        end
                        schedule(
                            remoteHandler,
                            true,
                            remoteType == "RemoteEvent" and "fireserver" or "invokeserver",
                            remote,
                            args,
                            funcInfo,
                            calling,
                            returnValue
                        )
                        if blocklist[remote] or blocklist[remoteName] then
                            coroutine.resume(thread)
                        else
                            coroutine.resume(thread, unpack(returnValue))
                        end
                    end)
                else
                    schedule(
                        remoteHandler,
                        true,
                        remoteType == "RemoteEvent" and "fireserver" or "invokeserver",
                        remote,
                        args,
                        funcInfo,
                        calling
                    )
                    if blocklist[remote] or blocklist[remoteName] then
                        return
                    end
                end
            end
        end
        if recordReturnValues and remoteType == "RemoteFunction" then
            return coroutine.yield()
        elseif remoteType == "RemoteEvent" then
            if remoteHooks[remote] then
                return originalEvent(remote, remoteHooks[remote](...))
            end
            return originalEvent(remote, ...)
        else
            if remoteHooks[remote] then
                return originalFunction(remote, remoteHooks[remote](...))
            end
            return originalFunction(remote, ...)
        end
    end
    
    local newnamecall = newcclosure(function(remote, ...)
        if typeof(remote) == "Instance" then
            local args = { ... }
            local methodName = getnamecallmethod()
            local validInstance, remoteName = pcall(function()
                return remote.Name
            end)
            if
                validInstance
                and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
                and not (blacklist[remote] or blacklist[remoteName])
            then
                local funcInfo = {}
                local calling
                if funcEnabled then
                    funcInfo = debug.getinfo(3) or funcInfo
                    calling = useGetCallingScript and getcallingscript() or nil
                end
                if recordReturnValues and (methodName == "InvokeServer" or methodName == "invokeServer") then
                    local namecallThread = coroutine.running()
                    local args = { ... }
                    task.defer(function()
                        local returnValue
                        setnamecallmethod(methodName)
                        if remoteHooks[remote] then
                            args = { remoteHooks[remote](unpack(args)) }
                            returnValue = { original(remote, unpack(args)) }
                        else
                            returnValue = { original(remote, unpack(args)) }
                        end
                        coroutine.resume(namecallThread, unpack(returnValue))
                        coroutine.wrap(function()
                            schedule(remoteHandler, false, methodName, remote, args, funcInfo, calling, returnValue)
                        end)()
                    end)
                else
                    coroutine.wrap(function()
                        schedule(remoteHandler, false, methodName, remote, args, funcInfo, calling)
                    end)()
                end
            end
            if recordReturnValues and (methodName == "InvokeServer" or methodName == "invokeServer") then
                return coroutine.yield()
            elseif
                validInstance
                and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
                and (blocklist[remote] or blocklist[remoteName])
            then
                return nil
            elseif
                (not recordReturnValues or methodName ~= "InvokeServer" or methodName ~= "invokeServer")
                and validInstance
                and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
                and remoteHooks[remote]
            then
                return original(remote, remoteHooks[remote](...))
            else
                return original(remote, ...)
            end
        end
        return original(remote, ...)
    end, original)
    
    local newFireServer = newcclosure(function(...)
        return hookRemote("RemoteEvent", ...)
    end, originalEvent)
    
    local newInvokeServer = newcclosure(function(...)
        return hookRemote("RemoteFunction", ...)
    end, originalFunction)
    
    --- Toggles on and off the remote spy
    function toggleSpy()
        if not toggle then
            if hookmetamethod then
                local oldNamecall = hookmetamethod(game, "__namecall", newnamecall)
                original = original or function(...)
                    return oldNamecall(...)
                end
                _G.OriginalNamecall = original
            else
                gm = gm or getrawmetatable(game)
                original = original or function(...)
                    return gm.__namecall(...)
                end
                setreadonly(gm, false)
                if not original then
                    warn("SimpleSpy: namecall method not found!")
                    onToggleButtonClick()
                    return
                end
                gm.__namecall = newnamecall
                setreadonly(gm, true)
            end
            originalEvent = hookfunction(remoteEvent.FireServer, newFireServer)
            originalFunction = hookfunction(remoteFunction.InvokeServer, newInvokeServer)
        else
            if hookmetamethod then
                if original then
                    hookmetamethod(game, "__namecall", original)
                end
            else
                gm = gm or getrawmetatable(game)
                setreadonly(gm, false)
                gm.__namecall = original
                setreadonly(gm, true)
            end
            hookfunction(remoteEvent.FireServer, originalEvent)
            hookfunction(remoteFunction.InvokeServer, originalFunction)
        end
    end
    
    --- Toggles between the two remotespy methods (hookfunction currently = disabled)
    function toggleSpyMethod()
        toggleSpy()
        toggle = not toggle
    end
    
    --- Shuts down the remote spy
    function shutdown()
        if schedulerconnect then
            schedulerconnect:Disconnect()
        end
        for _, connection in pairs(connections) do
            coroutine.wrap(function()
                connection:Disconnect()
            end)()
        end
        SimpleSpy2:Destroy()
        hookfunction(remoteEvent.FireServer, originalEvent)
        hookfunction(remoteFunction.InvokeServer, originalFunction)
        if hookmetamethod then
            if original then
                hookmetamethod(game, "__namecall", original)
            end
        else
            gm = gm or getrawmetatable(game)
            setreadonly(gm, false)
            gm.__namecall = original
            setreadonly(gm, true)
        end
        _G.SimpleSpyExecuted = false
    end
    
    -- main
    if not _G.SimpleSpyExecuted then
        local succeeded, err = pcall(function()
            if not RunService:IsClient() then
                error("SimpleSpy cannot run on the server!")
            end
            if
                not hookfunction
                or not getrawmetatable
                or getrawmetatable and not getrawmetatable(game).__namecall
                or not setreadonly
            then
                local missing = {}
                if not hookfunction then
                    table.insert(missing, "hookfunction")
                end
                if not getrawmetatable then
                    table.insert(missing, "getrawmetatable")
                end
                if getrawmetatable and not getrawmetatable(game).__namecall then
                    table.insert(missing, "getrawmetatable(game).__namecall")
                end
                if not setreadonly then
                    table.insert(missing, "setreadonly")
                end
                shutdown()
                error(
                    "This environment does not support method hooks!\n(Your exploit is not capable of running SimpleSpy)\nMissing: "
                        .. table.concat(missing, ", ")
                )
            end
            _G.SimpleSpyShutdown = shutdown
            ContentProvider:PreloadAsync({
                "rbxassetid://6065821980",
                "rbxassetid://6065774948",
                "rbxassetid://6065821086",
                "rbxassetid://6065821596",
                ImageLabel,
                ImageLabel_2,
                ImageLabel_3,
            })
            -- if gethui then funcEnabled = false end
            onToggleButtonClick()
            RemoteTemplate.Parent = nil
            FunctionTemplate.Parent = nil
            codebox = Highlight.new(CodeBox)
            codebox:setRaw("")
            getgenv().SimpleSpy = SimpleSpy
            getgenv().getNil = function(name, class)
                for _, v in pairs(getnilinstances()) do
                    if v.ClassName == class and v.Name == name then
                        return v
                    end
                end
            end
            TextLabel:GetPropertyChangedSignal("Text"):Connect(scaleToolTip)
            -- TopBar.InputBegan:Connect(onBarInput)
            MinimizeButton.MouseButton1Click:Connect(toggleMinimize)
            MaximizeButton.MouseButton1Click:Connect(toggleSideTray)
            Simple.MouseButton1Click:Connect(onToggleButtonClick)
            CloseButton.MouseEnter:Connect(onXButtonHover)
            CloseButton.MouseLeave:Connect(onXButtonUnhover)
            Simple.MouseEnter:Connect(onToggleButtonHover)
            Simple.MouseLeave:Connect(onToggleButtonUnhover)
            CloseButton.MouseButton1Click:Connect(shutdown)
            table.insert(connections, UserInputService.InputBegan:Connect(backgroundUserInput))
            connectResize()
            SimpleSpy2.Enabled = true
            coroutine.wrap(function()
                wait(1)
                onToggleButtonUnhover()
            end)()
            schedulerconnect = RunService.Heartbeat:Connect(taskscheduler)
            if syn and syn.protect_gui then
                pcall(syn.protect_gui, SimpleSpy2)
            end
            bringBackOnResize()
            SimpleSpy2.Parent = --[[gethui and gethui() or]]
                CoreGui
            _G.SimpleSpyExecuted = true
            if not Players.LocalPlayer then
                Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
            end
            Mouse = Players.LocalPlayer:GetMouse()
            oldIcon = Mouse.Icon
            table.insert(connections, Mouse.Move:Connect(mouseMoved))
        end)
        if not succeeded then
            warn(
                "A fatal error has occured, SimpleSpy was unable to launch properly.\nPlease DM this error message to @exx#9394:\n\n"
                    .. tostring(err)
            )
            SimpleSpy2:Destroy()
            hookfunction(remoteEvent.FireServer, originalEvent)
            hookfunction(remoteFunction.InvokeServer, originalFunction)
            if hookmetamethod then
                if original then
                    hookmetamethod(game, "__namecall", original)
                end
            else
                setreadonly(gm, false)
                gm.__namecall = original
                setreadonly(gm, true)
            end
            return
        end
    else
        SimpleSpy2:Destroy()
        return
    end
    
    newButton("Copy Code", function()
        return "Click to copy code"
    end, function()
        setclipboard(codebox:getString())
        TextLabel.Text = "Copied successfully!"
    end)
    
    --- Copies the source script (that fired the remote)
    newButton("Copy Remote", function()
        return "Click to copy the path of the remote"
    end, function()
        if selected then
            setclipboard(v2s(selected.Remote.remote))
            TextLabel.Text = "Copied!"
        end
    end)
    
    -- Executes the contents of the codebox through loadstring
    newButton("Run Code", function()
        return "Click to execute code"
    end, function()
        local orText = "Click to execute code"
        TextLabel.Text = "Executing..."
        local succeeded = pcall(function()
            return loadstring(codebox:getString())()
        end)
        if succeeded then
            TextLabel.Text = "Executed successfully!"
        else
            TextLabel.Text = "Execution error!"
        end
    end)
    
    --- Gets the calling script (not super reliable but w/e)
    newButton("Get Script", function()
        return "Click to copy calling script to clipboard\nWARNING: Not super reliable, nil == could not find"
    end, function()
        if selected then
            setclipboard(SimpleSpy:ValueToString(selected.Source))
            TextLabel.Text = "Done!"
        end
    end)
    
    --- Decompiles the script that fired the remote and puts it in the code box
    newButton("Function Info", function()
        return "Click to view calling function information"
    end, function()
        if selected then
            if selected.Function then
                codebox:setRaw(
                    "-- Calling function info\n-- Generated by the SimpleSpy serializer\n\n" .. tostring(selected.Function)
                )
            end
            TextLabel.Text = "Done! Function info generated by the SimpleSpy Serializer."
        end
    end)
    
    --- Clears the Remote logs
    newButton("Clr Logs", function()
        return "Click to clear logs"
    end, function()
        TextLabel.Text = "Clearing..."
        logs = {}
        for _, v in pairs(LogList:GetChildren()) do
            if not v:IsA("UIListLayout") then
                v:Destroy()
            end
        end
        codebox:setRaw("")
        selected = nil
        TextLabel.Text = "Logs cleared!"
    end)
    
    --- Excludes the selected.Log Remote from the RemoteSpy
    newButton("Exclude (i)", function()
        return "Click to exclude this Remote.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
    end, function()
        if selected then
            blacklist[selected.Remote.remote] = true
            TextLabel.Text = "Excluded!"
        end
    end)
    
    --- Excludes all Remotes that share the same name as the selected.Log remote from the RemoteSpy
    newButton("Exclude (n)", function()
        return "Click to exclude all remotes with this name.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
    end, function()
        if selected then
            blacklist[selected.Name] = true
            TextLabel.Text = "Excluded!"
        end
    end)
    
    --- clears blacklist
    newButton("Clr Blacklist", function()
        return "Click to clear the blacklist.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
    end, function()
        blacklist = {}
        TextLabel.Text = "Blacklist cleared!"
    end)
    
    --- Prevents the selected.Log Remote from firing the server (still logged)
    newButton("Block (i)", function()
        return "Click to stop this remote from firing.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
    end, function()
        if selected then
            if selected.Remote.remote then
                blocklist[selected.Remote.remote] = true
                TextLabel.Text = "Excluded!"
            else
                TextLabel.Text = "Error! Instance may no longer exist, try using Block (n)."
            end
        end
    end)
    
    --- Prevents all remotes from firing that share the same name as the selected.Log remote from the RemoteSpy (still logged)
    newButton("Block (n)", function()
        return "Click to stop remotes with this name from firing.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
    end, function()
        if selected then
            blocklist[selected.Name] = true
            TextLabel.Text = "Excluded!"
        end
    end)
    
    --- clears blacklist
    newButton("Clr Blocklist", function()
        return "Click to stop blocking remotes.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
    end, function()
        blocklist = {}
        TextLabel.Text = "Blocklist cleared!"
    end)
    
    --- Attempts to decompile the source script
    newButton("Decompile", function()
        return "Attempts to decompile source script\nWARNING: Not super reliable, nil == could not find"
    end, function()
        if selected then
            if selected.Source then
                codebox:setRaw(decompile(selected.Source))
                TextLabel.Text = "Done!"
            else
                TextLabel.Text = "Source not found!"
            end
        end
    end)
    
    newButton("Disable Info", function()
        return string.format(
            "[%s] Toggle function info (because it can cause lag in some games)",
            funcEnabled and "ENABLED" or "DISABLED"
        )
    end, function()
        funcEnabled = not funcEnabled
        TextLabel.Text = string.format(
            "[%s] Toggle function info (because it can cause lag in some games)",
            funcEnabled and "ENABLED" or "DISABLED"
        )
    end)
    
    newButton("Autoblock", function()
        return string.format(
            "[%s] [BETA] Intelligently detects and excludes spammy remote calls from logs",
            autoblock and "ENABLED" or "DISABLED"
        )
    end, function()
        autoblock = not autoblock
        TextLabel.Text = string.format(
            "[%s] [BETA] Intelligently detects and excludes spammy remote calls from logs",
            autoblock and "ENABLED" or "DISABLED"
        )
        history = {}
        excluding = {}
    end)
    
    newButton("CallingScript", function()
        return string.format(
            "[%s] [UNSAFE] Uses 'getcallingscript' to get calling script for Decompile and GetScript. Much more reliable, but opens up SimpleSpy to detection and/or instability.",
            useGetCallingScript and "ENABLED" or "DISABLED"
        )
    end, function()
        useGetCallingScript = not useGetCallingScript
        TextLabel.Text = string.format(
            "[%s] [UNSAFE] Uses 'getcallingscript' to get calling script for Decompile and GetScript. Much more reliable, but opens up SimpleSpy to detection and/or instability.",
            useGetCallingScript and "ENABLED" or "DISABLED"
        )
    end)
    
    newButton("KeyToString", function()
        return string.format(
            "[%s] [BETA] Uses an experimental new function to replicate Roblox's behavior when a non-primitive type is used as a key in a table. Still in development and may not properly reflect tostringed (empty) userdata.",
            keyToString and "ENABLED" or "DISABLED"
        )
    end, function()
        keyToString = not keyToString
        TextLabel.Text = string.format(
            "[%s] [BETA] Uses an experimental new function to replicate Roblox's behavior when a non-primitive type is used as a key in a table. Still in development and may not properly reflect tostringed (empty) userdata.",
            keyToString and "ENABLED" or "DISABLED"
        )
    end)
    
    newButton("ToggleReturnValues", function()
        return string.format(
            "[%s] [EXPERIMENTAL] Enables recording of return values for 'GetReturnValue'\n\nUse this method at your own risk, as it could be detectable.",
            recordReturnValues and "ENABLED" or "DISABLED"
        )
    end, function()
        recordReturnValues = not recordReturnValues
        TextLabel.Text = string.format(
            "[%s] [EXPERIMENTAL] Enables recording of return values for 'GetReturnValue'\n\nUse this method at your own risk, as it could be detectable.",
            recordReturnValues and "ENABLED" or "DISABLED"
        )
    end)
    
    newButton("GetReturnValue", function()
        return "[Experimental] If 'ReturnValues' is enabled, this will show the recorded return value for the RemoteFunction (if available)."
    end, function()
        if selected then
            codebox:setRaw(SimpleSpy:ValueToVar(selected.ReturnValue, "returnValue"))
        end
    end)
end)

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Copy CFrame")
Section:NewButton("Copy", " ", function()
    local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    setclipboard(tostring(CF))

    local args = {
        [1] = "Success",
        [2] = "NONAME HUB",
        [3] = "Copy CFrame Success"
    }  
    game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent:FireServer(unpack(args))
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Dark Dev")
Section:NewButton("Click", " ", function() 
-- Cloneref support (adds support for JJsploit/Temple/Electron and other sploits that don't have cloneref or really shit versions of it.)
loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Dark-Dev-V3/main/CloneRef.lua", true))()

-- Dex Bypasses
loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Dark-Dev-V3/main/Bypasses.lua", true))()

-- Dex with CloneRef Support (made as global)
getgenv().Bypassed_Dex = game:GetObjects("rbxassetid://9352453730")[1]

local charset = {}
for i = 48,  57 do table.insert(charset, string.char(i)) end
for i = 65,  90 do table.insert(charset, string.char(i)) end
for i = 97, 122 do table.insert(charset, string.char(i)) end
function RandomCharacters(length)
    if length > 0 then
        return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]
    else
        return ""
    end
end

Bypassed_Dex.Name = RandomCharacters(math.random(5, 20))
if gethui then
    Bypassed_Dex.Parent = gethui();
elseif syn and syn.protect_gui then
    syn.protect_gui(Bypassed_Dex);
    Bypassed_Dex.Parent = cloneref(game:GetService("CoreGui"))
else
    Bypassed_Dex.Parent = cloneref(game:GetService("CoreGui"))
end

local function Load(Obj, Url)
    local function GiveOwnGlobals(Func, Script)
        local Fenv = {}
        local RealFenv = {script = Script}
        local FenvMt = {}
        function FenvMt:__index(b)
            if RealFenv[b] == nil then
                return getfenv()[b]
            else
                return RealFenv[b]
            end
        end
        function FenvMt:__newindex(b, c)
            if RealFenv[b] == nil then
                getfenv()[b] = c
            else
                RealFenv[b] = c
            end
        end
        setmetatable(Fenv, FenvMt)
        setfenv(Func, Fenv)
        return Func
    end
    
    local function LoadScripts(Script)
        if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
            task.spawn(GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script))
        end
        for _,v in ipairs(Script:GetChildren()) do
            LoadScripts(v)
        end
    end
    
    LoadScripts(Obj)
end

Load(Bypassed_Dex)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Vehicle Fly")
Section:NewButton("Fly / Car fly (Z)", "vehicle fly | Stop Z", function(CARFLY) 
flying = (CARFLY)
repeat wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 500
local speed = 0
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = false
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+125.0+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-250
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "z" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
wait(5)
hint:Destroy()
end)
Fly()
end)

------------------------------------------------------------------------------------------

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

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Server Hop")

Section:NewButton("Click", " ", function() 
    Time = 0.5 -- seconds
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

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Rejoin")

Section:NewButton("Click", "ออกเข้าใหม่", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/blox-fruit-fake-level-/main/Rejoin%20Game.lua"))() end)

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Game")

local Section = Tab:NewSection("Sell")

Section:NewButton("Sell All (1)", "", function()
local args = {
    [1] = "Diamond",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "gold",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Iron",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "rock",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Wood",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Coal",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Ruby",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Meat",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Steak",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Vegetable",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Fish",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "grape",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "strawberry",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Woodpose",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "bc_banana",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "melon",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "chicken",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Meat_s",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Meat_l",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "orange",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Shark",
    [2] = "1"
}

game:GetService("ReplicatedStorage").WorldMarket_Remotes.RemoteEvent:FireServer(unpack(args))
end)

local Section = Tab:NewSection("CAR")

local Section = Tab:NewSection("Vehicle Speed")
Section:NewButton("Speed Car", "", function()
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local Venyx = library.new("Vehicle Speed Changer Script | NONAME HUB 4.0 | By:peatchXD#6075", 5013109572)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local Page = Venyx:addPage("Vehicle", 8356815386)
local UI = Page:addSection("UI")
local usageSection = Page:addSection("Usage")
local flightSection = Page:addSection("Flight")
local flightEnabled = false
local flightSpeed = 1
local velocityEnabled = false;

local function GetVehicleFromDescendant(Descendant)
	return
		Descendant:FindFirstAncestor(LocalPlayer.Name .. "\'s Car") or
		(Descendant:FindFirstAncestor("Body") and Descendant:FindFirstAncestor("Body").Parent) or
		(Descendant:FindFirstAncestor("Misc") and Descendant:FindFirstAncestor("Misc").Parent) or
		Descendant:FindFirstAncestorWhichIsA("Model")
end

local function TeleportVehicle(CoordinateFrame: CFrame)
	local Parent = LocalPlayer.Character.Parent
	local Vehicle = GetVehicleFromDescendant(LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").SeatPart)
	LocalPlayer.Character.Parent = Vehicle
	local success, response = pcall(function()
		return Vehicle:SetPrimaryPartCFrame(CoordinateFrame)
	end)
	if not success then
		return Vehicle:MoveTo(CoordinateFrame.Position)
	end
end

UI:addKeybind("Toggle Keybind", Enum.KeyCode.F, function()
	print("Activated Keybind")
	Venyx:toggle()
end, function()
	print("Changed Keybind")
end)

usageSection:addToggle("Keybinds Active", velocityEnabled, function(v) velocityEnabled = v end)
flightSection:addToggle("Enabled", false, function(v) flightEnabled = v end)
flightSection:addSlider("Speed", 100, 0, 800, function(v) flightSpeed = v / 100 end)
local defaultCharacterParent 
RunService.Stepped:Connect(function()
	local Character = LocalPlayer.Character
	if flightEnabled == true then
		if Character and typeof(Character) == "Instance" then
			local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
			if Humanoid and typeof(Humanoid) == "Instance" then
				local SeatPart = Humanoid.SeatPart
				if SeatPart and typeof(SeatPart) == "Instance" and SeatPart:IsA("VehicleSeat") then
					local Vehicle = GetVehicleFromDescendant(SeatPart)
					if Vehicle and Vehicle:IsA("Model") then
						Character.Parent = Vehicle
						if not Vehicle.PrimaryPart then
							if SeatPart.Parent == Vehicle then
								Vehicle.PrimaryPart = SeatPart
							else
								Vehicle.PrimaryPart = Vehicle:FindFirstChildWhichIsA("BasePart")
							end
						end
						local PrimaryPartCFrame = Vehicle:GetPrimaryPartCFrame()
						Vehicle:SetPrimaryPartCFrame(CFrame.new(PrimaryPartCFrame.Position, PrimaryPartCFrame.Position + workspace.CurrentCamera.CFrame.LookVector) * (UserInputService:GetFocusedTextBox() and CFrame.new(0, 0, 0) or CFrame.new((UserInputService:IsKeyDown(Enum.KeyCode.D) and flightSpeed) or (UserInputService:IsKeyDown(Enum.KeyCode.A) and -flightSpeed) or 0, (UserInputService:IsKeyDown(Enum.KeyCode.E) and flightSpeed / 2) or (UserInputService:IsKeyDown(Enum.KeyCode.Q) and -flightSpeed / 2) or 0, (UserInputService:IsKeyDown(Enum.KeyCode.S) and flightSpeed) or (UserInputService:IsKeyDown(Enum.KeyCode.W) and -flightSpeed) or 0)))
						SeatPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
						SeatPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					end
				end
			end
		end
	else
		if Character and typeof(Character) == "Instance" then
			Character.Parent = defaultCharacterParent or Character.Parent
			defaultCharacterParent = Character.Parent
		end
	end
end)
local speedSection = Page:addSection("Acceleration")
local velocityMult = 0.025;
speedSection:addSlider("Multiplier (Thousandths)", 25, 0, 50, function(v) velocityMult = v / 1000; end)
local velocityEnabledKeyCode = Enum.KeyCode.W;
speedSection:addKeybind("Velocity Enabled", velocityEnabledKeyCode, function()
	if not velocityEnabled then
		return
	end
	while UserInputService:IsKeyDown(velocityEnabledKeyCode) do
		task.wait(0)
		local Character = LocalPlayer.Character
		if Character and typeof(Character) == "Instance" then
			local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
			if Humanoid and typeof(Humanoid) == "Instance" then
				local SeatPart = Humanoid.SeatPart
				if SeatPart and typeof(SeatPart) == "Instance" and SeatPart:IsA("VehicleSeat") then
					SeatPart.AssemblyLinearVelocity *= Vector3.new(1 + velocityMult, 1, 1 + velocityMult)
				end
			end
		end
		if not velocityEnabled then
			break
		end
	end
end, function(v) velocityEnabledKeyCode = v.KeyCode end)
local decelerateSelection = Page:addSection("Deceleration")
local qbEnabledKeyCode = Enum.KeyCode.S
local velocityMult2 = 150e-3
decelerateSelection:addSlider("Brake Force (Thousandths)", velocityMult2*1e3, 0, 300, function(v) velocityMult2 = v / 1000; end)
decelerateSelection:addKeybind("Quick Brake Enabled", qbEnabledKeyCode, function()
	if not velocityEnabled then
		return
	end
	while UserInputService:IsKeyDown(qbEnabledKeyCode) do
		task.wait(0)
		local Character = LocalPlayer.Character
		if Character and typeof(Character) == "Instance" then
			local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
			if Humanoid and typeof(Humanoid) == "Instance" then
				local SeatPart = Humanoid.SeatPart
				if SeatPart and typeof(SeatPart) == "Instance" and SeatPart:IsA("VehicleSeat") then
					SeatPart.AssemblyLinearVelocity *= Vector3.new(1 - velocityMult2, 1, 1 - velocityMult2)
				end
			end
		end
		if not velocityEnabled then
			break
		end
	end
end, function(v) qbEnabledKeyCode = v.KeyCode end)
decelerateSelection:addKeybind("Stop the Vehicle", Enum.KeyCode.P, function(v)
	if not velocityEnabled then
		return
	end
	local Character = LocalPlayer.Character
	if Character and typeof(Character) == "Instance" then
		local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
		if Humanoid and typeof(Humanoid) == "Instance" then
			local SeatPart = Humanoid.SeatPart
			if SeatPart and typeof(SeatPart) == "Instance" and SeatPart:IsA("VehicleSeat") then
				SeatPart.AssemblyLinearVelocity *= Vector3.new(0, 0, 0)
				SeatPart.AssemblyAngularVelocity *= Vector3.new(0, 0, 0)
			end
		end
	end
end)
local springSection = Page:addSection("Springs")
springSection:addToggle("Visible", false, function(v)
	local Character = LocalPlayer.Character
	if Character and typeof(Character) == "Instance" then
		local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
		if Humanoid and typeof(Humanoid) == "Instance" then
			local SeatPart = Humanoid.SeatPart
			if SeatPart and typeof(SeatPart) == "Instance" and SeatPart:IsA("VehicleSeat") then
				local Vehicle = GetVehicleFromDescendant(SeatPart)
				for _, SpringConstraint in pairs(Vehicle:GetDescendants()) do
					if SpringConstraint:IsA("SpringConstraint") then
						SpringConstraint.Visible = v
					end
				end
			end
		end
	end
end)
repeat
	task.wait(0)
until game:IsLoaded() and game.PlaceId > 0
if game.PlaceId == 3351674303 then
	local drivingEmpirePage = Venyx:addPage("Wayfort", 8357222903)
	local dealershipSection = drivingEmpirePage:addSection("Vehicle Dealership")
	local dealershipList = {}
	for index, value in pairs(workspace:WaitForChild("Game"):WaitForChild("Dealerships"):WaitForChild("Dealerships"):GetChildren()) do
		table.insert(dealershipList, value.Name)
	end
	dealershipSection:addDropdown("Dealership", dealershipList, function(v)
		game:GetService("ReplicatedStorage").Remotes.Location:FireServer("Enter", v)
	end)
elseif game.PlaceId == 891852901 then
	local greenvillePage = Venyx:addPage("Greenville", 8360925727)
elseif game.PlaceId == 54865335 then
	local ultimateDrivingPage = Venyx:addPage("Westover", 8360954483)
elseif game.PlaceId == 5232896677 then
	local pacificoPage = Venyx:addPage("Pacifico", 3028235557)
end
local infoPage = Venyx:addPage("Information", 8356778308)
local discordSection = infoPage:addSection("Discord")
discordSection:addButton(syn and "Join the Discord server" or "Copy Discord Link", function()
	if syn then
		syn.request({
			Url = "http://127.0.0.1:6463/rpc?v=1",
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json",
				["Origin"] = "https://discord.com"
			},
			Body = game:GetService("HttpService"):JSONEncode({
				cmd = "INVITE_BROWSER",
				args = {
					code = "CRmfvVz4eB"
				},
				nonce = game:GetService("HttpService"):GenerateGUID(false)
			}),
		})
		return
	end
	setclipboard("https://www.discord.com/invite/CRmfvVz4eB")
end)
end)

local Section = Tab:NewSection("Vehicle Fly")
Section:NewButton("Fly / Car fly (Z)", "vehicle fly | Stop Z", function(CARFLY) 
flying = (CARFLY)
repeat wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 500
local speed = 0
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = false
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+125.0+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-250
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "z" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
wait(5)
hint:Destroy()
end)
Fly()
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("BANK")

local Section = Tab:NewSection("New Bank")

Section:NewTextBox("Deposited", "Deposited / เติมเงิน / ฝากเงิน", function(Deposited)
local args = {
    [1] = 2,
    [2] = (Deposited)
}

game:GetService("ReplicatedStorage").BankEvent:FireServer(unpack(args))
end)

Section:NewTextBox("Withdrawn", "Withdrawn / ถอนเงิน", function(Withdrawn)
local args = {
    [1] = 3,
    [2] = (Withdrawn)
}

game:GetService("ReplicatedStorage").BankEvent:FireServer(unpack(args))
end)

local Section = Tab:NewSection("Old Bank")

Section:NewTextBox("Deposited", "Deposited / เติมเงิน / ฝากเงิน", function(Deposited)
local args = {
    [1] = (Deposited),
    [2] = "Deposit"
}

game:GetService("ReplicatedStorage").BankingRemotes.MainRemote:FireServer(unpack(args))

end)

Section:NewTextBox("Withdrawn", "Withdrawn / ถอนเงิน", function(Withdrawn)
local args = {
    [1] = (Withdrawn),
    [2] = "Withdraw"
}

game:GetService("ReplicatedStorage").BankingRemotes.MainRemote:FireServer(unpack(args))

end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("ATM")

Section:NewButton("ATM", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1723.98962, 29.6044712, 247.072174, 0.00375102949, 1.55979336e-08, -0.999992967, 2.33721154e-09, 1, 1.56068101e-08, 0.999992967, -2.39573672e-09, 0.00375102949)
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Auto Farm")

local Section = Tab:NewSection("Auto Farm")

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Knife", " ",function(Knifea)
    _G.Chicken = (Knifea) 
    _G.Banana = (Knifea) 
    _G.Cowa = (Knifea) 
    _G.Piga = (Knifea) 
    _G.Watermelon = (Knifea) 
    Knifes = (Knifea)
end)

spawn(function()
    while wait() do
    if Knifes then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Basket", " ",function(Basketa)
    _G.Strawberrya = (Basketa)
    _G.orangea = (Basketa)
    _G.Grapea = (Basketa)
    Basketae = (Basketa)
end)

spawn(function()
    while wait() do
    if Basketae then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Basket)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Chicken", " ",function(Chickenw)
    _G.Chicken = (Chickenw) 
    Chickens = (Chickenw)
end)

spawn(function()
	while wait() do
		if _G.Chicken then
      local tpcows = game:GetService("Workspace").chicken --copypath มา
      local part = tpcows:FindFirstChild("chicken") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.1)
		else
		end
	end
end)

spawn(function()
	while wait() do
		if _G.Chicken then
      local tpcows = game:GetService("Workspace").Ore --copypath มา
      local part = tpcows:FindFirstChild("chicken") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.1)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if Chickens then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Banana", " ",function(Bananaa)
    _G.Banana = (Bananaa) 
    Bananas = (Bananaa)
end)
  
spawn(function()
	while wait() do
		if _G.Banana then
      local tpcows = game:GetService("Workspace")["Ok it's by ZYX"] --copypath มา
      local part = tpcows:FindFirstChild("Ok it's by ZYX") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.1)
		else
		end
	end
end)

spawn(function()
	while wait() do
		if _G.Banana then
      local tpcows = game:GetService("Workspace").Ore --copypath มา
      local part = tpcows:FindFirstChild("Ok it's by ZYX") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.1)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if Bananas then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Fish", " ",function(Fishd)
    _G.Fish = (Fishd) 
    Fishs = (Fishd)
end)

spawn(function()
	while wait() do
		if _G.Fishad then
      local tpcows = game:GetService("Workspace").Fish --copypath มา
      local part = tpcows:FindFirstChild("Aye") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)
  
spawn(function()
	while wait() do
		if _G.Fish then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.740112, 27.2199955, -2527.43042, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.01)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(929.340088, 27.2199955, -2526.93042, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.01)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(903.840088, 27.2199955, -2527.33032, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.01)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(887.340088, 27.2199955, -2527.13037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.01)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(874.240112, 27.2199955, -2527.43042, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.01)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(861.640137, 27.2199955, -2527.27026, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.01)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if Fishs then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Rod)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Cow&Pig", " ",function(Cowpig)
    _G.Cowpiga = (Cowpig)
    Cowpigs = (Cowpig)
end)

spawn(function()
	while wait() do
		if _G.Cowpiga then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2858.85327, 29.1675148, 1525.0686, 0.765767932, 4.32655201e-09, 0.643117011, -5.07345597e-08, 1, 5.36828395e-08, -0.643117011, -7.37368566e-08, 0.765767932)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2863.3335, 29.1675148, 1529.77771, 0.721885264, 5.89956066e-08, 0.692012787, -1.08948335e-07, 1, 2.8399171e-08, -0.692012787, -9.58945847e-08, 0.721885264)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2868.76709, 29.1675148, 1535.43481, 0.720921636, 3.82764433e-08, 0.693016589, 6.37798125e-09, 1, -6.18664373e-08, -0.693016589, 4.90209011e-08, 0.720921636)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2875.12427, 29.1675148, 1541.94849, 0.710947573, 7.78873286e-08, 0.703244984, 5.65995084e-10, 1, -1.11326379e-07, -0.703244984, 7.95452522e-08, 0.710947573)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2880.25415, 29.1675148, 1547.13208, 0.710947573, -3.99631173e-09, 0.703244984, 3.56836019e-08, 1, -3.03917673e-08, -0.703244984, 4.67012704e-08, 0.710947573)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2886.34961, 29.1675148, 1553.35352, 0.71314472, -5.6555244e-08, 0.701016843, 3.94377224e-08, 1, 4.0556003e-08, -0.701016843, -1.27579203e-09, 0.71314472)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2892.5271, 29.1675148, 1559.78784, 0.71314472, 9.80738335e-08, 0.701016843, -1.0453801e-07, 1, -3.35556933e-08, -0.701016843, -4.93528383e-08, 0.71314472)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.64111, 29.1675148, 1567.01758, 0.713136613, -9.89418325e-09, 0.701025069, -1.03053255e-08, 1, 2.45972487e-08, -0.701025069, -2.4765491e-08, 0.713136613)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2906.72119, 29.1675148, 1572.38794, 0.686172485, -5.83559725e-08, 0.727438867, 6.967388e-09, 1, 7.36489909e-08, -0.727438867, -4.54675657e-08, 0.686172485)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2912.25879, 29.1675148, 1577.646, 0.690721571, -7.53624434e-08, 0.723120809, 1.51195021e-08, 1, 8.97762504e-08, -0.723120809, -5.10771656e-08, 0.690721571)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2918.5083, 29.165699, 1583.578, 0.692992508, 5.3999802e-08, 0.720944762, 1.12895222e-08, 1, -8.57532498e-08, -0.720944762, 6.75654803e-08, 0.692992508)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2857.88794, 55.3675308, 1525.77209, 0.717537403, 6.17280138e-09, 0.69652003, -3.64086117e-09, 1, -5.11162224e-09, -0.69652003, 1.1318475e-09, 0.717537403)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2862.52612, 55.3675308, 1530.57385, 0.717537403, -1.48934927e-08, 0.696519971, 1.0523685e-08, 1, 1.0541485e-08, -0.696519971, -2.33953079e-10, 0.717537403)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2867.97656, 55.3675308, 1536.22583, 0.708284318, 3.20340945e-08, 0.705927253, 3.81410672e-08, 1, -8.36471656e-08, -0.705927253, 8.61708003e-08, 0.708284318)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2874.19922, 55.364872, 1542.49744, 0.74332577, 9.13327813e-09, 0.668929636, 2.73517191e-08, 1, -4.40472583e-08, -0.668929636, 5.10378335e-08, 0.74332577)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2879.19409, 55.3332787, 1548.05237, 0.67472142, 2.97864862e-08, 0.738072515, 5.2313748e-08, 1, -8.81806201e-08, -0.738072515, 9.81086927e-08, 0.67472142)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2885.34448, 55.727356, 1553.91675, 0.761407495, 6.01291177e-08, 0.648273587, -4.84938401e-09, 1, -8.70570105e-08, -0.648273587, 6.31421315e-08, 0.761407495)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2891.90015, 55.3548241, 1560.15308, 0.686231792, -5.92765197e-08, 0.727382958, -1.53688173e-08, 1, 9.59921991e-08, -0.727382958, -7.70519151e-08, 0.686231792)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.1936, 56.0208092, 1567.02393, 0.686211646, -1.01178834e-07, 0.727401912, 3.91661992e-08, 1, 1.0214783e-07, -0.727401912, -4.1605464e-08, 0.686211646)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2905.29883, 55.3675308, 1573.58936, 0.706495702, -2.66512554e-08, 0.707717299, 6.92665267e-08, 1, -3.14889128e-08, -0.707717299, 7.12679054e-08, 0.706495702)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2910.78394, 55.8129578, 1578.84705, 0.688472271, -4.1427441e-08, 0.725262642, 7.69222552e-09, 1, 4.98185848e-08, -0.725262642, -2.87198301e-08, 0.688472271)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2917.66406, 55.8441429, 1584.55066, 0.759933829, -1.93244376e-09, 0.650000453, -2.00387422e-08, 1, 2.6400846e-08, -0.650000453, -3.30880887e-08, 0.759933829)
            wait(0.1)

            -- PIG -- 

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2889.38477, 29.1675148, 1494.63538, 0.68862325, -2.3486042e-09, 0.725119352, 4.5286499e-09, 1, -1.06179676e-09, -0.725119352, 4.01498967e-09, 0.68862325)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2894.15625, 29.1675148, 1499.59607, 0.730656564, -3.56594088e-09, 0.682745159, 6.4375183e-10, 1, 4.53401849e-09, -0.682745159, -2.87329205e-09, 0.730656564)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.22119, 29.3603821, 1505.02722, 0.730656505, 4.4598103e-08, 0.682745218, 3.08356043e-08, 1, -9.8321209e-08, -0.682745218, 9.28918951e-08, 0.730656505)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2904.45654, 29.4891224, 1509.80835, 0.722011089, -4.90994552e-08, 0.691881478, 6.87865267e-08, 1, -8.16869794e-10, -0.691881478, 4.818191e-08, 0.722011089)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2910.70752, 29.1675148, 1514.68811, 0.706639528, -9.23742771e-09, 0.707573771, 6.30086916e-08, 1, -4.98704225e-08, -0.707573771, 7.98237068e-08, 0.706639528)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2915.17896, 29.1675148, 1519.4342, 0.730675399, -7.65317854e-09, 0.682725012, 5.43785781e-08, 1, -4.69880419e-08, -0.682725012, 7.14586221e-08, 0.730675399)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2921.91187, 29.1675148, 1524.30566, 0.730675399, -5.15999652e-08, 0.682725012, 4.4258659e-08, 1, 2.82123125e-08, -0.682725012, 9.60245128e-09, 0.730675399)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2927.31128, 29.1675148, 1528.49963, 0.697702348, 8.27122904e-09, 0.716387808, -3.84636074e-08, 1, 2.59146216e-08, -0.716387808, -4.56355487e-08, 0.697702348)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2932.23389, 29.1675148, 1534.92017, 0.728541136, 5.36091305e-09, 0.685002089, -4.7999853e-09, 1, -2.72105205e-09, -0.685002089, -1.30560174e-09, 0.728541136)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2936.62866, 29.1675148, 1539.74316, 0.728533149, -2.2420533e-08, 0.685010552, -2.76620575e-08, 1, 6.21497875e-08, -0.685010552, -6.42269811e-08, 0.728533149)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2942.021, 29.1675148, 1545.44031, 0.686401188, -1.30437101e-08, 0.727223039, 5.27172572e-09, 1, 1.29605224e-08, -0.727223039, -5.06239761e-09, 0.686401188)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2947.68921, 29.1675148, 1549.92932, 0.695507526, 3.04344034e-08, 0.718518794, -2.91101472e-08, 1, -1.41792755e-08, -0.718518794, -1.10543947e-08, 0.695507526)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2889.31152, 55.3675423, 1494.46228, 0.720136404, -3.76313009e-10, 0.693832457, 2.41404745e-08, 1, -2.45132981e-08, -0.693832457, 3.44023654e-08, 0.720136404)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2894.10645, 55.8089943, 1499.40771, 0.722311199, -1.57991291e-08, 0.691568136, -2.46185183e-09, 1, 2.5416659e-08, -0.691568136, -2.00612753e-08, 0.722311199)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.9541, 55.3675308, 1505.45044, 0.722311199, -4.08790939e-08, 0.691568196, 3.07875752e-08, 1, 2.69545151e-08, -0.691568196, 1.82216042e-09, 0.722311199)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2905.3064, 55.7077103, 1509.11536, 0.700222909, -7.33156895e-08, 0.713924289, 9.55699875e-08, 1, 8.95808139e-09, -0.713924289, 6.19570812e-08, 0.700222909)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2910.71924, 55.3675308, 1514.42981, 0.702464819, 5.46331071e-11, 0.7117185, -1.34313458e-08, 1, 1.31799505e-08, -0.7117185, -1.88177882e-08, 0.702464819)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2915.61108, 55.6605186, 1519.26831, 0.702465117, 7.35180095e-08, 0.711718202, -3.46605145e-09, 1, -9.98755212e-08, -0.711718202, 6.76922198e-08, 0.702465117)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2921.80933, 55.3659439, 1523.78308, 0.702465057, 1.84043962e-08, 0.711718202, 5.15783043e-08, 1, -7.67668382e-08, -0.711718202, 9.06352398e-08, 0.702465057)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2926.82275, 55.3691177, 1528.78918, 0.702465117, -3.45787328e-08, 0.711718202, 7.36265093e-08, 1, -2.40844216e-08, -0.711718202, 6.9319789e-08, 0.702465117)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2932.26929, 55.3675308, 1534.81848, 0.70469451, 2.02896668e-08, 0.709510803, -7.22012228e-09, 1, -2.14255884e-08, -0.709510803, 9.97574023e-09, 0.70469451)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2936.98877, 55.3675308, 1539.50061, 0.704694569, 7.22769826e-08, 0.709510803, -7.84155816e-08, 1, -2.39854696e-08, -0.709510803, -3.87342745e-08, 0.704694569)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2942.26514, 55.3675308, 1544.92712, 0.719738603, 3.64504338e-09, 0.69424516, 2.47319187e-09, 1, -7.81437937e-09, -0.69424516, 7.341312e-09, 0.719738603)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2947.92188, 55.3675308, 1549.51392, 0.677455485, -1.57536064e-08, 0.735563815, 5.29720445e-09, 1, 1.65383156e-08, -0.735563815, -7.30754035e-09, 0.677455485)
            wait(0.1)
        else
		end
	end
end)

spawn(function()
    while wait() do
    if Cowpigs then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Cow", " ",function(Coww)
    _G.Cowa = (Coww) 
    Cows = (Coww)
end)

spawn(function()
	while wait() do
		if _G.Cowa then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2858.85327, 29.1675148, 1525.0686, 0.765767932, 4.32655201e-09, 0.643117011, -5.07345597e-08, 1, 5.36828395e-08, -0.643117011, -7.37368566e-08, 0.765767932)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2863.3335, 29.1675148, 1529.77771, 0.721885264, 5.89956066e-08, 0.692012787, -1.08948335e-07, 1, 2.8399171e-08, -0.692012787, -9.58945847e-08, 0.721885264)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2868.76709, 29.1675148, 1535.43481, 0.720921636, 3.82764433e-08, 0.693016589, 6.37798125e-09, 1, -6.18664373e-08, -0.693016589, 4.90209011e-08, 0.720921636)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2875.12427, 29.1675148, 1541.94849, 0.710947573, 7.78873286e-08, 0.703244984, 5.65995084e-10, 1, -1.11326379e-07, -0.703244984, 7.95452522e-08, 0.710947573)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2880.25415, 29.1675148, 1547.13208, 0.710947573, -3.99631173e-09, 0.703244984, 3.56836019e-08, 1, -3.03917673e-08, -0.703244984, 4.67012704e-08, 0.710947573)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2886.34961, 29.1675148, 1553.35352, 0.71314472, -5.6555244e-08, 0.701016843, 3.94377224e-08, 1, 4.0556003e-08, -0.701016843, -1.27579203e-09, 0.71314472)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2892.5271, 29.1675148, 1559.78784, 0.71314472, 9.80738335e-08, 0.701016843, -1.0453801e-07, 1, -3.35556933e-08, -0.701016843, -4.93528383e-08, 0.71314472)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.64111, 29.1675148, 1567.01758, 0.713136613, -9.89418325e-09, 0.701025069, -1.03053255e-08, 1, 2.45972487e-08, -0.701025069, -2.4765491e-08, 0.713136613)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2906.72119, 29.1675148, 1572.38794, 0.686172485, -5.83559725e-08, 0.727438867, 6.967388e-09, 1, 7.36489909e-08, -0.727438867, -4.54675657e-08, 0.686172485)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2912.25879, 29.1675148, 1577.646, 0.690721571, -7.53624434e-08, 0.723120809, 1.51195021e-08, 1, 8.97762504e-08, -0.723120809, -5.10771656e-08, 0.690721571)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2918.5083, 29.165699, 1583.578, 0.692992508, 5.3999802e-08, 0.720944762, 1.12895222e-08, 1, -8.57532498e-08, -0.720944762, 6.75654803e-08, 0.692992508)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2857.88794, 55.3675308, 1525.77209, 0.717537403, 6.17280138e-09, 0.69652003, -3.64086117e-09, 1, -5.11162224e-09, -0.69652003, 1.1318475e-09, 0.717537403)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2862.52612, 55.3675308, 1530.57385, 0.717537403, -1.48934927e-08, 0.696519971, 1.0523685e-08, 1, 1.0541485e-08, -0.696519971, -2.33953079e-10, 0.717537403)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2867.97656, 55.3675308, 1536.22583, 0.708284318, 3.20340945e-08, 0.705927253, 3.81410672e-08, 1, -8.36471656e-08, -0.705927253, 8.61708003e-08, 0.708284318)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2874.19922, 55.364872, 1542.49744, 0.74332577, 9.13327813e-09, 0.668929636, 2.73517191e-08, 1, -4.40472583e-08, -0.668929636, 5.10378335e-08, 0.74332577)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2879.19409, 55.3332787, 1548.05237, 0.67472142, 2.97864862e-08, 0.738072515, 5.2313748e-08, 1, -8.81806201e-08, -0.738072515, 9.81086927e-08, 0.67472142)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2885.34448, 55.727356, 1553.91675, 0.761407495, 6.01291177e-08, 0.648273587, -4.84938401e-09, 1, -8.70570105e-08, -0.648273587, 6.31421315e-08, 0.761407495)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2891.90015, 55.3548241, 1560.15308, 0.686231792, -5.92765197e-08, 0.727382958, -1.53688173e-08, 1, 9.59921991e-08, -0.727382958, -7.70519151e-08, 0.686231792)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.1936, 56.0208092, 1567.02393, 0.686211646, -1.01178834e-07, 0.727401912, 3.91661992e-08, 1, 1.0214783e-07, -0.727401912, -4.1605464e-08, 0.686211646)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2905.29883, 55.3675308, 1573.58936, 0.706495702, -2.66512554e-08, 0.707717299, 6.92665267e-08, 1, -3.14889128e-08, -0.707717299, 7.12679054e-08, 0.706495702)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2910.78394, 55.8129578, 1578.84705, 0.688472271, -4.1427441e-08, 0.725262642, 7.69222552e-09, 1, 4.98185848e-08, -0.725262642, -2.87198301e-08, 0.688472271)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2917.66406, 55.8441429, 1584.55066, 0.759933829, -1.93244376e-09, 0.650000453, -2.00387422e-08, 1, 2.6400846e-08, -0.650000453, -3.30880887e-08, 0.759933829)
            wait(0.1)
        else
		end
	end
end)

spawn(function()
    while wait() do
    if Cows then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Pig", " ",function(Piga)
    _G.Piga = (Piga) 
    Pigs = (Piga)
end)

spawn(function()
	while wait() do
		if _G.Piga then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2889.38477, 29.1675148, 1494.63538, 0.68862325, -2.3486042e-09, 0.725119352, 4.5286499e-09, 1, -1.06179676e-09, -0.725119352, 4.01498967e-09, 0.68862325)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2894.15625, 29.1675148, 1499.59607, 0.730656564, -3.56594088e-09, 0.682745159, 6.4375183e-10, 1, 4.53401849e-09, -0.682745159, -2.87329205e-09, 0.730656564)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.22119, 29.3603821, 1505.02722, 0.730656505, 4.4598103e-08, 0.682745218, 3.08356043e-08, 1, -9.8321209e-08, -0.682745218, 9.28918951e-08, 0.730656505)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2904.45654, 29.4891224, 1509.80835, 0.722011089, -4.90994552e-08, 0.691881478, 6.87865267e-08, 1, -8.16869794e-10, -0.691881478, 4.818191e-08, 0.722011089)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2910.70752, 29.1675148, 1514.68811, 0.706639528, -9.23742771e-09, 0.707573771, 6.30086916e-08, 1, -4.98704225e-08, -0.707573771, 7.98237068e-08, 0.706639528)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2915.17896, 29.1675148, 1519.4342, 0.730675399, -7.65317854e-09, 0.682725012, 5.43785781e-08, 1, -4.69880419e-08, -0.682725012, 7.14586221e-08, 0.730675399)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2921.91187, 29.1675148, 1524.30566, 0.730675399, -5.15999652e-08, 0.682725012, 4.4258659e-08, 1, 2.82123125e-08, -0.682725012, 9.60245128e-09, 0.730675399)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2927.31128, 29.1675148, 1528.49963, 0.697702348, 8.27122904e-09, 0.716387808, -3.84636074e-08, 1, 2.59146216e-08, -0.716387808, -4.56355487e-08, 0.697702348)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2932.23389, 29.1675148, 1534.92017, 0.728541136, 5.36091305e-09, 0.685002089, -4.7999853e-09, 1, -2.72105205e-09, -0.685002089, -1.30560174e-09, 0.728541136)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2936.62866, 29.1675148, 1539.74316, 0.728533149, -2.2420533e-08, 0.685010552, -2.76620575e-08, 1, 6.21497875e-08, -0.685010552, -6.42269811e-08, 0.728533149)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2942.021, 29.1675148, 1545.44031, 0.686401188, -1.30437101e-08, 0.727223039, 5.27172572e-09, 1, 1.29605224e-08, -0.727223039, -5.06239761e-09, 0.686401188)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2947.68921, 29.1675148, 1549.92932, 0.695507526, 3.04344034e-08, 0.718518794, -2.91101472e-08, 1, -1.41792755e-08, -0.718518794, -1.10543947e-08, 0.695507526)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2889.31152, 55.3675423, 1494.46228, 0.720136404, -3.76313009e-10, 0.693832457, 2.41404745e-08, 1, -2.45132981e-08, -0.693832457, 3.44023654e-08, 0.720136404)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2894.10645, 55.8089943, 1499.40771, 0.722311199, -1.57991291e-08, 0.691568136, -2.46185183e-09, 1, 2.5416659e-08, -0.691568136, -2.00612753e-08, 0.722311199)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2899.9541, 55.3675308, 1505.45044, 0.722311199, -4.08790939e-08, 0.691568196, 3.07875752e-08, 1, 2.69545151e-08, -0.691568196, 1.82216042e-09, 0.722311199)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2905.3064, 55.7077103, 1509.11536, 0.700222909, -7.33156895e-08, 0.713924289, 9.55699875e-08, 1, 8.95808139e-09, -0.713924289, 6.19570812e-08, 0.700222909)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2910.71924, 55.3675308, 1514.42981, 0.702464819, 5.46331071e-11, 0.7117185, -1.34313458e-08, 1, 1.31799505e-08, -0.7117185, -1.88177882e-08, 0.702464819)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2915.61108, 55.6605186, 1519.26831, 0.702465117, 7.35180095e-08, 0.711718202, -3.46605145e-09, 1, -9.98755212e-08, -0.711718202, 6.76922198e-08, 0.702465117)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2921.80933, 55.3659439, 1523.78308, 0.702465057, 1.84043962e-08, 0.711718202, 5.15783043e-08, 1, -7.67668382e-08, -0.711718202, 9.06352398e-08, 0.702465057)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2926.82275, 55.3691177, 1528.78918, 0.702465117, -3.45787328e-08, 0.711718202, 7.36265093e-08, 1, -2.40844216e-08, -0.711718202, 6.9319789e-08, 0.702465117)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2932.26929, 55.3675308, 1534.81848, 0.70469451, 2.02896668e-08, 0.709510803, -7.22012228e-09, 1, -2.14255884e-08, -0.709510803, 9.97574023e-09, 0.70469451)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2936.98877, 55.3675308, 1539.50061, 0.704694569, 7.22769826e-08, 0.709510803, -7.84155816e-08, 1, -2.39854696e-08, -0.709510803, -3.87342745e-08, 0.704694569)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2942.26514, 55.3675308, 1544.92712, 0.719738603, 3.64504338e-09, 0.69424516, 2.47319187e-09, 1, -7.81437937e-09, -0.69424516, 7.341312e-09, 0.719738603)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2947.92188, 55.3675308, 1549.51392, 0.677455485, -1.57536064e-08, 0.735563815, 5.29720445e-09, 1, 1.65383156e-08, -0.735563815, -7.30754035e-09, 0.677455485)
            wait(0.1)
        else
		end
	end
end)

spawn(function()
    while wait() do
    if Pigs then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Strawberry", " ",function(Strawberrye)
    _G.Strawberrya = (Strawberrye) 
    Strawberrys = (Strawberrye)
end)
  
spawn(function()
	while wait() do
		if _G.Strawberrya then
      local tpcows = game:GetService("Workspace").S --copypath มา
      local part = tpcows:FindFirstChild("S") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
	while wait() do
		if _G.Strawberrya then
      local tpcows = game:GetService("Workspace").Ore --copypath มา
      local part = tpcows:FindFirstChild("S") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if Strawberrys then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Basket)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Orange", " ",function(orangesa)
    _G.orangea = (orangesa) 
    oranges = (orangesa)
end)
  
spawn(function()
	while wait() do
		if _G.orangea then
      local tpcows = game:GetService("Workspace").orange --copypath มา
      local part = tpcows:FindFirstChild("orange") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
	while wait() do
		if _G.orangea then
      local tpcows = game:GetService("Workspace").Ore --copypath มา
      local part = tpcows:FindFirstChild("orange") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if oranges then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Basket)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Grape", " ",function(Grapee)
    _G.Grapea = (Grapee) 
    Grapes = (Grapee)
end)
  
spawn(function()
	while wait() do
		if _G.Grapea then
      local tpcows = game:GetService("Workspace").G --copypath มา
      local part = tpcows:FindFirstChild("G") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
	while wait() do
		if _G.Grapea then
      local tpcows = game:GetService("Workspace").Ore --copypath มา
      local part = tpcows:FindFirstChild("G") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if Grapes then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Basket)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Tree", " ",function(FallenTreea)
    _G.FallenTreew = (FallenTreea) 
    FallenTrees = (FallenTreea)
end)


spawn(function()
	while wait() do
		if _G.FallenTreew then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1641.47791, 133.521774, 2546.65234, 0.999357283, 1.17820012e-08, 0.0358464606, -1.20302088e-08, 1, 6.70850619e-09, -0.0358464606, -7.13543491e-09, 0.999357283)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1682.38123, 132.999954, 2547.75244, 0.999716878, 4.94636687e-08, -0.0237952061, -5.01732345e-08, 1, -2.92227327e-08, 0.0237952061, 3.04083407e-08, 0.999716878)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1712.89111, 132.999954, 2547.98462, 0.999941945, 9.47380627e-08, 0.0107744411, -9.51079926e-08, 1, 3.38219373e-08, -0.0107744411, -3.48447102e-08, 0.999941945)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1753.19788, 133.463104, 2549.29517, 0.994329929, -6.07228401e-08, 0.106338926, 6.09402946e-08, 1, 1.20444488e-09, -0.106338926, 5.28270983e-09, 0.994329929)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1772.54797, 132.999954, 2524.83545, 0.99309653, -4.46948007e-08, 0.117300034, 3.64890056e-08, 1, 7.21030986e-08, -0.117300034, -6.73251748e-08, 0.99309653)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1731.59766, 132.999954, 2522.73096, 0.999219358, -1.9814772e-08, -0.0395060778, 1.81176318e-08, 1, -4.33169838e-08, 0.0395060778, 4.25674145e-08, 0.999219358)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1702.48779, 133.536041, 2522.22046, 0.999847472, 2.54062655e-08, -0.017464973, -2.61960338e-08, 1, -4.49913529e-08, 0.017464973, 4.54420039e-08, 0.999847472)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1660.7981, 132.999954, 2521.7605, 0.999796689, 3.45392657e-08, 0.0201636367, -3.60163384e-08, 1, 7.28911047e-08, -0.0201636367, -7.36025072e-08, 0.999796689)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1648.55042, 132.99736, 2494.24927, 0.998649538, -3.83332122e-08, -0.0519524366, 3.38366846e-08, 1, -8.74304007e-08, 0.0519524366, 8.55544329e-08, 0.998649538)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1689.82202, 133.041351, 2494.73755, 0.999548435, -8.40841778e-08, -0.0300485026, 8.24478619e-08, 1, -5.56946631e-08, 0.0300485026, 5.31920783e-08, 0.999548435)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1719.63696, 132.999954, 2495.77148, 0.998804927, 6.22658121e-08, -0.0488749817, -6.07950312e-08, 1, 3.15792441e-08, 0.0488749817, -2.85701471e-08, 0.998804927)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1760.25049, 132.999954, 2497.31323, 0.999998987, 2.64035798e-08, 0.00140399998, -2.64720157e-08, 1, 4.87254397e-08, -0.00140399998, -4.87625584e-08, 0.999998987)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1784.5238, 133.437805, 2473.73682, 0.99999851, 2.9615661e-08, -0.00174246344, -2.9632492e-08, 1, -9.63388125e-09, 0.00174246344, 9.6855004e-09, 0.99999851)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1744.47522, 133.000107, 2471.49097, 0.997282445, -6.70278268e-08, 0.0736732855, 6.64466384e-08, 1, 1.03397717e-08, -0.0736732855, -5.4163305e-09, 0.997282445)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1713.05859, 132.997864, 2471.23047, 0.999475777, -4.92478804e-08, 0.0323750451, 4.51064572e-08, 1, 1.28650598e-07, -0.0323750451, -1.27122831e-07, 0.999475777)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1672.69678, 132.999954, 2470.66797, 0.999093771, -1.55850035e-08, -0.0425631404, 1.55164521e-08, 1, -1.94094274e-09, 0.0425631404, 1.27875488e-09, 0.999093771)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1642.80981, 132.998199, 2438.05347, 0.998302042, -1.28536382e-08, -0.0582494736, 1.28635813e-08, 1, -2.04264411e-10, 0.0582494736, -5.45379297e-10, 0.998302042)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1684.81055, 133.503281, 2438.75513, 0.998302042, -2.29625634e-08, -0.0582494736, 2.03001491e-08, 1, -4.62988545e-08, 0.0582494736, 4.50377691e-08, 0.998302042)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1714.49585, 133.429382, 2438.83716, 0.99859637, 9.25940356e-08, -0.0529650077, -9.16653491e-08, 1, 1.9963089e-08, 0.0529650077, -1.50800119e-08, 0.99859637)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1753.24878, 132.999954, 2441.28955, 0.999989569, -7.87356953e-08, 0.0045657251, 7.86496201e-08, 1, 1.90324201e-08, -0.0045657251, -1.86731288e-08, 0.999989569)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1750.60864, 132.999557, 2397.81128, 0.986720741, -1.12571897e-07, 0.162425876, 1.10628847e-07, 1, 2.1007228e-08, -0.162425876, -2.75927925e-09, 0.986720741)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1708.84131, 132.999954, 2396.84741, 0.999968171, -1.19601369e-08, -0.00797888078, 1.14033769e-08, 1, -6.98248002e-08, 0.00797888078, 6.97315912e-08, 0.999968171)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1680.07166, 132.999954, 2396.56812, 0.999901831, 3.25834506e-08, 0.0140096024, -3.38821842e-08, 1, 9.24659886e-08, -0.0140096024, -9.29315931e-08, 0.999901831)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1638.68811, 133.000015, 2395.11572, 0.991930306, -1.45961856e-08, -0.126784176, 1.80355624e-08, 1, 2.59798654e-08, 0.126784176, -2.80568404e-08, 0.991930306)
            wait(0.1)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if FallenTrees then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Pib)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Watermelon", " ",function(Watermelonsa)
    _G.Watermelon = (Watermelonsa) 
    Watermelons = (Watermelonsa)
end)
  
spawn(function()
	while wait() do
		if _G.Watermelon then
      local tpcows = game:GetService("Workspace").Watermelon --copypath มา
      local part = tpcows:FindFirstChild("Watermelon") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
	while wait() do
		if _G.Watermelon then
      local tpcows = game:GetService("Workspace").Ore --copypath มา
      local part = tpcows:FindFirstChild("Watermelon") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.01)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if Watermelons then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Knife)
    end)
    end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Ore", " ",function(Oree)
    _G.Ore = (Oree) 
    Ores = (Oree)
end)

spawn(function()
	while wait() do
		if _G.Ore then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2061.15894, -13.0347071, 3001.05518, 0.0144337518, 3.37911814e-08, 0.999895811, -3.52128171e-09, 1, -3.37438735e-08, -0.999895811, -3.03386427e-09, 0.0144337518)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2051.7959, -12.9115877, 3014.6416, 0.0144305676, -3.43313467e-08, 0.999895871, 1.83259434e-08, 1, 3.40704425e-08, -0.999895871, 1.78323791e-08, 0.0144305676)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2056.31909, -13.3439398, 3036.19995, -0.193834856, 7.81574183e-09, 0.98103416, 4.283417e-08, 1, 4.96428565e-10, -0.98103416, 4.21180104e-08, -0.193834856)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2047.61914, -13.074439, 3061.73511, 0.219975501, -2.67718292e-08, 0.975505412, 1.70397456e-08, 1, 2.36016149e-08, -0.975505412, 1.14305871e-08, 0.219975501)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2032.70911, -14.0260458, 3056.18433, 0.401729047, -1.7519632e-08, 0.91575855, 4.27103686e-08, 1, 3.94903665e-10, -0.91575855, 3.89537398e-08, 0.401729047)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2039.13525, -15.7262945, 3037.4353, 0.441604793, -4.78282445e-08, 0.897209704, -1.37773206e-08, 1, 6.00889365e-08, -0.897209704, -3.88967081e-08, 0.441604793)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2028.44629, -13.2816191, 3022.72046, -0.0955522731, 1.67661653e-08, 0.99542439, 1.81942039e-09, 1, -1.6668583e-08, -0.99542439, 2.18374333e-10, -0.0955522731)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2034.23694, -12.3971043, 3007.11743, -0.0671576187, -3.89911747e-08, 0.997742355, -4.05109155e-08, 1, 3.63526276e-08, -0.997742355, -3.79781007e-08, -0.0671576187)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2023.25635, -13.5295267, 3042.12476, 0.00505224708, -6.86510191e-08, 0.999987245, 4.44725501e-08, 1, 6.84272052e-08, -0.999987245, 4.41262706e-08, 0.00505224708)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2004.78394, -16.4807472, 3053.59082, 0.0490124337, -1.19439417e-10, 0.998798192, -4.75845918e-10, 1, 1.42933568e-10, -0.998798192, -4.8227955e-10, 0.0490124337)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2014.39478, -13.2315454, 3014.79419, -0.00755993789, 1.06613051e-07, 0.999971449, -3.61680392e-08, 1, -1.06889537e-07, -0.999971449, -3.69750808e-08, -0.00755993789)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1996.50391, -17.0247784, 3022.32202, -0.183816716, 6.97593805e-08, 0.982960522, 5.98363137e-10, 1, -7.08567569e-08, -0.982960522, -1.24364892e-08, -0.183816716)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1994.57593, -16.6644344, 3035.72583, 0.0990041122, -8.15776335e-09, 0.995087028, 3.96551947e-09, 1, 7.80349918e-09, -0.995087028, 3.17345838e-09, 0.0990041122)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1987.28442, -16.3494759, 3054.81274, 0.322639078, -2.71223644e-09, 0.946522057, -3.13541406e-08, 1, 1.35531e-08, -0.946522057, -3.40501458e-08, 0.322639078)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1970.01086, -17.5920525, 3051.77905, 0.343360841, -5.51025074e-08, 0.93920356, -7.48428732e-08, 1, 8.6031001e-08, -0.93920356, -9.98323699e-08, 0.343360841)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1977.8645, -16.2864246, 3032.68311, 0.427392393, 9.01559449e-09, 0.904066205, -9.31167534e-08, 1, 3.4048167e-08, -0.904066205, -9.87356401e-08, 0.427392393)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1981.42786, -16.5446358, 3020.87476, 0.480613589, 2.28363497e-08, 0.876932502, 5.56782354e-08, 1, -5.65563099e-08, -0.876932502, 7.60077867e-08, 0.480613589)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1985.90564, -17.0345707, 3007.56982, 0.573908448, 8.27396676e-08, 0.81891948, -2.55177266e-08, 1, -8.31520452e-08, -0.81891948, 2.68246971e-08, 0.573908448)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1969.52893, -15.2121859, 3010.85059, -0.0169136506, -6.8540146e-08, 0.999856949, 3.86275687e-08, 1, 6.92033737e-08, -0.999856949, 3.97925248e-08, -0.0169136506)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1960.5874, -16.4039497, 3035.21338, 0.244321793, 1.9143032e-08, 0.969694197, -4.72379682e-08, 1, -7.8393434e-09, -0.969694197, -4.38910632e-08, 0.244321793)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1958.47681, -19.5984688, 3022.45752, 0.48879835, -1.09173349e-07, 0.872396767, 7.76625768e-08, 1, 8.16280092e-08, -0.872396767, 2.78529431e-08, 0.48879835)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1967.12146, -15.3665934, 2992.83813, 0.219907477, 6.25524521e-09, 0.97552073, 1.45418833e-08, 1, -9.69032588e-09, -0.97552073, 1.63168838e-08, 0.219907477)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1957.37256, -13.1394014, 2977.59302, 0.294927955, -9.55534531e-08, 0.955519497, 2.33930741e-08, 1, 9.27811357e-08, -0.955519497, -5.01121189e-09, 0.294927955)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1978.04553, -13.0763807, 2970.99414, 0.123989247, 2.3008373e-09, 0.992283583, -4.37387371e-09, 1, -1.77219917e-09, -0.992283583, -4.12038936e-09, 0.123989247)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2001.20227, -16.5596504, 2950.69409, -0.151549056, -8.79380977e-08, 0.988449752, -1.37229144e-08, 1, 8.68616752e-08, -0.988449752, -4.00605826e-10, -0.151549056)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2026.31738, -16.5035801, 2965.94482, -0.237788275, 9.6470707e-08, 0.971316993, -3.75548055e-08, 1, -1.08513284e-07, -0.971316993, -6.22808045e-08, -0.237788275)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2037.03809, -16.2150288, 2961.83569, 0.0614910573, 1.7518994e-09, 0.998107612, -5.23772004e-09, 1, -1.43253731e-09, -0.998107612, -5.1397202e-09, 0.0614910573)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2033.32251, -16.3810291, 2946.78076, 0.0614875779, 1.90728429e-08, 0.998107851, -4.21718838e-08, 1, -1.65110379e-08, -0.998107851, -4.10768628e-08, 0.0614875779)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2050.33984, -16.5246067, 2972.69556, -0.145332947, 3.33686785e-08, 0.989382803, -3.71972e-08, 1, -3.91907555e-08, -0.989382803, -4.24979802e-08, -0.145332947)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2050.27515, -16.1789856, 2958.03125, -0.145455509, 7.96523096e-08, 0.989364803, 3.25962972e-08, 1, -7.57162582e-08, -0.989364803, 2.12362803e-08, -0.145455509)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2061.50903, -16.4407921, 2944.93335, -0.0518090986, -1.00016685e-07, 0.998656988, -4.020389e-08, 1, 9.80654562e-08, -0.998656988, -3.50692133e-08, -0.0518090986)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1972.22693, -12.5150576, 2954.37695, -0.195116252, 2.98082448e-08, 0.980780125, 3.08326129e-08, 1, -2.42585472e-08, -0.980780125, 2.55067771e-08, -0.195116252)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1976.69287, -12.7793903, 2971.56885, 0.105024353, -3.70882383e-08, 0.994469643, -3.2683662e-08, 1, 4.07461584e-08, -0.994469643, -3.67822501e-08, 0.105024353)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1970.90027, -12.3251314, 2939.52881, -0.101872593, 5.52803181e-09, 0.994797468, 6.48364562e-08, 1, 1.08265863e-09, -0.994797468, 6.46094378e-08, -0.101872593)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1952.83716, -12.3283291, 2930.24048, -0.280436546, 6.90227431e-09, 0.959872544, 3.03990397e-08, 1, 1.69056624e-09, -0.959872544, 2.9653302e-08, -0.280436546)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1957.02161, -12.4827442, 2960.2688, -0.160976425, 4.01869009e-08, 0.986958265, 1.94535357e-08, 1, -3.75449929e-08, -0.986958265, 1.31559696e-08, -0.160976425)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1958.2124, -13.9853067, 2976.83008, -0.114278987, -3.1906719e-08, 0.993448675, 3.25293392e-08, 1, 3.58590633e-08, -0.993448675, 3.64141677e-08, -0.114278987)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1944.38745, -12.4657946, 2942.09253, 0.170693979, -1.2357245e-08, 0.985324085, -1.03231921e-08, 1, 1.4329653e-08, -0.985324085, -1.26176758e-08, 0.170693979)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1933.2207, -13.1025763, 2953.43262, 0.086466074, 7.01147185e-09, 0.996254802, -3.40747377e-08, 1, -4.08044531e-09, -0.996254802, -3.35943007e-08, 0.086466074)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1933.41284, -12.5951843, 2970.54346, -0.0391452834, 4.91051146e-08, 0.999233544, -7.04527494e-08, 1, -5.19027878e-08, -0.999233544, -7.24305025e-08, -0.0391452834)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1916.61523, -12.6293945, 2961.62476, 0.289556235, -3.35093695e-08, 0.957161009, 6.48474909e-08, 1, 1.53917412e-08, -0.957161009, 5.76127128e-08, 0.289556235)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1921.255, -12.4140453, 2941.28369, 0.0988657475, 3.74219944e-09, 0.995100796, 1.7156685e-08, 1, -5.46518297e-09, -0.995100796, 1.76129493e-08, 0.0988657475)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1935.19348, -12.3133183, 2919.71436, -0.357799798, -7.65083215e-08, 0.933798313, -3.43906734e-08, 1, 6.87550425e-08, -0.933798313, -7.513413e-09, -0.357799798)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1945.0675, -12.7404022, 2905.69214, -0.9434672, -9.37217095e-08, 0.3314659, -6.96429723e-08, 1, 8.45210621e-08, -0.3314659, 5.66585783e-08, -0.9434672)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1907.02722, -12.8056259, 2915.4978, -0.555477202, -6.58046702e-08, 0.831531763, -5.4825402e-09, 1, 7.54742615e-08, -0.831531763, 3.73653251e-08, -0.555477202)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1897.43591, -0.999360144, 2936.56494, -0.791052878, 4.35281358e-08, 0.611747742, -2.07621031e-08, 1, -9.80012729e-08, -0.611747742, -9.02253561e-08, -0.791052878)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1919.46448, -2.83312702, 2897.23462, -0.732107103, 4.04972411e-08, 0.681189537, -3.81062826e-08, 1, -1.00405423e-07, -0.681189537, -9.94651259e-08, -0.732107103)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1958.48254, -16.370245, 2880.27856, -0.659946442, -1.8765471e-08, 0.751312613, -1.53498014e-08, 1, 1.14937828e-08, -0.751312613, -3.94721766e-09, -0.659946442)
            wait(0.1)
		else
		end
	end
end)

spawn(function()
    while wait() do
    if Ores then
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Pickaxe)
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

local Section = Tab:NewSection("Tree")

Section:NewButton("Remove All Tree", "", function()
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "(Animated) Realistic tree" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Lush Tree" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Realistic Tree" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Tree3" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "PalmTree/Coconut" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Sakura tree" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Parking" then
        v:Destroy()
    end
end
end)

local Section = Tab:NewSection("Bypass")

Section:NewButton("Anti Fly,Speed", "", function()
game:GetService("Players").LocalPlayer.PlayerGui.AutoDeleteCar.Client.Message.AnnounceSound.Volume = 0
game:GetService("Players").LocalPlayer.PlayerGui.AutoDeleteCar.Enabled = false

game:GetService("StarterPlayer").StarterCharacterScripts["Anti - fly"].Disabled = true
game:GetService("StarterPlayer").StarterCharacterScripts["Anti - speed"].Disabled = true
game:GetService("StarterPlayer").StarterCharacterScripts["Anti - fly"]:remove()
game:GetService("StarterPlayer").StarterCharacterScripts["Anti - speed"]:remove()

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Anti - fly" then
        v:Destroy()
    end
end

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Anti - speed" then
        v:Destroy()
    end
end
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

local Section = Tab:NewSection("Spawn")

Section:NewButton("Spawn", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1844.22168, 29.2033653, 212.068634, 0.99999851, 0, 0.00172644004, 0, 1, 0, -0.00172644004, 0, 0.99999851)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Car Shop")

Section:NewButton("Teleport", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100.477783, 29.1999454, 689.805115, -0.999772489, 2.06532533e-08, -0.0213303659, 1.93693381e-08, 1, 6.03984702e-08, 0.0213303659, 5.9971569e-08, -0.999772489)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Store")

Section:NewButton("Teleport", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-368.709412, 33.599987, 156.610779, 0.0223181006, -2.93689109e-08, 0.999750912, -5.03626048e-08, 1, 3.05005052e-08, -0.999750912, -5.10307707e-08, 0.0223181006)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("SHOP")

Section:NewButton("Sell", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(676.201965, 32.870163, -291.036011, 0.974697113, 1.77120931e-08, -0.223529771, -4.53632598e-09, 1, 5.94576264e-08, 0.223529771, -5.69391716e-08, 0.974697113)
end)

------------------------------------------------------------------------------------------

local Section = Tab:NewSection("Safe")

Section:NewButton("Safe Zone (1)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3783.87671, 28.9999943, 1616.86133, 0.915924549, -2.09470041e-08, -0.401350498, 3.04749648e-08, 1, 1.73558075e-08, 0.401350498, -2.81277526e-08, 0.915924549)
end)

Section:NewButton("Safe Zone (2)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2920.63574, 62.8494835, -1798.77039, -0.894300342, -0.0324313529, -0.446290404, -1.86264515e-09, 0.997370064, -0.0724776015, 0.447467238, -0.0648167431, -0.891948342)
end)

Section:NewButton("Safe Zone (3)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-797.678101, 29.0999947, -921.175415, 0.0450394489, -3.59984433e-08, -0.998985231, -2.05590781e-10, 1, -3.60442804e-08, 0.998985231, 1.82879667e-09, 0.0450394489)
end)

Section:NewButton("Safe Zone (4)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1921.88525, 28.9999943, 2840.23145, -0.915470421, -3.13396065e-08, -0.402385265, -5.88264975e-08, 1, 5.59521318e-08, 0.402385265, 7.48934355e-08, -0.915470421)
end)

Section:NewButton("Safe Zone (5)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2089.89551, -17.0410004, 3034.8374, -0.0998312831, 9.91850158e-09, 0.995004356, 3.74668545e-08, 1, -6.20915541e-09, -0.995004356, 3.66598165e-08, -0.0998312831)
end)

Section:NewButton("Safe Zone (6)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2089.86426, -19.2788086, 2953.91602, -0.168914676, 8.88428975e-09, 0.985630691, 4.15352375e-08, 1, -1.89561722e-09, -0.985630691, 4.06182075e-08, -0.168914676)
end)

Section:NewButton("Safe Zone (7)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1683.07812, 105.099976, -824.352661, -0.438918442, -4.1904137e-08, -0.898526907, 4.32679457e-08, 1, -6.77723051e-08, 0.898526907, -6.86239261e-08, -0.438918442)
end)

Section:NewButton("Safe Zone (8)", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1841.54736, 131.901321, 230.141037, -0.998363495, 0.0114707677, 0.0560243353, -9.31322464e-10, 0.979676366, -0.200584993, -0.0571865737, -0.200256735, -0.97807312)
end)

------------------------------------------------------------------------------------------

--- Not ---

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

local Section = Tab:NewSection("Infinite Yield")
Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

local Section = Tab:NewSection("Emotes")
Section:NewButton("Click", "press to </ม to Open", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Emotes.lua"))() end)

local Section = Tab:NewSection("Orca")
Section:NewButton("Click", " ", function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/peatchXD/Main/main/Orca"))()end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("credit") 
local Section = Tab:NewSection("By: NONAME HUB#3707")
Section:NewKeybind("press to change button", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)  
