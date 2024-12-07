-- กำหนดค่า Key ที่ต้องการ
_G.Authorize = "X28J4-ZAAQ9-APXXQ-1BW3F"

-- สร้างฟังก์ชันตรวจสอบ Key
local function authorizeKey(key)
    local validKeys = {
        "AW51D-HWDAD-NNHXQ-1GW3F",
        "ABCDE-FGHIJ-KLMNO-PQRST",
        "Admin-NONAME-HUB"
    }
    
    for _, validKey in pairs(validKeys) do
        if key == validKey then
            return true
        end
    end
    return false
end

-- ตรวจสอบ Key ก่อนโหลด Library
if authorizeKey(_G.Authorize) then
    print("Key ถูกต้อง! กำลังโหลด Library...")
    -- ตัวอย่างการโหลด Library
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/GODMODs132/NONAME-HUB/main/Script.lua"),true))()
else
    print("Key ไม่ถูกต้อง! กรุณาตรวจสอบ Key ของคุณอีกครั้ง.")
end
