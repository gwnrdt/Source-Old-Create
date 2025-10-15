local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- Base Url
local function getBaseUrl()
    return "https://raw.githubusercontent.com/gwnrdt/Loaders/main/Games/"
end

local GameScripts = {
    ["One Block"] = "Ez.lua",
    ["Brainrot Battlegrounds"] = "Lol.lua",
    ["Aura Farm Tower"] = "Nah.lua",
    ["[WALLY WEST] Roblox_Egor"] = "Bruh.lua",
    ["Steal a Supercar"] = "Ezcar.lua",
    ["Find The Noobies And Morph"] = "Noob.lua",
    ["Steal a Sword"] = "Ezsword.lua",
    ["Ride A Cart Down A Slide"] = "Get.lua",
    ["Carry a Monkey [2 Player Obby]"] = "Products.lua",
    ["Steal a Brawler"] = "Eh.lua",
    ["Anime Tower Piece"] = "hrs.lua",
    ["Don't Wake the 99 Nights in the Forest!"] = "K.lua",
    ["Steal A Football Player"] = "Player.lua",
    ["Build Your Train"] = "Yea.lua",
    ["Cook Brainrot"] = "Boi.lua",
    ["Tower Of Killers"] = "Heh.lua",
    ["Super Hero Obby"] = "L.lua",
    ["Brainrot Zombie Tower"] = "Ehhh.lua",
    ["Product Unversal"] = "Oh.lua",
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "Mscuaz"

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 300)
Frame.Position = UDim2.new(0.5, -100, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(200, 170, 170)
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 12)
FrameCorner.Parent = Frame

local FrameGradient = Instance.new("UIGradient")
FrameGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 170, 170)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 235, 210))
})
FrameGradient.Rotation = 90
FrameGradient.Parent = Frame

local FrameShadow = Instance.new("UIStroke")
FrameShadow.Thickness = 2
FrameShadow.Color = Color3.fromRGB(150, 160, 140)
FrameShadow.Transparency = 0.5
FrameShadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
FrameShadow.Parent = Frame

local isDragging = false
local dragStart = nil
local startPos = nil

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = Frame.Position
    end
end)

Frame.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
    end
end)

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 28, 0, 28)
CloseButton.Position = UDim2.new(1, -32, 0, 4)
CloseButton.BackgroundColor3 = Color3.fromRGB(150, 160, 140)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(180, 175, 165)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 14
CloseButton.Parent = Frame

local CloseButtonCorner = Instance.new("UICorner")
CloseButtonCorner.CornerRadius = UDim.new(0, 6)
CloseButtonCorner.Parent = CloseButton

local CloseButtonGradient = Instance.new("UIGradient")
CloseButtonGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 160, 140)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 235, 210))
})
CloseButtonGradient.Rotation = 90
CloseButtonGradient.Parent = CloseButton

CloseButton.MouseEnter:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 30, 0, 30), BackgroundColor3 = Color3.fromRGB(240, 235, 210) }):Play()
end)
CloseButton.MouseLeave:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 28, 0, 28), BackgroundColor3 = Color3.fromRGB(150, 160, 140) }):Play()
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui.Enabled = false
end)

local Dropdown = Instance.new("TextButton")
Dropdown.Size = UDim2.new(1, -10, 0, 36)
Dropdown.Position = UDim2.new(0, 5, 0, 40)
Dropdown.BackgroundColor3 = Color3.fromRGB(150, 160, 140)
Dropdown.Text = "▶ Select Game"
Dropdown.TextColor3 = Color3.fromRGB(180, 175, 165)
Dropdown.Font = Enum.Font.Gotham
Dropdown.TextSize = 14
Dropdown.Parent = Frame

local DropdownCorner = Instance.new("UICorner")
DropdownCorner.CornerRadius = UDim.new(0, 6)
DropdownCorner.Parent = Dropdown

local DropdownGradient = Instance.new("UIGradient")
DropdownGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 160, 140)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 235, 210))
})
DropdownGradient.Rotation = 90
DropdownGradient.Parent = Dropdown

Dropdown.MouseEnter:Connect(function()
    TweenService:Create(Dropdown, TweenInfo.new(0.2), { Size = UDim2.new(1, -8, 0, 38), BackgroundColor3 = Color3.fromRGB(240, 235, 210) }):Play()
end)
Dropdown.MouseLeave:Connect(function()
    TweenService:Create(Dropdown, TweenInfo.new(0.2), { Size = UDim2.new(1, -10, 0, 36), BackgroundColor3 = Color3.fromRGB(150, 160, 140) }):Play()
end)

local ListFrame = Instance.new("ScrollingFrame")
ListFrame.Size = UDim2.new(1, 0, 0, 0)
ListFrame.Position = UDim2.new(0, 0, 0, 80)
ListFrame.BackgroundColor3 = Color3.fromRGB(240, 235, 210)
ListFrame.ClipsDescendants = true
ListFrame.Parent = Frame
ListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ListFrame.ScrollBarThickness = 4
ListFrame.ScrollBarImageColor3 = Color3.fromRGB(180, 175, 165)
ListFrame.BackgroundTransparency = 0.1

local ListFrameCorner = Instance.new("UICorner")
ListFrameCorner.CornerRadius = UDim.new(0, 6)
ListFrameCorner.Parent = ListFrame

local isOpen = false
local function toggleListFrame()
    isOpen = not isOpen
    local maxHeight = 200
    local contentHeight = #ListFrame:GetChildren() * 38
    local goalHeight = isOpen and math.min(contentHeight, maxHeight) or 0
    local goalSize = UDim2.new(1, 0, 0, goalHeight)

    TweenService:Create(ListFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
        Size = goalSize,
        BackgroundTransparency = isOpen and 0.1 or 1
    }):Play()

    ListFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
end

Dropdown.MouseButton1Click:Connect(toggleListFrame)

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ListFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

local buttonCount = 0
for gameName, fileName in pairs(GameScripts) do
    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(1, -5, 0, 34)
    Btn.BackgroundColor3 = Color3.fromRGB(240, 235, 210)
    Btn.Text = gameName
    Btn.TextColor3 = Color3.fromRGB(180, 175, 165)
    Btn.Font = Enum.Font.Gotham
    Btn.TextSize = 12
    Btn.TextWrapped = true
    Btn.TextTruncate = Enum.TextTruncate.AtEnd
    Btn.Parent = ListFrame
    buttonCount = buttonCount + 1

    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 6)
    BtnCorner.Parent = Btn

    local BtnGradient = Instance.new("UIGradient")
    BtnGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(240, 235, 210)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 160, 140))
    })
    BtnGradient.Rotation = 90
    BtnGradient.Parent = Btn

    Btn.MouseEnter:Connect(function()
        TweenService:Create(Btn, TweenInfo.new(0.2), { Size = UDim2.new(1, -3, 0, 36), BackgroundColor3 = Color3.fromRGB(200, 170, 170) }):Play()
    end)
    Btn.MouseLeave:Connect(function()
        TweenService:Create(Btn, TweenInfo.new(0.2), { Size = UDim2.new(1, -5, 0, 34), BackgroundColor3 = Color3.fromRGB(240, 235, 210) }):Play()
    end)

    Btn.MouseButton1Click:Connect(function()
        Dropdown.Text = "▶ " .. gameName
        toggleListFrame()

        if fileName == "" then
            warn("❌ No script file specified for", gameName)
            StarterGui:SetCore("SendNotification", {
                Title = "Mscuaz",
                Text = "⚠️ No script available for " .. gameName,
                Duration = 5
            })
            return
        end

        local url = getBaseUrl() .. fileName
        local success, result = pcall(function()
            local scriptContent = game:HttpGet(url)
            if not scriptContent or scriptContent == "" then
                error("Empty or invalid script content for " .. gameName .. " at " .. url)
            end
            return loadstring(scriptContent)()
        end)

        if not success then
            warn("❌ Failed to load script for", gameName, ":", result)
            StarterGui:SetCore("SendNotification", {
                Title = "Mscuaz",
                Text = "⚠️ Script Not Supported: " .. tostring(result),
                Duration = 5
            })
        else
            StarterGui:SetCore("SendNotification", {
                Title = "Mscuaz",
                Text = "✅ " .. gameName .. " script successfully executed!",
                Duration = 5
            })
        end
    end)
end

ListFrame.CanvasSize = UDim2.new(0, 0, 0, buttonCount * (34 + UIListLayout.Padding.Offset))
