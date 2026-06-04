-- ✅ BẢN SỬA LỖI HOÀN TOÀN: GÕ KEY LÀ NHẬN NGAY KHÔNG CẦN NHẤN ENTER BÀN PHÍM

repeat task.wait() until game:IsLoaded()

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1, 0, 0.1, 0)
ImageButton.Size = UDim2.new(0, 60, 0, 60)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=91347148253026"

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ImageButton

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Viturefy Hub",            
    SubTitle = "Key System",              
    TabWidth = 157,
    Size = UDim2.fromOffset(580, 340), 
    Acrylic = true,
    Theme = "Dark",                    
    MinimizeKey = Enum.KeyCode.End
})

local clickConn
clickConn = ImageButton.MouseButton1Click:Connect(function()
    Window:Minimize()
end)

local Tabs = { KeySystem = Window:AddTab({ Title = "Key system" }) }
Window:SelectTab(1)

local CorrectKey = "key10h-0177299166"
local EnteredKey = ""

-- ✍️ Ô nhập Key đã được sửa cấu trúc nhận diện trực tiếp
local KeyTextBox = Tabs.KeySystem:AddInput("Input", {
    Title = "Enter Key",
    Description = "Enter key here...",
    Default = "",
    Placeholder = "Nhập key tại đây...",
    Numeric = false,
    Finished = false, -- 👈 Đổi thành false để lấy chữ liên tục khi bạn gõ/dán
    Callback = function(Value)
        EnteredKey = string.gsub(Value, "^%s*(.-)%s*$", "%1")
    end
})

-- 🔘 Nút Kiểm tra Key
Tabs.KeySystem:AddButton({
    Title = "Check Key",
    Callback = function()
        -- 🛠 Kiểm tra thêm nếu người dùng chưa tương tác thì tự ép lấy text trong ô
        if EnteredKey == "" and KeyTextBox.Value ~= "" then
            EnteredKey = string.gsub(KeyTextBox.Value, "^%s*(.-)%s*$", "%1")
        end

        -- Tiến hành so sánh Key
        if EnteredKey == CorrectKey then
            Fluent:Notify({Title = "Thành Công!", Content = "Key chính xác! Đang tải Hajun...", Duration = 3})
            if clickConn then clickConn:Disconnect() end
            ScreenGui:Destroy()
            Window:Destroy()
            task.wait(0.5)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dangnhu2024cp-pixel/Scpirt.lua/refs/heads/main/Hajun.luau"))()
        else
            -- Hiển thị đúng chuỗi bạn đã viết để đối chứng
            Fluent:Notify({Title = "Thất Bại!", Content = "Key '"..EnteredKey.."' không đúng!", Duration = 3})
        end
    end
})

-- 🔗 Các nút lấy Key
Tabs.KeySystem:AddButton({
    Title = "Get Key Link4sub",
    Callback = function() setclipboard("https://link4sub.com/L61oC9txWe") end
})

Tabs.KeySystem:AddButton({
    Title = "Get Key Linkvertise",
    Callback = function() setclipboard("https://linkvertise.com/6179490/1ZfEJXjD8IEC") end
})
