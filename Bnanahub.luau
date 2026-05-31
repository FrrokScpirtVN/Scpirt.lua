local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Xóa menu cũ nếu có
local oldGui = playerGui:FindFirstChild("TrollMenu")
if oldGui then oldGui:Destroy() end

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TrollMenu"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Background overlay (Lớp phủ tối nhẹ phía sau)
local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 0.5
background.BorderSizePixel = 0
background.Parent = screenGui

-- Main container (Bảng đen xám chữ nhật góc vuông y hệt ảnh)
local container = Instance.new("Frame")
container.Name = "Container"
container.Size = UDim2.new(0, 500, 0, 160) -- Kích thước gọn gàng ôm vừa đủ cấu trúc ảnh
container.Position = UDim2.new(0.5, -250, 0.5, -80)
container.BackgroundColor3 = Color3.fromRGB(20, 22, 25) 
container.BorderSizePixel = 0
container.Parent = screenGui

-- Viền mỏng bao quanh bảng
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(40, 45, 50)
UIStroke.Thickness = 1
UIStroke.Parent = container

-- Trạng thái văn bản ("Đang tải...")
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 0, 40)
loadingText.Position = UDim2.new(0, 0, 0, 15)
loadingText.BackgroundTransparency = 1
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.TextSize = 28 
loadingText.Font = Enum.Font.SourceSans
loadingText.Text = "Đang tải..."
loadingText.Parent = container

-- Progress bar background (Thanh nền màu xám đen)
local progressBg = Instance.new("Frame")
progressBg.Size = UDim2.new(0, 440, 0, 20)
progressBg.Position = UDim2.new(0.5, -220, 0, 65)
progressBg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
progressBg.BorderSizePixel = 0
progressBg.Parent = container

-- Progress bar fill (Thanh chạy màu xanh dương tươi)
local progressFill = Instance.new("Frame")
progressFill.Size = UDim2.new(0, 0, 1, 0)
progressFill.BackgroundColor3 = Color3.fromRGB(0, 160, 255) 
progressFill.BorderSizePixel = 0
progressFill.Parent = progressBg

-- Percentage text (Số % hiển thị bên dưới thanh loading)
local percentText = Instance.new("TextLabel")
percentText.Size = UDim2.new(1, 0, 0, 30)
percentText.Position = UDim2.new(0, 0, 0, 95)
percentText.BackgroundTransparency = 1
percentText.TextColor3 = Color3.fromRGB(255, 255, 255)
percentText.TextSize = 22
percentText.Font = Enum.Font.SourceSans
percentText.Text = "0%"
percentText.Parent = container

-- Biến lưu logic chạy phần trăm troll
local currentProgress = 0
local isLoading = true

-- [GIỮ NGUYÊN TÍNH NĂNG TROLL] Logic tự động chạy phần trăm và đơ ở 99.9%
spawn(function()
    local baseTime = 5
    
    for percent = 0, 99.9, 1 do
        if not isLoading then break end
        
        -- Tiến trình chạy chậm dần đều tạo cảm giác sốt ruột
        local waitTime = baseTime * (percent / 10 + 1)
        wait(waitTime)
        
        currentProgress = percent
        progressFill:TweenSize(UDim2.new(currentProgress / 100, 0, 1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.1, true)
        percentText.Text = string.format("%.1f%%", currentProgress) -- Hiển thị số thập phân như 38.9% trong ảnh
        
        -- Đổi chữ troll khi đi được nửa đường
        if percent > 50 and percent < 99 then
            loadingText.Text = "Gần xong rồi..."
            loadingText.TextColor3 = Color3.fromRGB(255, 200, 100)
        end
        
        -- Khi đạt đến 99.9% -> Đơ tại chỗ và chuyển màu lỗi
        if percent >= 99.9 then
            loadingText.Text = "Đơ tại chỗ 😂"
            loadingText.TextColor3 = Color3.fromRGB(255, 100, 100)
            progressFill.BackgroundColor3 = Color3.fromRGB(255, 100, 100) -- Thanh chuyển đỏ báo lỗi troll
            percentText.Text = "99.9%"
            break
        end
    end
end)

print("✅ Đã đổi giao diện tối giản theo ảnh và giữ nguyên logic troll đơ 99.9%!")
