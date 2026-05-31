local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Xóa menu cũ nếu có để tránh trùng lặp
local oldGui = playerGui:FindFirstChild("TrollMenu")
if oldGui then oldGui:Destroy() end

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TrollMenu"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Background overlay (lớp phủ tối nhẹ phía sau)
local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 0.5
background.BorderSizePixel = 0
background.Parent = screenGui

-- Main container (Bảng đen xám chữ nhật góc vuông theo ảnh 1000002425_2.jpg)
local container = Instance.new("Frame")
container.Name = "Container"
container.Size = UDim2.new(0, 500, 0, 160) 
container.Position = UDim2.new(0.5, -250, 0.5, -80)
container.BackgroundColor3 = Color3.fromRGB(20, 22, 25) 
container.BorderSizePixel = 0
container.Parent = screenGui

-- Viền mỏng bao quanh bảng cho sắc nét giống ảnh gốc
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(40, 45, 50)
UIStroke.Thickness = 1
UIStroke.Parent = container

-- Loading text ("Đang tải...")
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 0, 40)
loadingText.Position = UDim2.new(0, 0, 0, 15)
loadingText.BackgroundTransparency = 1
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.TextSize = 28 
loadingText.Font = Enum.Font.SourceSans
loadingText.Text = "Đang tải..."
loadingText.Parent = container

-- Progress bar background (Thanh nền màu xám đen bên dưới)
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

-- Percentage text (Số % hiển thị ngay dưới thanh loading)
local percentText = Instance.new("TextLabel")
percentText.Size = UDim2.new(1, 0, 0, 30)
percentText.Position = UDim2.new(0, 0, 0, 95)
percentText.BackgroundTransparency = 1
percentText.TextColor3 = Color3.fromRGB(255, 255, 255)
percentText.TextSize = 22
percentText.Font = Enum.Font.SourceSans
percentText.Text = "0%"
percentText.Parent = container

-- Biến lưu trạng thái tiến trình
local currentProgress = 0
local isLoading = true

-- Logic tự động chạy thanh loading và thực thi script
spawn(function()
    local baseTime = 4 -- Tổng thời gian load ước tính (giây)
    
    for percent = 0, 100, 1 do
        if not isLoading then break end
        
        -- Tạo thời gian chờ ngẫu nhiên nhẹ giữa các % để thanh chạy mượt và thật hơn
        local waitTime = (baseTime / 100) * (math.random(6, 14) / 10)
        wait(waitTime)
        
        currentProgress = percent
        progressFill:TweenSize(UDim2.new(currentProgress / 100, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.05, true)
        percentText.Text = math.floor(currentProgress) .. "%"
        
        -- KHI TẢI ĐẠT ĐỦ 100%
        if percent >= 100 then
            wait(0.3) -- Chờ một chút ngắn để người chơi thấy rõ 100%
            screenGui:Destroy() -- Xóa toàn bộ giao diện Loading
            
            -- =========================================================================
            -- [NƠI DÁN SCRIPT CỦA BẠN]
            -- Thay thế đoạn URL bên dưới bằng Link Raw Script của bạn (GitHub, Pastebin,...)
            -- =========================================================================
            local success, err = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Blox-Fruits-Opps/Redz-Hub-New-Updates/refs/heads/main/Txt"))()
            end)
            
            if success then
                print("✅ Đã kích hoạt script thành công sau khi tải!")
            else
                warn("❌ Lỗi khi thực thi loadstring: " .. tostring(err))
            end
            -- =========================================================================
            
            break
        end
    end
end)
