-- Services
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")

-- Base URL
local function getBaseUrl()
    return "https://raw.githubusercontent.com/gwnrdt/Loaders/main/Games/"
end

-- Game scripts list
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

-- Theme
local Theme = {
    MainColor = Color3.fromRGB(35,35,40),
    AccentColor = Color3.fromRGB(90,70,230),
    HoverColor = Color3.fromRGB(120,100,255),
    TextColor = Color3.fromRGB(255,255,255),
    OutlineColor = Color3.fromRGB(160,160,160)
}

-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MscuazUltraLoader"
ScreenGui.Parent = CoreGui

-- Main Frame
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 270, 0, 370)
Frame.Position = UDim2.new(0.5,-135,-1,0) -- start above screen
Frame.BackgroundColor3 = Theme.MainColor
Frame.ClipsDescendants = true
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0,20)
FrameCorner.Parent = Frame

local FrameStroke = Instance.new("UIStroke")
FrameStroke.Color = Theme.OutlineColor
FrameStroke.Thickness = 3
FrameStroke.Parent = Frame

-- Smooth breathing outline animation
spawn(function()
    while true do
        TweenService:Create(FrameStroke,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Thickness=6}):Play()
        wait(2)
        TweenService:Create(FrameStroke,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Thickness=3}):Play()
        wait(2)
    end
end)

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,40)
Title.Position = UDim2.new(0,0,0,10)
Title.BackgroundTransparency = 1
Title.Text = "Mscuaz Loaders"
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Theme.TextColor
Title.TextSize = 20
Title.Parent = Frame

-- Title fade animation
spawn(function()
    while true do
        TweenService:Create(Title,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{TextTransparency=0.3}):Play()
        wait(1)
        TweenService:Create(Title,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{TextTransparency=0}):Play()
        wait(1)
    end
end)

-- Top circular image
local TopImageFrame = Instance.new("Frame")
TopImageFrame.Size = UDim2.new(0,90,0,90)
TopImageFrame.Position = UDim2.new(0.5,-45,0,60)
TopImageFrame.BackgroundColor3 = Theme.AccentColor
TopImageFrame.Parent = Frame

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0.5,0)
TopCorner.Parent = TopImageFrame

local TopStroke = Instance.new("UIStroke")
TopStroke.Color = Theme.HoverColor
TopStroke.Thickness = 2
TopStroke.Parent = TopImageFrame

local TopImage = Instance.new("ImageLabel")
TopImage.Size = UDim2.new(1,0,1,0)
TopImage.BackgroundTransparency = 1
TopImage.Image = "rbxassetid://128185233852701"
TopImage.Parent = TopImageFrame

-- Top image rotate + pulse animation
spawn(function()
    local angle = 0
    while true do
        angle = angle + 1
        TopImageFrame.Rotation = angle
        TweenService:Create(TopStroke,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
            Thickness = 2 + math.abs(math.sin(tick()*3)*3),
            Color = Color3.fromHSV((tick()%5)/5,0.8,1)
        }):Play()
        wait(0.03)
    end
end)

-- Close button
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0,28,0,28)
CloseButton.Position = UDim2.new(1,-35,0,10)
CloseButton.BackgroundColor3 = Color3.fromRGB(200,50,50)
CloseButton.Text = "×"
CloseButton.TextColor3 = Theme.TextColor
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 16
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0,6)
CloseCorner.Parent = CloseButton

CloseButton.MouseEnter:Connect(function()
    TweenService:Create(CloseButton,TweenInfo.new(0.15),{BackgroundColor3=Theme.HoverColor}):Play()
end)
CloseButton.MouseLeave:Connect(function()
    TweenService:Create(CloseButton,TweenInfo.new(0.15),{BackgroundColor3=Color3.fromRGB(200,50,50)}):Play()
end)

CloseButton.MouseButton1Click:Connect(function()
    TweenService:Create(Frame,TweenInfo.new(0.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
        Position = UDim2.new(0.5,-135,-1,0),
        BackgroundTransparency = 1
    }):Play()
    TweenService:Create(FrameStroke,TweenInfo.new(0.7),{Thickness=0}):Play()
    wait(0.7)
    ScreenGui.Enabled = false
end)

-- Dropdown
local Dropdown = Instance.new("TextButton")
Dropdown.Size = UDim2.new(1,-30,0,38)
Dropdown.Position = UDim2.new(0,15,0,160)
Dropdown.BackgroundColor3 = Theme.AccentColor
Dropdown.TextColor3 = Theme.TextColor
Dropdown.Text = "▶ Select Game"
Dropdown.Font = Enum.Font.GothamBold
Dropdown.TextSize = 14
Dropdown.Parent = Frame

local DropCorner = Instance.new("UICorner")
DropCorner.CornerRadius = UDim.new(0,8)
DropCorner.Parent = Dropdown

-- List frame
local ListFrame = Instance.new("ScrollingFrame")
ListFrame.Size = UDim2.new(1,-30,0,0)
ListFrame.Position = UDim2.new(0,15,0,205)
ListFrame.BackgroundColor3 = Theme.MainColor
ListFrame.ClipsDescendants = true
ListFrame.ScrollBarThickness = 6
ListFrame.CanvasSize = UDim2.new(0,0,0,0)
ListFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ListFrame.Parent = Frame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0,5)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ListFrame

-- Dropdown toggle
local isOpen = false
local buttonSpacing = 5
local function toggleList()
    isOpen = not isOpen
    local buttons = {}
    for _, obj in pairs(ListFrame:GetChildren()) do
        if obj:IsA("TextButton") then
            table.insert(buttons,obj)
            obj.Visible = true
        end
    end
    local contentHeight = math.min(#buttons * (38 + buttonSpacing), 200)
    TweenService:Create(ListFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
        Size = UDim2.new(ListFrame.Size.X.Scale, ListFrame.Size.X.Offset, 0, isOpen and contentHeight or 0)
    }):Play()
end
Dropdown.MouseButton1Click:Connect(toggleList)

-- Notification function
local function Notify(title,text,duration)
    duration = duration or 3
    local notif = Instance.new("Frame")
    notif.Size = UDim2.new(0,320,0,100)
    notif.Position = UDim2.new(1,350,0.5,-50)
    notif.BackgroundColor3 = Theme.MainColor
    notif.ClipsDescendants = true
    notif.Parent = ScreenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0,15)
    corner.Parent = notif

    local stroke = Instance.new("UIStroke")
    stroke.Color = Theme.AccentColor
    stroke.Thickness = 3
    stroke.Parent = notif

    local tLabel = Instance.new("TextLabel")
    tLabel.Size = UDim2.new(1,-20,0,30)
    tLabel.Position = UDim2.new(0,10,0,10)
    tLabel.BackgroundTransparency = 1
    tLabel.Text = title
    tLabel.Font = Enum.Font.GothamBold
    tLabel.TextColor3 = Theme.TextColor
    tLabel.TextSize = 18
    tLabel.Parent = notif

    local mLabel = Instance.new("TextLabel")
    mLabel.Size = UDim2.new(1,-20,0,50)
    mLabel.Position = UDim2.new(0,10,0,40)
    mLabel.BackgroundTransparency = 1
    mLabel.Text = text
    mLabel.Font = Enum.Font.Gotham
    mLabel.TextColor3 = Theme.TextColor
    mLabel.TextSize = 14
    mLabel.TextWrapped = true
    mLabel.Parent = notif

    TweenService:Create(notif,TweenInfo.new(0.6,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
        Position = UDim2.new(1,-350,0.5,-50),
        BackgroundTransparency = 0
    }):Play()

    delay(duration,function()
        TweenService:Create(notif,TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.In),{
            Position = UDim2.new(1,350,0.5,-50),
            BackgroundTransparency = 1
        }):Play()
        wait(0.5)
        notif:Destroy()
    end)
end

-- Buttons for each game
for gameName,fileName in pairs(GameScripts) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1,0,0,38)
    btn.BackgroundColor3 = Theme.AccentColor
    btn.TextColor3 = Theme.TextColor
    btn.Text = gameName
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    btn.Visible = true
    btn.Parent = ListFrame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0,8)
    corner.Parent = btn

    btn.MouseEnter:Connect(function()
        TweenService:Create(btn,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
            BackgroundColor3=Theme.HoverColor,
            Size=UDim2.new(1,5,0,42)
        }):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
            BackgroundColor3=Theme.AccentColor,
            Size=UDim2.new(1,0,0,38)
        }):Play()
    end)

    btn.MouseButton1Click:Connect(function()
        Dropdown.Text = "▶ "..gameName
        toggleList()
        Notify("Game Loader","Loaded script for "..gameName,3)
        if fileName == "" then return end
        local url = getBaseUrl()..fileName
        local success,result = pcall(function()
            local content = game:HttpGet(url)
            return loadstring(content)()
        end)
        if not success then
            Notify("Error","Failed to load "..gameName..": "..tostring(result),3)
        end
    end)
end

-- Slide in main frame
TweenService:Create(Frame,TweenInfo.new(0.8,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
    Position = UDim2.new(0.5,-135,0.5,-185)
}):Play()
