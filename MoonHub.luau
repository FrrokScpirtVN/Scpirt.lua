repeat task.wait() until game:IsLoaded()

local key = "Moonhub928337666639"
local discord = "https://discord.gg/uyUSpFaKb"
local getKeyLink = "https://link4sub.com/AusctqOqx2"

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("MoonHub_KeySystem") then
    playerGui:FindFirstChild("MoonHub_KeySystem"):Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "MoonHub_KeySystem"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = playerGui

local overlay = Instance.new("Frame")
overlay.Parent = gui
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
overlay.BackgroundTransparency = 0.5
overlay.ZIndex = 1
overlay.BorderSizePixel = 0

local main = Instance.new("Frame")
main.Parent = gui
main.Size = UDim2.new(0, 340, 0, 380)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.new(0.5, 0, -1, 0)
main.BackgroundColor3 = Color3.fromRGB(13, 13, 18)
main.BorderSizePixel = 0
main.ZIndex = 2
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)

local stroke = Instance.new("UIStroke")
stroke.Parent = main
stroke.Color = Color3.fromRGB(0, 120, 255)
stroke.Thickness = 1.5
stroke.Transparency = 0.2

local header = Instance.new("Frame")
header.Parent = main
header.Size = UDim2.new(1, 0, 0, 55)
header.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
header.BorderSizePixel = 0
header.ZIndex = 3
Instance.new("UICorner", header).CornerRadius = UDim.new(0, 16)

local headerFix = Instance.new("Frame")
headerFix.Parent = header
headerFix.Size = UDim2.new(1, 0, 0.5, 0)
headerFix.Position = UDim2.new(0, 0, 0.5, 0)
headerFix.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
headerFix.BorderSizePixel = 0
headerFix.ZIndex = 3

local title = Instance.new("TextLabel")
title.Parent = header
title.Size = UDim2.new(1, 0, 1, 0)
title.BackgroundTransparency = 1
title.Text = "🛡️  Moon Hub  |  Verify Key"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.ZIndex = 4

local subtitle = Instance.new("TextLabel")
subtitle.Parent = main
subtitle.Size = UDim2.new(1, -30, 0, 25)
subtitle.Position = UDim2.new(0, 15, 0, 63)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Enter the key to continue."
subtitle.TextColor3 = Color3.fromRGB(120, 120, 150)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 13
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.ZIndex = 3

local divider = Instance.new("Frame")
divider.Parent = main
divider.Size = UDim2.new(1, -30, 0, 1)
divider.Position = UDim2.new(0, 15, 0, 95)
divider.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
divider.BorderSizePixel = 0
divider.ZIndex = 3

local inputLabel = Instance.new("TextLabel")
inputLabel.Parent = main
inputLabel.Size = UDim2.new(1, -30, 0, 18)
inputLabel.Position = UDim2.new(0, 15, 0, 105)
inputLabel.BackgroundTransparency = 1
inputLabel.Text = "KEY SYSTEM"
inputLabel.TextColor3 = Color3.fromRGB(0, 140, 255)
inputLabel.Font = Enum.Font.GothamBold
inputLabel.TextSize = 11
inputLabel.TextXAlignment = Enum.TextXAlignment.Left
inputLabel.ZIndex = 3

local inputBG = Instance.new("Frame")
inputBG.Parent = main
inputBG.Size = UDim2.new(1, -30, 0, 45)
inputBG.Position = UDim2.new(0, 15, 0, 126)
inputBG.BackgroundColor3 = Color3.fromRGB(22, 22, 33)
inputBG.BorderSizePixel = 0
inputBG.ZIndex = 3
Instance.new("UICorner", inputBG).CornerRadius = UDim.new(0, 10)

local inputStroke = Instance.new("UIStroke")
inputStroke.Parent = inputBG
inputStroke.Color = Color3.fromRGB(0, 100, 220)
inputStroke.Thickness = 1
inputStroke.Transparency = 0.5

local inputBox = Instance.new("TextBox")
inputBox.Parent = inputBG
inputBox.Size = UDim2.new(1, -16, 1, 0)
inputBox.Position = UDim2.new(0, 10, 0, 0)
inputBox.BackgroundTransparency = 1
inputBox.Text = ""
inputBox.PlaceholderText = "Enter your key here..."
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.Font = Enum.Font.GothamMedium
inputBox.TextSize = 14
inputBox.TextXAlignment = Enum.TextXAlignment.Left
inputBox.ClearTextOnFocus = false
inputBox.ZIndex = 4

inputBox.Focused:Connect(function()
    TweenService:Create(inputStroke, TweenInfo.new(0.2), {
        Color = Color3.fromRGB(0, 140, 255),
        Transparency = 0
    }):Play()
end)

inputBox.FocusLost:Connect(function()
    TweenService:Create(inputStroke, TweenInfo.new(0.2), {
        Color = Color3.fromRGB(0, 100, 220),
        Transparency = 0.5
    }):Play()
end)

local statusLabel = Instance.new("TextLabel")
statusLabel.Parent = main
statusLabel.Size = UDim2.new(1, -30, 0, 22)
statusLabel.Position = UDim2.new(0, 15, 0, 178)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
statusLabel.Font = Enum.Font.GothamMedium
statusLabel.TextSize = 12
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.ZIndex = 3

local verifyBtn = Instance.new("TextButton")
verifyBtn.Parent = main
verifyBtn.Size = UDim2.new(1, -30, 0, 44)
verifyBtn.Position = UDim2.new(0, 15, 0, 206)
verifyBtn.BackgroundColor3 = Color3.fromRGB(0, 110, 255)
verifyBtn.Text = "  Verify Key"
verifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.TextSize = 15
verifyBtn.BorderSizePixel = 0
verifyBtn.ZIndex = 3
Instance.new("UICorner", verifyBtn).CornerRadius = UDim.new(0, 10)

local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Parent = main
getKeyBtn.Size = UDim2.new(1, -30, 0, 38)
getKeyBtn.Position = UDim2.new(0, 15, 0, 260)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(30, 170, 90)
getKeyBtn.Text = "🔑  Get Key"
getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyBtn.Font = Enum.Font.GothamMedium
getKeyBtn.TextSize = 14
getKeyBtn.BorderSizePixel = 0
getKeyBtn.ZIndex = 3
Instance.new("UICorner", getKeyBtn).CornerRadius = UDim.new(0, 10)

local discordBtn = Instance.new("TextButton")
discordBtn.Parent = main
discordBtn.Size = UDim2.new(1, -30, 0, 38)
discordBtn.Position = UDim2.new(0, 15, 0, 308)
discordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
discordBtn.Text = "🔗  Join Discord"
discordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
discordBtn.Font = Enum.Font.GothamMedium
discordBtn.TextSize = 14
discordBtn.BorderSizePixel = 0
discordBtn.ZIndex = 3
Instance.new("UICorner", discordBtn).CornerRadius = UDim.new(0, 10)

local footer = Instance.new("TextLabel")
footer.Parent = main
footer.Size = UDim2.new(1, 0, 0, 22)
footer.Position = UDim2.new(0, 0, 1, -24)
footer.BackgroundTransparency = 1
footer.Text = "Moon Hub  •  v1.0"
footer.TextColor3 = Color3.fromRGB(50, 50, 80)
footer.Font = Enum.Font.Gotham
footer.TextSize = 11
footer.ZIndex = 3

TweenService:Create(main, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, 0, 0.5, 0)
}):Play()

local function closeGUI()
    TweenService:Create(main, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Position = UDim2.new(0.5, 0, 1.5, 0)
    }):Play()
    TweenService:Create(overlay, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
    task.wait(0.5)
    gui:Destroy()
end

verifyBtn.MouseButton1Click:Connect(function()
    local input = inputBox.Text
    if input == key then
        statusLabel.TextColor3 = Color3.fromRGB(0, 220, 100)
        statusLabel.Text = "✅ correct key!"
        task.wait(1.2)
        closeGUI()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/quoctrang2024cp-spec/Lua/refs/heads/main/Moonhub.luau"))()
    else
        statusLabel.TextColor3 = Color3.fromRGB(255, 70, 70)
        statusLabel.Text = "❌ invalid key!"
        TweenService:Create(inputStroke, TweenInfo.new(0.15), {
            Color = Color3.fromRGB(255, 50, 50),
            Transparency = 0
        }):Play()
        task.wait(1.5)
        TweenService:Create(inputStroke, TweenInfo.new(0.3), {
            Color = Color3.fromRGB(0, 100, 220),
            Transparency = 0.5
        }):Play()
        statusLabel.Text = ""
    end
end)

getKeyBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(getKeyLink) end)
    getKeyBtn.Text = "✅  link copied!"
    task.wait(1.5)
    getKeyBtn.Text = "🔑  Get Key"
end)

discordBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(discord) end)
    discordBtn.Text = "✅  Discord link copied!"
    task.wait(1.5)
    discordBtn.Text = "🔗  Join Discord"
end)
