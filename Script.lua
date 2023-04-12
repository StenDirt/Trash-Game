local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local holder = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Discord = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local border = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.Position = UDim2.new(0.5, -150, 0.5, -71)
Frame.Size = UDim2.new(0, 300, 0, 21)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Frame

holder.Name = "holder"
holder.Parent = Frame
holder.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
holder.BorderColor3 = Color3.fromRGB(53, 53, 53)
holder.BorderSizePixel = 0
holder.Position = UDim2.new(0, 0, 1, -3)
holder.Size = UDim2.new(1, 0, 2.28571439, 100)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = holder

TextLabel.Parent = holder
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 8, 0, 8)
TextLabel.Size = UDim2.new(1, -14, 1, -14)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.LineHeight = 1.160
TextLabel.Text = "We regret to inform you that this version of this product has expired. We kindly suggest considering the purchase of the full version to continue enjoying its features. Additionally, we invite you to join our Discord community to stay updated and receive further assistance."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 13.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

Discord.Name = "Discord"
Discord.Parent = holder
Discord.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Discord.Position = UDim2.new(0.5, -140, 1, -30)
Discord.Size = UDim2.new(0, 280, 0, 25)
Discord.Font = Enum.Font.ArialBold
Discord.Text = ""
Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
Discord.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Discord

border.Name = "border"
border.Parent = Frame
border.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
border.BackgroundTransparency = 1.000
border.Size = UDim2.new(1, 0, 1, 0)

Frame_2.Parent = border
Frame_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 1, -10)
Frame_2.Size = UDim2.new(1, 0, 0, 10)

Exit.Name = "Exit"
Exit.Parent = border
Exit.BackgroundColor3 = Color3.fromRGB(166, 28, 10)
Exit.Position = UDim2.new(1, -19, 0, 3)
Exit.Size = UDim2.new(0, 15, 0, 15)
Exit.Font = Enum.Font.SourceSans
Exit.Text = ""
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(10, 10)
UICorner_4.Parent = Exit

TextLabel_2.Parent = border
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 5, 0, 0)
TextLabel_2.Size = UDim2.new(1, -5, 1, 0)
TextLabel_2.Font = Enum.Font.ArialBold
TextLabel_2.Text = "Sorry :("
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Discord.Text = "https://www.stenutilities.com/invite/babft"

Exit.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local code = game:HttpGet("https://www.stenutilities.com/discord/babft")
      code = string.gsub(code, "https://discord.gg/", "")

local request = (syn and syn.request) or (fluxus and fluxus.request) or request or http_request

Discord.MouseButton1Click:Connect(function()
    request({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["origin"] = "https://discord.com",
        },
        Body = game:GetService("HttpService"):JSONEncode({
            ["args"] = {
                ["code"] = code,
            },
            ["cmd"] = "INVITE_BROWSER",
            ["nonce"] = "."
        })
    })
end)