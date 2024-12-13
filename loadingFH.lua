local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Loading NONAME HUB", "DarkTheme")

-- สร้าง Tab และ Section สำหรับหน้าการโหลด
local loadTab = Window:NewTab("Loading")
local loadSection = loadTab:NewSection("Progress")

-- สร้าง Label สำหรับแสดงข้อความ
local loadingLabel = loadSection:NewLabel("Loading Script NONAME HUB: 0%")

-- ฟังก์ชันการโหลด
local function loadingScript()
    -- ข้อความเริ่มต้น
    local loadingText = "Loading script NONAME HUB: "

    -- ทำการโหลด 0-100% 
    for i = 0, 100 do
        -- อัปเดตข้อความใน Label
        loadingLabel:UpdateLabel(loadingText .. i .. "%")
        task.wait(0.1)  -- รอ 0.1 วินาทีเพื่อให้เห็นผลการโหลด
    end

    -- เมื่อโหลดเสร็จแล้ว
    loadingLabel:UpdateLabel("Script Loaded Successfully!")  -- เปลี่ยนข้อความเมื่อโหลดเสร็จ
    
    task.wait(1)  -- ให้เวลาหนึ่งวินาทีเพื่อแสดงข้อความ

    loadingLabel:UpdateLabel("Please wait 5 seconds to open the UI.")  -- แสดงข้อความ

    -- ปิด UI หลังจากการโหลดเสร็จ
    Library:ToggleUI()  -- ปิด UI

    -- รันสคริปต์ถัดไปโดยไม่ต้องกดปุ่ม
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Main/refs/heads/main/FH.lua"))()
end

-- เรียกใช้งานการโหลด
loadingScript()
