-- gui = ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "CrazyExecutorV2"
gui.Parent = game.CoreGui

--screengui = gui


-- gui = ScreenGui
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 600, 0, 270)
Main.Position = UDim2.new(0.1, 0, 0.1, 0)
Main.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 1
Main.Active = true
Main.Draggable = true
Main.Parent = gui

local Text = Instance.new("TextLabel")
Text.Size = UDim2.new(0, 600, 0, 45)
Text.Position = UDim2.new(0, 0, 0, 0)
Text.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Text.BorderColor3 = Color3.new(0, 0, 0)
Text.BorderSizePixel = 1
Text.Text = "Crazy Executor V2"
Text.TextColor3 = Color3.fromRGB(173, 173, 173)
Text.Font = Enum.Font.Arcade
Text.Parent = Main
Text.TextSize = 15

local Outline = Instance.new("TextLabel")
Outline.Size = UDim2.new(0, 10, 0, 221)
Outline.Position = UDim2.new(0, 0, 0, 47)
Outline.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Outline.BorderColor3 = Color3.new(0, 0, 0)
Outline.BorderSizePixel = 1
Outline.Text = ""
Outline.TextColor3 = Color3.new(255, 255, 255)
Outline.Font = Enum.Font.Code
Outline.Parent = Main

local Outline2 = Instance.new("TextLabel")
Outline2.Size = UDim2.new(0, 10, 0, 221)
Outline2.Position = UDim2.new(0, 590, 0, 47)
Outline2.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Outline2.BorderColor3 = Color3.new(0, 0, 0)
Outline2.BorderSizePixel = 1
Outline2.Text = ""
Outline2.TextColor3 = Color3.new(255, 255, 255)
Outline2.Font = Enum.Font.Code
Outline2.Parent = Main

local Outline3 = Instance.new("TextLabel")
Outline3.Size = UDim2.new(0, 600, 0, 20)
Outline3.Position = UDim2.new(0, 0, 0, 249)
Outline3.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Outline3.BorderColor3 = Color3.new(0, 0, 0)
Outline3.BorderSizePixel = 1
Outline3.Text = ""
Outline3.TextColor3 = Color3.new(255, 255, 255)
Outline3.Font = Enum.Font.Code
Outline3.Parent = Main

local Box = Instance.new("TextBox")
Box.Size = UDim2.new(0, 500, 0, 150)
Box.Position = UDim2.new(0, 50, 0, 55)
Box.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Box.BorderColor3 = Color3.new(0, 0, 0)
Box.BorderSizePixel = 1
Box.Text = "-- Script Here!"
Box.PlaceholderText = "Please Enter Your Script!"
Box.TextColor3 = Color3.new(255, 255, 255)
Box.Font = Enum.Font.Cartoon
Box.Parent = Main
Box.TextSize = 15
Box.ClearTextOnFocus = false
Box.MultiLine = true
Box.TextXAlignment = Enum.TextXAlignment.Left
Box.TextYAlignment = Enum.TextYAlignment.Top
Box.AutomaticSize = "XY"

local NewUi = Instance.new("UICorner")
NewUi.CornerRadius = UDim.new(0, 8)
NewUi.Parent = Box

local Execute = Instance.new("TextButton")
Execute.Size = UDim2.new(0, 150, 0, 35)
Execute.Position = UDim2.new(0, 40, 0, 210)
Execute.BackgroundColor3 = Color3.new(0, 0, 0)
Execute.BorderColor3 = Color3.new(0, 0, 0)
Execute.BorderSizePixel = 1
Execute.Text = "Execute"
Execute.TextColor3 = Color3.new(255, 255, 255)
Execute.Font = Enum.Font.Bangers
Execute.Parent = Main
Execute.Transparency = 0.7
Execute.TextSize = 14

local NewUi2 = Instance.new("UICorner")
NewUi2.CornerRadius = UDim.new(0, 5)
NewUi2.Parent = Execute

local Clear = Instance.new("TextButton")
Clear.Size = UDim2.new(0, 150, 0, 35)
Clear.Position = UDim2.new(0, 230, 0, 210)
Clear.BackgroundColor3 = Color3.new(0, 0, 0)
Clear.BorderColor3 = Color3.new(0, 0, 0)
Clear.BorderSizePixel = 1
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(255, 255, 255)
Clear.Font = Enum.Font.Bangers
Clear.Parent = Main
Clear.Transparency = 0.7
Clear.TextSize = 14

local NewUi3 = Instance.new("UICorner")
NewUi3.CornerRadius = UDim.new(0, 5)
NewUi3.Parent = Clear

local Copy = Instance.new("TextButton")
Copy.Size = UDim2.new(0, 150, 0, 35)
Copy.Position = UDim2.new(0, 420, 0, 210)
Copy.BackgroundColor3 = Color3.new(0, 0, 0)
Copy.BorderColor3 = Color3.new(0, 0, 0)
Copy.BorderSizePixel = 1
Copy.Text = "Copy"
Copy.TextColor3 = Color3.new(255, 255, 255)
Copy.Font = Enum.Font.Bangers
Copy.Parent = Main
Copy.Transparency = 0.7
Copy.TextSize = 14

local NewUi4 = Instance.new("UICorner")
NewUi4.CornerRadius = UDim.new(0, 5)
NewUi4.Parent = Copy

Clear.MouseButton1Click:Connect(function()
Box.Text = ""
end)

Execute.MouseButton1Click:Connect(function()
loadstring(Box.Text)()
game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Crazy Executor Mobile",
        Text = "Load Script Success!"
    })
end)

Copy.MouseButton1Click:Connect(function()
setclipboard(Box.Text)
game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Crazy Executor Mobile",
        Text = "Copied!"
    })
end)

-- Toogle Ui

local Open = Instance.new("Frame")
Open.Size = UDim2.new(0, 30, 0, 30)
Open.Position = UDim2.new(0, 17, 0, 0)
Open.BackgroundColor3 = Color3.fromRGB(69, 69, 69)
Open.BorderColor3 = Color3.new(0, 0, 0)
Open.BorderSizePixel = 1
Open.Active = true
Open.Parent = gui
Open.Transparency = 0.2

local OpenUi = Instance.new("UICorner")
OpenUi.CornerRadius = UDim.new(0, 5)
OpenUi.Parent = Open

local CrazyImageTest = Instance.new("TextButton")
CrazyImageTest.Size = UDim2.new(0, 30, 0, 30)
CrazyImageTest.Position = UDim2.new(0, 0, 0, 0)
CrazyImageTest.BackgroundColor3 = Color3.fromRGB(69, 69, 69)
CrazyImageTest.Parent = Open
CrazyImageTest.Text = "✡"
CrazyImageTest.Transparency = 0.2
CrazyImageTest.TextColor3 = Color3.fromRGB(78, 78, 78)
CrazyImageTest.Font = Enum.Font.Arcade
CrazyImageTest.TextSize = 14

local OpenUi2 = Instance.new("UICorner")
OpenUi2.CornerRadius = UDim.new(0, 5)
OpenUi2.Parent = CrazyImageTest

CrazyImageTest.MouseButton1Click:Connect(function()
Main.Visible = true
end)

local Toogle = Instance.new("TextButton")
Toogle.Size = UDim2.new(0, 50, 0, 40)
Toogle.Position = UDim2.new(0, 550, 0, 0)
Toogle.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Toogle.BorderColor3 = Color3.new(0, 0, 0)
Toogle.BorderSizePixel = 1
Toogle.Text = "-"
Toogle.TextColor3 = Color3.new(0, 0, 0)
Toogle.Font = Enum.Font.Code
Toogle.Parent = Main
Toogle.TextSize = 20

Toogle.MouseButton1Click:Connect(function()
Main.Visible = false
end)
