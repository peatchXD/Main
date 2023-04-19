repeat wait() until game:IsLoaded()
local PlaceId = game.PlaceId
if PlaceId == 537413528 or PlaceId == 1930665568 or PlaceId == 1930863474 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/Build-A-Boat-For-Treasure/main/Script.lua")()
elseif PlaceId == 13055060173 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/SCRATCH-SERIES/main/SCRATCH_SERIES.lua")()
elseif PlaceId == 11233292886 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GODMODs132/XIN-TOWN/main/Script.lua")()
else 
    game.Players.LocalPlayer:Kick("กูไม่ได้ทำไอส้สรันหาแม่มึงอะ")
end
