repeat wait() until game:IsLoaded()

local placeScripts = {
    [537413528] = "https://raw.githubusercontent.com/GODMODs132/Build-A-Boat-For-Treasure/main/Script.lua",
    [1930665568] = "https://raw.githubusercontent.com/GODMODs132/Build-A-Boat-For-Treasure/main/Script.lua",
    [1930863474] = "https://raw.githubusercontent.com/GODMODs132/Build-A-Boat-For-Treasure/main/Script.lua",
    [13055060173] = "https://raw.githubusercontent.com/GODMODs132/SCRATCH-SERIES/main/SCRATCH_SERIES.lua",
    [13212005672] = "https://raw.githubusercontent.com/GODMODs132/SCRATCH-MULTIVERSE/main/Script.lua",
    [11233292886] = "https://raw.githubusercontent.com/GODMODs132/XIN-TOWN/main/Script.lua",
    [9853584748] = "https://raw.githubusercontent.com/GODMODs132/MuangThai-City/main/Script.lua",
    [7305309231] = "https://raw.githubusercontent.com/GODMODs132/Taxi-Boss/main/Script.lua",
    [6925849909] = "https://raw.githubusercontent.com/peatchXD/main/refs/heads/CBN.lua",
    [16732694052] = "https://raw.githubusercontent.com/peatchXD/Main/refs/heads/main/loadingFH.lua",
    [16656754260] = "https://raw.githubusercontent.com/peatchXD/Main/refs/heads/main/NNHFM.lua",
    [16667221376] = "https://raw.githubusercontent.com/peatchXD/Main/refs/heads/main/NNHFM.lua"
}

local placeId = game.PlaceId
local scriptUrl = placeScripts[placeId]

if scriptUrl then
    -- โหลดสคริปต์ที่เกี่ยวข้อง
    loadstring(game:HttpGet(scriptUrl, true))()
else
    -- เตะผู้เล่นออกหากไม่พบ PlaceId ที่ตรงกัน
    game.Players.LocalPlayer:Kick("กูไม่ได้ทำไอส้สรันหาแม่มึงอะ")
end
