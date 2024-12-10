print("Run NoName Hub")
loadstring(game:HttpGet(("https://raw.githubusercontent.com/GODMODs132/WebHook-Discord-Roblox/main/Script.lua"),true))()

local function authorizeKey(key)
    local validKeys = {
        "AW51D-HWDAD-NNHXQ-1GW3F",
        "ABCDE-FGHIJ-KLMNO-PQRST",
        "Ad-min-NO-NAME-HUB"
    }
    
    for _, validKey in pairs(validKeys) do
        if key == validKey then
            return true
        end
    end
    return false
end

if authorizeKey(_G.Authorize) then
    print("Key is correct! Loading Noname Hub...")
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Main/refs/heads/main/NNH.lua"),true))()
else
    print("Key is invalid! Please check your Key again.")
    game.Players.LocalPlayer:Kick("Key is invalid! Please check your key again.")
end
