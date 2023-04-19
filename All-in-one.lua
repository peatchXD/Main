local gamelist = {
    [537413528]  = "https://raw.githubusercontent.com/GODMODs132/Build-A-Boat-For-Treasure/main/Script.lua",
    [13055060173] = "https://raw.githubusercontent.com/GODMODs132/SCRATCH-SERIES/main/SCRATCH_SERIES.lua",
    [11233292886] = "https://raw.githubusercontent.com/GODMODs132/XIN-TOWN/main/Script.lua",
}

local checkgame = gamelist[game.gameId]
if gamelist[game.gameId] then 
    loadstring(game:HttpGet(checkgame))()
else 
game.Players.LocalPlayer:Kick("กูไม่ได้ทำไอส้สรันหาแม่มึงอะ")
end
