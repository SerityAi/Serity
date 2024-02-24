local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Label = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local Frame_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner_3 = Instance.new("UICorner")
local DeathStep = Instance.new("TextLabel")
local SharkmabKarate = Instance.new("TextLabel")
local DragonTalon = Instance.new("TextLabel")
local Superhuman = Instance.new("TextLabel")
local GodHuamn = Instance.new("TextLabel")
local ElectricClaw = Instance.new("TextLabel")
local Melee = Instance.new("TextLabel")
local Sword = Instance.new("TextLabel")
local Saber = Instance.new("TextLabel")
local Rengoku = Instance.new("TextLabel")
local SpikeyTrident = Instance.new("TextLabel")
local DarkDagger = Instance.new("TextLabel")
local HallowScythe = Instance.new("TextLabel")
local Yama = Instance.new("TextLabel")
local Tushita = Instance.new("TextLabel")
local Gun = Instance.new("TextLabel")
local SoulGuita = Instance.new("TextLabel")
local Accessory = Instance.new("TextLabel")
local ValkyrieHelmet = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Level = Instance.new("TextLabel")
local Race = Instance.new("TextLabel")
local Beil = Instance.new("TextLabel")
local Fragments = Instance.new("TextLabel")
local DevilFruit = Instance.new("TextLabel")
local ServerStatus = Instance.new("TextLabel")
local Fullmoon = Instance.new("TextLabel")
local MirageIsland = Instance.new("TextLabel")
local Server = Instance.new("TextLabel")
local Rejoin = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Hop = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local HopLowerPlayers = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Logo = Instance.new("ImageLabel")
local UICorner_7 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_8 = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.322776198, 0, 0.0695181489, 0)
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

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.879999995, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://16499135236"

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

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.151999995, 0, 3.2599988, 0)
Frame_2.Size = UDim2.new(0, 650, 0, 350)
Frame_2.Visible = false

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.357142866, 0, 0.0140000004, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 30)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Information"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000

UICorner_2.CornerRadius = UDim.new(0, 30)
UICorner_2.Parent = Frame_2

ScrollingFrame.Parent = Frame_2
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0184616316, 0, 0.0971428603, 0)
ScrollingFrame.Size = UDim2.new(0, 625, 0, 300)
ScrollingFrame.CanvasPosition = Vector2.new(0, 400)

UICorner_3.CornerRadius = UDim.new(0, 30)
UICorner_3.Parent = ScrollingFrame

-- Status --

Status.Name = "Status"
Status.Parent = ScrollingFrame
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.104999997, 0, 0, 0)
Status.Size = UDim2.new(0, 200, 0, 30)
Status.Font = Enum.Font.SourceSansBold
Status.Text = "Status"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 25.000

Level.Name = "Level"
Level.Parent = ScrollingFrame
Level.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Level.BackgroundTransparency = 1.000
Level.BorderColor3 = Color3.fromRGB(0, 0, 0)
Level.BorderSizePixel = 0
Level.Position = UDim2.new(0.104999997, 0, 0.0500000007, 0)
Level.Size = UDim2.new(0, 200, 0, 30)
Level.Font = Enum.Font.SourceSansBold
Level.Text = "Level : nil"
Level.TextColor3 = Color3.fromRGB(255, 255, 255)
Level.TextSize = 25.000
Level.TextXAlignment = Enum.TextXAlignment.Left

Race.Name = "Race"
Race.Parent = ScrollingFrame
Race.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Race.BackgroundTransparency = 1.000
Race.BorderColor3 = Color3.fromRGB(0, 0, 0)
Race.BorderSizePixel = 0
Race.Position = UDim2.new(0.104999997, 0, 0.100000001, 0)
Race.Size = UDim2.new(0, 200, 0, 30)
Race.Font = Enum.Font.SourceSansBold
Race.Text = "Race : nil"
Race.TextColor3 = Color3.fromRGB(255, 255, 255)
Race.TextSize = 25.000
Race.TextXAlignment = Enum.TextXAlignment.Left

Beil.Name = "Beil"
Beil.Parent = ScrollingFrame
Beil.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Beil.BackgroundTransparency = 1.000
Beil.BorderColor3 = Color3.fromRGB(0, 0, 0)
Beil.BorderSizePixel = 0
Beil.Position = UDim2.new(0.104999997, 0, 0.150000006, 0)
Beil.Size = UDim2.new(0, 200, 0, 30)
Beil.Font = Enum.Font.SourceSansBold
Beil.Text = "Beil : nil"
Beil.TextColor3 = Color3.fromRGB(255, 255, 255)
Beil.TextSize = 25.000
Beil.TextXAlignment = Enum.TextXAlignment.Left

Fragments.Name = "Fragments"
Fragments.Parent = ScrollingFrame
Fragments.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fragments.BackgroundTransparency = 1.000
Fragments.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fragments.BorderSizePixel = 0
Fragments.Position = UDim2.new(0.104999997, 0, 0.200000003, 0)
Fragments.Size = UDim2.new(0, 200, 0, 30)
Fragments.Font = Enum.Font.SourceSansBold
Fragments.Text = "Fragments  : nil"
Fragments.TextColor3 = Color3.fromRGB(255, 255, 255)
Fragments.TextSize = 25.000
Fragments.TextXAlignment = Enum.TextXAlignment.Left

DevilFruit.Name = "DevilFruit"
DevilFruit.Parent = ScrollingFrame
DevilFruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DevilFruit.BackgroundTransparency = 1.000
DevilFruit.BorderColor3 = Color3.fromRGB(0, 0, 0)
DevilFruit.BorderSizePixel = 0
DevilFruit.Position = UDim2.new(0.104999997, 0, 0.25, 0)
DevilFruit.Size = UDim2.new(0, 200, 0, 30)
DevilFruit.Font = Enum.Font.SourceSansBold
DevilFruit.Text = "DevilFruit  : nil"
DevilFruit.TextColor3 = Color3.fromRGB(255, 255, 255)
DevilFruit.TextSize = 25.000
DevilFruit.TextXAlignment = Enum.TextXAlignment.Left

-- Server Status --

ServerStatus.Name = "ServerStatus"
ServerStatus.Parent = ScrollingFrame
ServerStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerStatus.BackgroundTransparency = 1.000
ServerStatus.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerStatus.BorderSizePixel = 0
ServerStatus.Position = UDim2.new(0.104999997, 0, 0.300000012, 0)
ServerStatus.Size = UDim2.new(0, 200, 0, 30)
ServerStatus.Font = Enum.Font.SourceSansBold
ServerStatus.Text = "Server Status"
ServerStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerStatus.TextSize = 25.000

Fullmoon.Name = "Fullmoon"
Fullmoon.Parent = ScrollingFrame
Fullmoon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fullmoon.BackgroundTransparency = 1.000
Fullmoon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fullmoon.BorderSizePixel = 0
Fullmoon.Position = UDim2.new(0.104999997, 0, 0.349999994, 0)
Fullmoon.Size = UDim2.new(0, 200, 0, 30)
Fullmoon.Font = Enum.Font.SourceSansBold
Fullmoon.Text = "Fullmoon : ❌"
Fullmoon.TextColor3 = Color3.fromRGB(255, 255, 255)
Fullmoon.TextSize = 25.000
Fullmoon.TextXAlignment = Enum.TextXAlignment.Left

MirageIsland.Name = "MirageIsland"
MirageIsland.Parent = ScrollingFrame
MirageIsland.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MirageIsland.BackgroundTransparency = 1.000
MirageIsland.BorderColor3 = Color3.fromRGB(0, 0, 0)
MirageIsland.BorderSizePixel = 0
MirageIsland.Position = UDim2.new(0.104999997, 0, 0.400000006, 0)
MirageIsland.Size = UDim2.new(0, 200, 0, 30)
MirageIsland.Font = Enum.Font.SourceSansBold
MirageIsland.Text = "MirageIsland  : ❌"
MirageIsland.TextColor3 = Color3.fromRGB(255, 255, 255)
MirageIsland.TextSize = 25.000
MirageIsland.TextXAlignment = Enum.TextXAlignment.Left

-- Server --

Server.Name = "Server"
Server.Parent = ScrollingFrame
Server.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Server.BackgroundTransparency = 1.000
Server.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server.BorderSizePixel = 0
Server.Position = UDim2.new(0.104999997, 0, 0.449999988, 0)
Server.Size = UDim2.new(0, 200, 0, 30)
Server.Font = Enum.Font.SourceSansBold
Server.Text = "Server"
Server.TextColor3 = Color3.fromRGB(255, 255, 255)
Server.TextSize = 25.000

Rejoin.Name = "Rejoin"
Rejoin.Parent = ScrollingFrame
Rejoin.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Rejoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rejoin.BorderSizePixel = 0
Rejoin.Position = UDim2.new(0.104999997, 0, 0.5, 0)
Rejoin.Size = UDim2.new(0, 200, 0, 30)
Rejoin.Font = Enum.Font.SourceSansBold
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextSize = 25.000

UICorner_4.CornerRadius = UDim.new(0, 30)
UICorner_4.Parent = Rejoin

Hop.Name = "Hop"
Hop.Parent = ScrollingFrame
Hop.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Hop.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hop.BorderSizePixel = 0
Hop.Position = UDim2.new(0.104999997, 0, 0.550000012, 0)
Hop.Size = UDim2.new(0, 200, 0, 30)
Hop.Font = Enum.Font.SourceSansBold
Hop.Text = "Hop Server"
Hop.TextColor3 = Color3.fromRGB(255, 255, 255)
Hop.TextSize = 25.000

UICorner_5.CornerRadius = UDim.new(0, 30)
UICorner_5.Parent = Hop

HopLowerPlayers.Name = "HopLowerPlayers"
HopLowerPlayers.Parent = ScrollingFrame
HopLowerPlayers.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
HopLowerPlayers.BorderColor3 = Color3.fromRGB(0, 0, 0)
HopLowerPlayers.BorderSizePixel = 0
HopLowerPlayers.Position = UDim2.new(0.104999997, 0, 0.600000024, 0)
HopLowerPlayers.Size = UDim2.new(0, 200, 0, 30)
HopLowerPlayers.Font = Enum.Font.SourceSansBold
HopLowerPlayers.Text = "Hop Lower Players"
HopLowerPlayers.TextColor3 = Color3.fromRGB(255, 255, 255)
HopLowerPlayers.TextSize = 25.000

UICorner_6.CornerRadius = UDim.new(0, 30)
UICorner_6.Parent = HopLowerPlayers

Logo.Name = "Logo"
Logo.Parent = ScrollingFrame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.115000002, 0, 0.649999976, 0)
Logo.Size = UDim2.new(0, 200, 0, 200)
Logo.Image = "rbxassetid://16014590522"

UICorner_7.CornerRadius = UDim.new(0, 30)
UICorner_7.Parent = Logo

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0399999991, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Image = "rbxassetid://16014590522"

UICorner_8.CornerRadius = UDim.new(0, 60)
UICorner_8.Parent = ImageLabel

-- Melee --

Melee.Name = "Melee"
Melee.Parent = ScrollingFrame
Melee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Melee.BackgroundTransparency = 1.000
Melee.BorderColor3 = Color3.fromRGB(0, 0, 0)
Melee.BorderSizePixel = 0
Melee.Position = UDim2.new(0.504999995, 0, 0, 0)
Melee.Size = UDim2.new(0, 200, 0, 30)
Melee.Font = Enum.Font.SourceSansBold
Melee.Text = "Melee"
Melee.TextColor3 = Color3.fromRGB(255, 255, 255)
Melee.TextSize = 25.000

DeathStep.Name = "DeathStep"
DeathStep.Parent = ScrollingFrame
DeathStep.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DeathStep.BackgroundTransparency = 1.000
DeathStep.BorderColor3 = Color3.fromRGB(0, 0, 0)
DeathStep.BorderSizePixel = 0
DeathStep.Position = UDim2.new(0.504999995, 0, 0.0500000007, 0)
DeathStep.Size = UDim2.new(0, 200, 0, 30)
DeathStep.Font = Enum.Font.SourceSansBold
DeathStep.Text = "Death Step : ❌"
DeathStep.TextColor3 = Color3.fromRGB(255, 255, 255)
DeathStep.TextSize = 25.000
DeathStep.TextXAlignment = Enum.TextXAlignment.Left

SharkmanKarate.Name = "SharkmanKarate"
SharkmanKarate.Parent = ScrollingFrame
SharkmanKarate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SharkmanKarate.BackgroundTransparency = 1.000
SharkmanKarate.BorderColor3 = Color3.fromRGB(0, 0, 0)
SharkmanKarate.BorderSizePixel = 0
SharkmanKarate.Position = UDim2.new(0.504999995, 0, 0.100000001, 0)
SharkmanKarate.Size = UDim2.new(0, 200, 0, 30)
SharkmanKarate.Font = Enum.Font.SourceSansBold
SharkmanKarate.Text = "Sharkman Karate  : ❌"
SharkmanKarate.TextColor3 = Color3.fromRGB(255, 255, 255)
SharkmanKarate.TextSize = 25.000
SharkmanKarate.TextXAlignment = Enum.TextXAlignment.Left

ElectricClaw.Name = "ElectricClaw"
ElectricClaw.Parent = ScrollingFrame
ElectricClaw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElectricClaw.BackgroundTransparency = 1.000
ElectricClaw.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElectricClaw.BorderSizePixel = 0
ElectricClaw.Position = UDim2.new(0.504999995, 0, 0.150000006, 0)
ElectricClaw.Size = UDim2.new(0, 200, 0, 30)
ElectricClaw.Font = Enum.Font.SourceSansBold
ElectricClaw.Text = "Electric Claw  : ❌"
ElectricClaw.TextColor3 = Color3.fromRGB(255, 255, 255)
ElectricClaw.TextSize = 25.000
ElectricClaw.TextXAlignment = Enum.TextXAlignment.Left

DragonTalon.Name = "DragonTalon"
DragonTalon.Parent = ScrollingFrame
DragonTalon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DragonTalon.BackgroundTransparency = 1.000
DragonTalon.BorderColor3 = Color3.fromRGB(0, 0, 0)
DragonTalon.BorderSizePixel = 0
DragonTalon.Position = UDim2.new(0.504999995, 0, 0.200000003, 0)
DragonTalon.Size = UDim2.new(0, 200, 0, 30)
DragonTalon.Font = Enum.Font.SourceSansBold
DragonTalon.Text = "Dragon Talon  : ❌"
DragonTalon.TextColor3 = Color3.fromRGB(255, 255, 255)
DragonTalon.TextSize = 25.000
DragonTalon.TextXAlignment = Enum.TextXAlignment.Left

Superhuman.Name = "Superhuman"
Superhuman.Parent = ScrollingFrame
Superhuman.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Superhuman.BackgroundTransparency = 1.000
Superhuman.BorderColor3 = Color3.fromRGB(0, 0, 0)
Superhuman.BorderSizePixel = 0
Superhuman.Position = UDim2.new(0.504999995, 0, 0.25, 0)
Superhuman.Size = UDim2.new(0, 200, 0, 30)
Superhuman.Font = Enum.Font.SourceSansBold
Superhuman.Text = "Superhuman  : ❌"
Superhuman.TextColor3 = Color3.fromRGB(255, 255, 255)
Superhuman.TextSize = 25.000
Superhuman.TextXAlignment = Enum.TextXAlignment.Left

GodHuamn.Name = "GodHuamn"
GodHuamn.Parent = ScrollingFrame
GodHuamn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GodHuamn.BackgroundTransparency = 1.000
GodHuamn.BorderColor3 = Color3.fromRGB(0, 0, 0)
GodHuamn.BorderSizePixel = 0
GodHuamn.Position = UDim2.new(0.504999995, 0, 0.300000012, 0)
GodHuamn.Size = UDim2.new(0, 200, 0, 30)
GodHuamn.Font = Enum.Font.SourceSansBold
GodHuamn.Text = "God Human  : ❌"
GodHuamn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodHuamn.TextSize = 25.000
GodHuamn.TextXAlignment = Enum.TextXAlignment.Left

-- Sword --

Sword.Name = "Sword"
Sword.Parent = ScrollingFrame
Sword.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sword.BackgroundTransparency = 1.000
Sword.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sword.BorderSizePixel = 0
Sword.Position = UDim2.new(0.504999995, 0, 0.349999994, 0)
Sword.Size = UDim2.new(0, 200, 0, 30)
Sword.Font = Enum.Font.SourceSansBold
Sword.Text = "Sword"
Sword.TextColor3 = Color3.fromRGB(255, 255, 255)
Sword.TextSize = 25.000

Saber.Name = "Saber"
Saber.Parent = ScrollingFrame
Saber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Saber.BackgroundTransparency = 1.000
Saber.BorderColor3 = Color3.fromRGB(0, 0, 0)
Saber.BorderSizePixel = 0
Saber.Position = UDim2.new(0.504999995, 0, 0.400000006, 0)
Saber.Size = UDim2.new(0, 200, 0, 30)
Saber.Font = Enum.Font.SourceSansBold
Saber.Text = "Saber  : ❌"
Saber.TextColor3 = Color3.fromRGB(255, 255, 255)
Saber.TextSize = 25.000
Saber.TextXAlignment = Enum.TextXAlignment.Left

Rengoku.Name = "Rengoku"
Rengoku.Parent = ScrollingFrame
Rengoku.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rengoku.BackgroundTransparency = 1.000
Rengoku.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rengoku.BorderSizePixel = 0
Rengoku.Position = UDim2.new(0.504999995, 0, 0.449999988, 0)
Rengoku.Size = UDim2.new(0, 200, 0, 30)
Rengoku.Font = Enum.Font.SourceSansBold
Rengoku.Text = "Rengoku  : ❌"
Rengoku.TextColor3 = Color3.fromRGB(255, 255, 255)
Rengoku.TextSize = 25.000
Rengoku.TextXAlignment = Enum.TextXAlignment.Left

SpikeyTrident.Name = "SpikeyTrident"
SpikeyTrident.Parent = ScrollingFrame
SpikeyTrident.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpikeyTrident.BackgroundTransparency = 1.000
SpikeyTrident.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpikeyTrident.BorderSizePixel = 0
SpikeyTrident.Position = UDim2.new(0.504999995, 0, 0.5, 0)
SpikeyTrident.Size = UDim2.new(0, 200, 0, 30)
SpikeyTrident.Font = Enum.Font.SourceSansBold
SpikeyTrident.Text = "Spikey Trident  : ❌"
SpikeyTrident.TextColor3 = Color3.fromRGB(255, 255, 255)
SpikeyTrident.TextSize = 25.000
SpikeyTrident.TextXAlignment = Enum.TextXAlignment.Left

DarkDagger.Name = "DarkDagger"
DarkDagger.Parent = ScrollingFrame
DarkDagger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarkDagger.BackgroundTransparency = 1.000
DarkDagger.BorderColor3 = Color3.fromRGB(0, 0, 0)
DarkDagger.BorderSizePixel = 0
DarkDagger.Position = UDim2.new(0.504999995, 0, 0.550000012, 0)
DarkDagger.Size = UDim2.new(0, 200, 0, 30)
DarkDagger.Font = Enum.Font.SourceSansBold
DarkDagger.Text = "Dark  Dagger  : ❌"
DarkDagger.TextColor3 = Color3.fromRGB(255, 255, 255)
DarkDagger.TextSize = 25.000
DarkDagger.TextXAlignment = Enum.TextXAlignment.Left

HallowScythe.Name = "HallowScythe"
HallowScythe.Parent = ScrollingFrame
HallowScythe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HallowScythe.BackgroundTransparency = 1.000
HallowScythe.BorderColor3 = Color3.fromRGB(0, 0, 0)
HallowScythe.BorderSizePixel = 0
HallowScythe.Position = UDim2.new(0.504999995, 0, 0.600000024, 0)
HallowScythe.Size = UDim2.new(0, 200, 0, 30)
HallowScythe.Font = Enum.Font.SourceSansBold
HallowScythe.Text = "Hallow Scythe  : ❌"
HallowScythe.TextColor3 = Color3.fromRGB(255, 255, 255)
HallowScythe.TextSize = 25.000
HallowScythe.TextXAlignment = Enum.TextXAlignment.Left

Yama.Name = "Yama"
Yama.Parent = ScrollingFrame
Yama.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yama.BackgroundTransparency = 1.000
Yama.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yama.BorderSizePixel = 0
Yama.Position = UDim2.new(0.504999995, 0, 0.649999976, 0)
Yama.Size = UDim2.new(0, 200, 0, 30)
Yama.Font = Enum.Font.SourceSansBold
Yama.Text = "Yama  : ❌"
Yama.TextColor3 = Color3.fromRGB(255, 255, 255)
Yama.TextSize = 25.000
Yama.TextXAlignment = Enum.TextXAlignment.Left

Tushita.Name = "Tushita"
Tushita.Parent = ScrollingFrame
Tushita.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tushita.BackgroundTransparency = 1.000
Tushita.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tushita.BorderSizePixel = 0
Tushita.Position = UDim2.new(0.504999995, 0, 0.699999988, 0)
Tushita.Size = UDim2.new(0, 200, 0, 30)
Tushita.Font = Enum.Font.SourceSansBold
Tushita.Text = "Tushita  : ❌"
Tushita.TextColor3 = Color3.fromRGB(255, 255, 255)
Tushita.TextSize = 25.000
Tushita.TextXAlignment = Enum.TextXAlignment.Left

Gun.Name = "Gun"
Gun.Parent = ScrollingFrame
Gun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gun.BackgroundTransparency = 1.000
Gun.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gun.BorderSizePixel = 0
Gun.Position = UDim2.new(0.504999995, 0, 0.75, 0)
Gun.Size = UDim2.new(0, 200, 0, 30)
Gun.Font = Enum.Font.SourceSansBold
Gun.Text = "Gun"
Gun.TextColor3 = Color3.fromRGB(255, 255, 255)
Gun.TextSize = 25.000

SoulGuita.Name = "SoulGuita"
SoulGuita.Parent = ScrollingFrame
SoulGuita.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SoulGuita.BackgroundTransparency = 1.000
SoulGuita.BorderColor3 = Color3.fromRGB(0, 0, 0)
SoulGuita.BorderSizePixel = 0
SoulGuita.Position = UDim2.new(0.504999995, 0, 0.800000012, 0)
SoulGuita.Size = UDim2.new(0, 200, 0, 30)
SoulGuita.Font = Enum.Font.SourceSansBold
SoulGuita.Text = "Soul Guitar : ❌"
SoulGuita.TextColor3 = Color3.fromRGB(255, 255, 255)
SoulGuita.TextSize = 25.000
SoulGuita.TextXAlignment = Enum.TextXAlignment.Left

Accessory.Name = "Accessory"
Accessory.Parent = ScrollingFrame
Accessory.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Accessory.BackgroundTransparency = 1.000
Accessory.BorderColor3 = Color3.fromRGB(0, 0, 0)
Accessory.BorderSizePixel = 0
Accessory.Position = UDim2.new(0.504999995, 0, 0.850000024, 0)
Accessory.Size = UDim2.new(0, 200, 0, 30)
Accessory.Font = Enum.Font.SourceSansBold
Accessory.Text = "Accessory"
Accessory.TextColor3 = Color3.fromRGB(255, 255, 255)
Accessory.TextSize = 25.000

ValkyrieHelmet.Name = "ValkyrieHelmet"
ValkyrieHelmet.Parent = ScrollingFrame
ValkyrieHelmet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ValkyrieHelmet.BackgroundTransparency = 1.000
ValkyrieHelmet.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValkyrieHelmet.BorderSizePixel = 0
ValkyrieHelmet.Position = UDim2.new(0.504999995, 0, 0.899999976, 0)
ValkyrieHelmet.Size = UDim2.new(0, 200, 0, 30)
ValkyrieHelmet.Font = Enum.Font.SourceSansBold
ValkyrieHelmet.Text = "Valkyrie Helmet : ❌"
ValkyrieHelmet.TextColor3 = Color3.fromRGB(255, 255, 255)
ValkyrieHelmet.TextSize = 25.000

-- Scripts:

local function EIJYTZS_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local player = game.Players.LocalPlayer
	
	local userId = player.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
	frame.PlayerImage.Image = content
	frame.PlayerName.Text = player.Name
end
coroutine.wrap(EIJYTZS_fake_script)()
