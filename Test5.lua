local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Label = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.27, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 500, 0, 50)

UICorner.CornerRadius = UDim.new(0, 30)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.300000012, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 30)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Blox Fruit Premium Edition"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 25.000

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.879999995, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://16499135236"

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.150000006, 0, 4.95999861, 0)
Frame_2.Size = UDim2.new(0, 650, 0, 500)
Frame_2.Visible = false

ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0399999991, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Image = "rbxassetid://16014590522"

UICorner_3.CornerRadius = UDim.new(0, 60)
UICorner_3.Parent = ImageLabel

UICorner_2.CornerRadius = UDim.new(0, 30)
UICorner_2.Parent = Frame_2

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.357142866, 0, 0.0140000004, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 30)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Check Items"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000

local function QVGP_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local Gui = script.Parent
	local LogoButtonRight = script.Parent.Frame.ImageButton
	local CheckItem = script.Parent.Frame.Frame
	
	LogoButtonRight.MouseButton1Click:Connect(function()
		CheckItem.Visible = not CheckItem.Visible
	end)
end
coroutine.wrap(QVGP_fake_script)()

function Label(Text)
	local Label = Instance.new("TextLabel")
	local LabelFunction = {}

	Label.Name = "Label"
	Label.Parent = Frame
	Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label.BackgroundTransparency = 1.000
	Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Label.BorderSizePixel = 0
	Label.Position = UDim2.new(0.300000012, 0, 0.400000006, 0)
	Label.Size = UDim2.new(0, 200, 0, 30)
	Label.Font = Enum.Font.SourceSans
	Label.Text = Text
	Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label.TextSize = 25.000

	function LabelFunction:Refresh(ToChange)
		Label.Text = ToChange
	end
	return LabelFunction
end

Stats = Label("Stats : ...")
function UpdateStats()
	if game.Players.LocalPlayer.Character.Humanoid.Health >= 1 then
		Stats:Refresh("Stats : Have Life")
	elseif game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
		Stats:Refresh("Stats : Not Have Life")
	end
end
spawn(function()
	while true do
		UpdateStats()
		wait()
	end
end)
