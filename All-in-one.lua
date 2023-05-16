local whitelistecheck = loadstring(game:HttpGet("https://pastebin.com/raw/rhBz5MS1", true))() -- pastebin link there
if whitelistecheck[_G.key] then
else
game:service('Players').LocalPlayer:Kick('Not Whitelisted')
end

repeat wait() until game:IsLoaded()
local PlaceId = game.PlaceId
if PlaceId == 537413528 or PlaceId == 1930665568 or PlaceId == 1930863474 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/Build-A-Boat-For-Treasure/main/Script.lua")()
elseif PlaceId == 13055060173 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/SCRATCH-SERIES/main/SCRATCH_SERIES.lua")()
elseif PlaceId == 13212005672 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/SCRATCH-MULTIVERSE/main/Script.lua")()
elseif PlaceId == 11233292886 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/XIN-TOWN/main/Script.lua")()
elseif PlaceId == 9853584748 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/MuangThai-City/main/Script.lua")()
elseif PlaceId == 7305309231 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/Taxi-Boss/main/Script.lua")()
else 
    game.Players.LocalPlayer:Kick("กูไม่ได้ทำไอส้สรันหาแม่มึงอะ")
end
