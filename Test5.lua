-- [Load] -- 

if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

-- [Ui] --

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
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner_3 = Instance.new("UICorner")
local DeathStep = Instance.new("TextLabel")
local SharkmanKarate = Instance.new("TextLabel")
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
Frame.Position = UDim2.new(0.27, 0, 0.0001, 0)
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

-- [Information] --

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.15, 0, 2.5, 0)
Frame_2.Size = UDim2.new(0, 650, 0, 350)
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
TextLabel_2.Text = "Information"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000

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

-- [Status] --

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

-- [Server Status] --

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

-- [Server] --

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

-- [Melee] --

Melee.Name = "Melee"
Melee.Parent = ScrollingFrame
Melee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Melee.BackgroundTransparency = 1.000
Melee.BorderColor3 = Color3.fromRGB(0, 0, 0)
Melee.BorderSizePixel = 0
Melee.Position = UDim2.new(0.574999988, 0, 0, 0)
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
DeathStep.Position = UDim2.new(0.574999988, 0, 0.0500000007, 0)
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
SharkmanKarate.Position = UDim2.new(0.574999988, 0, 0.100000001, 0)
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
ElectricClaw.Position = UDim2.new(0.574999988, 0, 0.150000006, 0)
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
DragonTalon.Position = UDim2.new(0.574999988, 0, 0.200000003, 0)
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
Superhuman.Position = UDim2.new(0.574999988, 0, 0.25, 0)
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
GodHuamn.Position = UDim2.new(0.574999988, 0, 0.300000012, 0)
GodHuamn.Size = UDim2.new(0, 200, 0, 30)
GodHuamn.Font = Enum.Font.SourceSansBold
GodHuamn.Text = "God Human  : ❌"
GodHuamn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodHuamn.TextSize = 25.000
GodHuamn.TextXAlignment = Enum.TextXAlignment.Left

-- [Sword] --

Sword.Name = "Sword"
Sword.Parent = ScrollingFrame
Sword.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sword.BackgroundTransparency = 1.000
Sword.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sword.BorderSizePixel = 0
Sword.Position = UDim2.new(0.574999988, 0, 0.349999994, 0)
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
Saber.Position = UDim2.new(0.574999988, 0, 0.400000006, 0)
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
Rengoku.Position = UDim2.new(0.574999988, 0, 0.449999988, 0)
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
SpikeyTrident.Position = UDim2.new(0.574999988, 0, 0.5, 0)
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
DarkDagger.Position = UDim2.new(0.574999988, 0, 0.550000012, 0)
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
HallowScythe.Position = UDim2.new(0.574999988, 0, 0.600000024, 0)
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
Yama.Position = UDim2.new(0.574999988, 0, 0.649999976, 0)
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
Tushita.Position = UDim2.new(0.574999988, 0, 0.699999988, 0)
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
Gun.Position = UDim2.new(0.574999988, 0, 0.75, 0)
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
SoulGuita.Position = UDim2.new(0.574999988, 0, 0.800000012, 0)
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
Accessory.Position = UDim2.new(0.574999988, 0, 0.850000024, 0)
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
ValkyrieHelmet.Position = UDim2.new(0.574999988, 0, 0.899999976, 0)
ValkyrieHelmet.Size = UDim2.new(0, 200, 0, 30)
ValkyrieHelmet.Font = Enum.Font.SourceSansBold
ValkyrieHelmet.Text = "Valkyrie Helmet : ❌"
ValkyrieHelmet.TextColor3 = Color3.fromRGB(255, 255, 255)
ValkyrieHelmet.TextSize = 25.000
ValkyrieHelmet.TextXAlignment = Enum.TextXAlignment.Left

local function QVGP_fake_script()
	local script = Instance.new('LocalScript', ScreenGui)

	local Gui = script.Parent
	local LogoButtonRight = script.Parent.Frame.ImageButton
	local CheckItem = script.Parent.Frame.Frame

	LogoButtonRight.MouseButton1Click:Connect(function()
		CheckItem.Visible = not CheckItem.Visible
	end)
end
coroutine.wrap(QVGP_fake_script)()

---------------------------------------------------------------------

-- [Auto Team] --

pcall(function()
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    	repeat wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
                if _G.Team == "Pirate" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                        v.Function()
	    			end
                elseif _G.Team == "Marine" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do
                        v.Function()
                    end
                else
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                        v.Function()
                    end
    			end
            end
        until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
    end
end)

_G.AutoFarmLevel = true

-- [Use Code] --




function CheckQuest()
    local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if MyLevel == 1 or MyLevel <= 9 then -- Bandit [Lv. 5]
		Mon = "Bandit"
		Quest = "BanditQuest1"
		LevelQuest = 1
		CFrameMon = CFrame.new(1095, 55, 1572, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(1060, 16, 1549, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 10 or MyLevel <= 89 then -- Gorilla [Lv. 20]
		pcall(function()
			if game:GetService("Workspace").Enemies:FindFirstChild("Shanda") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Shanda" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait()
							Haki()
							Melee()
							PosMon = v.HumanoidRootPart.CFrame
							TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							BringMob = true
							FastAttack = true
							game:GetService("VirtualUser"):CaptureController()
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
						until v.Humanoid.Health <= 0 or not v.Parent
						UnEquip()
						BringMob = false
						FastAttack = false
					end
				end
			else 
				local Distance = (Vector3.new(-7895, 5547, -380, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
				if Distance > 1000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380)) -- Bypass Sky 2
				end
				TP(CFrame.new(-7688, 5601, -441, 1, 0, 0, 0, 1, 0, 0, 0, 1))
			end
		end)

	elseif MyLevel == 90 or MyLevel <= 119 then -- Gorilla [Lv. 20]
        pcall(function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
			for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
				if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
					repeat wait()
						Haki()
						Melee()
						TP(v.HumanoidRootPart.CFrame * CFrame.new( 1,7,3))
						local Distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance < 10 then
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
							wait(0.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
							wait(0.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
							wait(0.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
						end						
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
					until v.Humanoid.Health <= 0 or not v.Parent
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
			end
		end)
	
	elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer [Lv. 120]
		Mon = "Chief Petty Officer"
		Quest = "MarineQuest2"
		LevelQuest = 1
		CFrameMon = CFrame.new(-4769, 5, 4296, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-5038, 29, 4323, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(-5038, 29, 4323, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5038, 29, 4323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "MarineBase")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "MarineBase")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "MarineBase")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "MarineBase")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "MarineBase")
			_G.NoClip = false
		end

	elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit [Lv. 150]
		Mon = "Sky Bandit"
		Quest = "SkyQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-4945, 317, -2785, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Sky")
			_G.NoClip = false
		end

	elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master [Lv. 175]
		Mon = "Dark Master"
		Quest = "SkyQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(-5225, 430, -2280, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Sky")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Sky")
			_G.NoClip = false
		end

	elseif MyLevel == 190 or MyLevel <= 209 then -- Prisoner [Lv. 190]
		Mon = "Prisoner"
		Quest = "PrisonerQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(5090, 40, 424, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(5310, 0, 474, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5310, 0, 474, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Prison")
			_G.NoClip = false
		end

	elseif MyLevel == 210 or MyLevel <= 249 then -- Dangerous Prisoner [Lv. 210]
		Mon = "Dangerous Prisoner"
		Quest = "PrisonerQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(5646, 40, 765, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(5310, 0, 474, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(5310, 0, 474, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5310, 0, 474, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Prison")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Prison")
			_G.NoClip = false
		end

	elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior [Lv. 250]
		Mon = "Toga Warrior"
		Quest = "ColosseumQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-1851, 40, -2925, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-1577, 7.50791311, -2987, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(-1851, 40, -2925, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1851, 40, -2925, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Colosseum")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Colosseum")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Colosseum")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Colosseum")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Colosseum")
			_G.NoClip = false
		end

	elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier [Lv. 300]
		Mon = "Military Soldier"
		Quest = "MagmaQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-5465, 111, 8675, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Magma")
			_G.NoClip = false
		end

	elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy [Lv. 325]
		Mon = "Military Spy"
		Quest = "MagmaQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(-5756, 172, 8771, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Magma")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Magma")
			_G.NoClip = false
		end

	elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior [Lv. 375]
		Mon = "Fishman Warrior"
		Quest = "FishmanQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(60891, 96, 1545, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(61123, 18, 1566, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	
	local Distance = (Vector3.new(61123, 18, 1566, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance > 3000 then
	   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61165, 10, 1820)) -- Bypass Fishman Island
	end

	elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando [Lv. 400]
		Mon = "Fishman Commando"
		Quest = "FishmanQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(61955, 76, 1584, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(61123, 18, 1566, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	local Distance = (Vector3.new(61123, 18, 1566, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance > 3000 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61165, 10, 1820)) -- Bypass Fishman Island
	end

	elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guard [Lv. 450]
		Mon = "God's Guard"
		Quest = "SkyExp1Quest"
		LevelQuest = 1
		CFrameQuest = CFrame.new(-4722, 845, -1949, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameMon = CFrame.new(-4664, 931, -1737, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	local Distance = (Vector3.new(-4720, 845, -1955) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance > 1000 then
	   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4625, 850, -1705)) -- Bypass Sky 1
	end

	elseif MyLevel == 475 or MyLevel <= 524 then -- Shanda [Lv. 475]
		Mon = "Shanda"
		Quest = "SkyExp1Quest"
		LevelQuest = 2
		CFrameMon = CFrame.new(-7688, 5601, -441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-7862, 5545, -381, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	local Distance = (Vector3.new(-7856, 5545, -382, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance > 1000 then
	   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380)) -- Bypass Sky 2
	end

	elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad [Lv. 525]
		Mon = "Royal Squad"
		Quest = "SkyExp2Quest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-7633, 5637, -1428, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-7905, 5636, -1414, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	local Distance = (Vector3.new(-7905, 5636, -1414, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance > 1000 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380)) -- Bypass Sky 2
	end

	elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier [Lv. 550]
		Mon = "Royal Soldier"
		Quest = "SkyExp2Quest"
		LevelQuest = 2
		CFrameMon = CFrame.new(-7760, 5680, -1887, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-7905, 5636, -1414, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		
		local Distance = (Vector3.new(-7905, 5636, -1414, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance > 1000 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5440, 77 ,-6416)) -- Bypass Sky 2
	end

	elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate [Lv. 625]
		Mon = "Galley Pirate"
		Quest = "FountainQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(5559, 152, 4000, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(5258, 39, 4049, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(5258, 39, 4049, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5258, 39, 4049, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Fountain")
			_G.NoClip = false
		end

	elseif MyLevel >= 650 then -- Galley Captain [Lv. 650]
		Mon = "Galley Captain"
		Quest = "FountainQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(5678, 93, 4968, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(5258, 39, 4049, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local Distance = (Vector3.new(5258, 39, 4049, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance >= 1000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			_G.NoClip = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5258, 39, 4049, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(3.8)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Fountain")
			wait(0.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Fountain")
			_G.NoClip = false
		end

	elseif game.Players.LocalPlayer.Data.Level.Value >= 700 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then -- Saber
		pcall(function()
			if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
				if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
					if (CFrame.new(-1612, 36, 148).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
						TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
						wait(1) 
					else
						local Distance = (Vector3.new(-1612, 36, 148) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance >= 1000 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							_G.NoClip = true
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612, 36, 148)
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Jungle")
							wait(0.1)
							game.Players.LocalPlayer.Character.Humanoid.Health = 0
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Jungle")
							wait(3.8)
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Jungle")
							wait(0.1)
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF"):InvokeServer("SetLastSpawnPoint", "Jungle")
							wait(0.1)
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetLastSpawnPoint", "Jungle")
							_G.NoClip = false
						end
						TP(CFrame.new(-1612, 36, 148))
					end
				else
					if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
							Equip("Torch")
							TP(CFrame.new(1114, 5, 4350, -1, -7, 1, -4, 1, 5, -1, 6, -1))
						else
							TP(CFrame.new(-1610, 11, 164))                 
						end
					else
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
							wait(0.5)
							Equip("Cup")
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
							wait(0)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
									TP(CFrame.new(-2880, 6, 5430))
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Mob Leader" then
											repeat wait()
												Haki()
												Melee()
												TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												FastAttack = true
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
											until v.Humanoid.Health <= 0 or not v.Parent
											UnEquip()
											FastAttack = false
										end
									end
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
								wait(0.5)
								Equip("Relic")
								wait(0.5)
								TP(CFrame.new(-1404, 29, 3, 0, 0, 1, 0, 1, 0, -1, 0, 0))
							end
						end
					end
				end
			else
				if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
					TP(CFrame.new(-1401, 29, 8))
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Saber Expert" then
							repeat wait()
								Haki()
								Melee()
								TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								FastAttack = true
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
							until v.Humanoid.Health <= 0 or not v.Parent
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
							UnEquip()
							FastAttack = false
						end
					end
				end
			end
    	end)
		
	elseif game.Players.LocalPlayer.Data.Level.Value >= 700 and  game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 1  then -- Go To Second World
		pcall(function()
			if game.Workspace.Map.Ice.Door.Transparency == 0 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
				Equip("Key")
				TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
			elseif game.Workspace.Map.Ice.Door.Transparency == 1 then
				if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
							repeat wait()
								Haki()
								Melee()
								TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								FastAttack = true
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
							until v.Humanoid.Health <= 0 or not v.Parent
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							UnEquip()
							FastAttack = false
						end
					end
				else
					TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
				end
			end
		end)
	end
end

-- [Auto Farm] --

spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoFarmLevel then
				CheckQuest()
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					TP(CFrameQuest)
					if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",Quest,LevelQuest)
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					TP(CFrameMon)
					if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Mon) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									Haki()
									Melee()
									PosMon = v.HumanoidRootPart.CFrame
									TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									BringMob = true
									FastAttack = true
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
								until v.Humanoid.Health <= 0 or not v.Parent
								UnEquip()
								BringMob = false
								FastAttack = false
							end
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					end
				end
			end
		end)
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


spawn(function()
	while wait() do
		pcall(function()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sound Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sound-Sound",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sound Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blizzard-Blizzard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mammoth Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Mammoth-Mammoth",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mammoth Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","T-Rex-T-Rex",game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kitsune-Kitsune",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit"))
			end
		end)
	end
end)

spawn(function()
	while wait(.1) do
		if game.Players.LocalPlayer.Data.Stats.Melee.Level.Value <= 2549 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
		until game.Players.LocalPlayer.Data.Stats.Melee.Level.Value == 2550
	elseif  game.Players.LocalPlayer.Data.Stats.Defense.Level.Value <= 2549 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", 1)
			until game.Players.LocalPlayer.Data.Stats.Defense.Level.Value == 2550
		end
	end
end)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBuyBlackLeg",true) == 0 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end

-- [Equip] --

function Equip(ToolX)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX) then
        getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol)
    end
end
function UnEquip()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
end
function Melee()    
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.ClassName == "Tool" then
			if v.ToolTip == "Melee" then
				Equip(v.Name)
			end
		end
	end
end	
function Sword()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.ClassName == "Tool" then
			if v.ToolTip == "Sword" then
				Equip(v.Name)
			end
		end
	end
end
function Gun()    
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.ClassName == "Tool" then
			if v.ToolTip == "Gun" then
			 Equip(v.Name)
			end
		end
	end
end
function BloxFruit()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.ClassName == "Tool" then
			if v.ToolTip == "Blox Fruit" then
				 Equip(v.Name)
			end
		end
	end
end
spawn(function()
	while wait(2) do
		pcall(function()
			if AutoHaki then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end
		end)
	end
end)

-- [Tween Service] --

function TP(P)
	Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 100 then
		Speed = 1000
    elseif Distance < 200 then
		Speed = 500
    elseif Distance < 300 then
		Speed = 400
	elseif Distance < 500 then
		Speed = 350
	elseif Distance < 1000 then
		Speed = 320
    elseif Distance >= 1000 then
		Speed = 320 
    end

    game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P}
	):Play()
end
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if  
			_G.AutoFarmLevel or _G.EnabledDressrosaQuest or _G.AutoFarmDevilFruitMastery or _G.AutoFarmGunMastery or _G.AutoFarmBosses or _G.AutoFarmObservation or _G.AutoFarmChests or _G.MobAura or
            _G.AutoFarmMaterials or _G.AutoSharkSaw or _G.AutoSaber or _G.AutoTrident or _G.AutoPole or _G.AutoBisentoV2 or
            _G.TeleportPlayers or _G.TeleportIsland or
            _G.TweenToFruits or
			_G.NoClip then
				if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000,100000,100000)
					Noclip.Velocity = Vector3.new(0,0,0)
			 	end
		  	else	
			 	if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			 	end
		  	end
		end)
	end)
end)
spawn(function()
	pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
			if  
			_G.AutoFarmLevel or _G.EnabledDressrosaQuest or _G.AutoFarmDevilFruitMastery or _G.AutoFarmGunMastery or _G.AutoFarmBosses or _G.AutoFarmObservation or _G.AutoFarmChests or _G.MobAura or
            _G.AutoFarmMaterials or _G.AutoSharkSaw or _G.AutoSaber or _G.AutoTrident or _G.AutoPole or _G.AutoBisentoV2 or
            _G.TeleportPlayers or _G.TeleportIsland or
            _G.TweenToFruits or
			_G.NoClip then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
    	end)
	end)
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		if  
		_G.AutoFarmLevel or _G.EnabledDressrosaQuest or _G.AutoFarmDevilFruitMastery or _G.AutoFarmGunMastery or _G.AutoFarmBosses or _G.AutoFarmObservation or _G.AutoFarmChests or _G.MobAura or
		_G.AutoFarmMaterials or _G.AutoSharkSaw or _G.AutoSaber or _G.AutoTrident or _G.AutoPole or _G.AutoBisentoV2 or
		_G.TeleportPlayers or _G.TeleportIsland or
		_G.TweenToFruits or
		_G.NoClip then
			if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30,-0.5,30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -4.015, 0)
			end
        else
			if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
end)

-- [Bring Mob] --

spawn(function()
	while wait() do
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if BringMob then
					if v.Name == NameMon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then 
						if syn then
							if isnetworkowner(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid.WalkSpeed = 0
								v.Humanoid.JumpPower = 0
								v.Humanoid.Sit = true
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
							end
						else
							v.HumanoidRootPart.CFrame = PosMon
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid.WalkSpeed = 0
							v.Humanoid.JumpPower = 0
							v.Humanoid.Sit = true
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid:ChangeState(11)	
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					elseif (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
						if syn then
							if isnetworkowner(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.Humanoid.Sit = true
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(5,5,5)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
							end
						else
							v.HumanoidRootPart.CFrame = PosMon
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(5,5,5)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end
		end)
	end
end)
		
-- [Fast Attck] --

local ExamList = {}

for i = 1, 20 do
    table.insert(ExamList, "Option "..i)
end
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(50)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.1,0.5,0.2,0.8)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end

spawn(function()
    while wait() do
        pcall(function()
            if FastAttack then
                repeat wait(0)
                    AttackFunction()
                until not FastAttack
            end
        end)
    end
end)

local j = game:GetService("UserInputService")
local c = game:GetService("ReplicatedStorage")
local e = c:WaitForChild("Remotes")
local E = e:WaitForChild("CommF_")
local a = e:WaitForChild("CommE")
local l = game:GetService("HttpService")
local t = game:GetService("RunService")
local q = workspace:WaitForChild("Enemies")
local s = game:GetService("Teams")
local J = game:GetService("Players")
local W = game:GetService("VirtualUser")
local x = J.LocalPlayer
getgenv().increment = nil
local Q = require(x.PlayerScripts.CombatFramework)
local Y = getupvalues(Q)[2]
coroutine.wrap(function()
    while true do wait(1)
        pcall(function()
            for x, f in pairs(Y.activeController.anims.basic) do
                getgenv().increment = x
            end
        end)
    end
end
)()
local J = game:GetService('VirtualUser')
local function L()
    spawn(function()
        pcall(function()
            b.activeController:attack()
        end)
    end)
end
getgenv().hit = function()
    L()
end
cd = 0
local function G()
    spawn(function()
        pcall(function()
            if tick() >= cd then
                if game.PlaceId == 2753915549 then
                    cd = tick() + 1.0E-10
                elseif game.PlaceId == 4442272183 then
                    cd = tick() + 1.0E-6
                else
                    cd = tick() + 1.0E-10
                end
                Y.activeController:attack()
            end
        end)
    end)
end
local C = require(game.ReplicatedStorage.Util.CameraShaker):Stop()
function CurrentWeapon()
    local p13 = Y.activeController
    local ret = p13.blades[1]
    if not ret then
        return
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do
        ret = ret.Parent
    end
    return ret
end
function Boost()
    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()))
end
function Unboost()
    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon", tostring(CurrentWeapon()))
end
spawn(function()
    while true do wait(1)
        pcall(function()
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                getgenv().E_Tools = tostring(r.Character:FindFirstChildOfClass("Tool").Name)
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild(getgenv().E_Tools) then
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Remove()
                end
            end
        end)
    end
end)
local ply = game.Players.LocalPlayer
local Combatfram1 = debug.getupvalues(require(ply.PlayerScripts.CombatFramework))
local Combatfram2 = Combatfram1[2]
function GetCurrentBlade()
    local p13 = Combatfram2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function blademon(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end
function Attack()
    local active = Combatfram2.activeController
    for i = 1, 1 do 
        bladehit = blademon(60);
        if #bladehit > 0 then
            local u8 = debug.getupvalue(active.attack, 5);
            local u9 = debug.getupvalue(active.attack, 6);
            local u7 = debug.getupvalue(active.attack, 4);
            local u10 = debug.getupvalue(active.attack, 7);
            local u12 = (u8 * 798405 + u7 * 727595) % u9;
            local u13 = u7 * 798405;
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776;
                u8 = math.floor(u12 / u9);
                u7 = u12 - u8 * u9;
            end)()
            u10 = u10 + 1;
            debug.setupvalue(active.attack, 5, u8);
            debug.setupvalue(active.attack, 6, u9);
            debug.setupvalue(active.attack, 4, u7);
            debug.setupvalue(active.attack, 7, u10);
            pcall(function()
                for k, v in pairs(active.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if ply.Character:FindFirstChildOfClass("Tool") and active.blades and active.blades[1] and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then 
                wait(math.random(0.1,0.2));
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()));
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10);
                wait();
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "");
            end
        end
    end
end
FastAttacked = 0
spawn(function()
    while wait(FastAttacked) do 
        if FastAttack then
            pcall(function ()
                if FastAttack == "MB" then
                    FastAttacked = 0.25
                    Attack()
                else
                    FastAttacked = 0.01
                    Attack()
                end
            end)
        end
    end
end)
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1 
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01,0.01,0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
				end
			end
		end
	end
end

spawn(function()
    pcall(function()
    while wait(1) do
        if FastAttack then
            AttackFunction()
           end
        end
    end)
end)
spawn(function()
	local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
	for i,v in pairs(getreg()) do
		if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
			for x,y in pairs(debug.getupvalues(v)) do
				if typeof(y) == "table" then
					spawn(function()
						game:GetService("RunService").RenderStepped:Connect(function()
							if FastAttack then
								pcall(function()
									require(game.ReplicatedStorage.Util.CameraShaker):Stop()
									y.activeController:Click()
									y.activeController.attacking = false
									y.activeController.increment = 4
									y.activeController.hitboxMagnitude = 150
									y.activeController.humanoid.AutoRotate = false
									y.activeController.blocking = false
									y.activeController.timeToNextBlock = false
									y.activeController.focusStart = 0
									y.activeController.currentAttackTrack = 0
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
								end)
							end
						end)
					end)
				end
			end
		end
	end
end)
spawn(function()
	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	game:GetService("RunService").RenderStepped:Connect(function()
		if FastAttack then
			pcall(function()
				if getupvalues(CombatFramework)[2]['activeController'].timeToNextAttack then
					getupvalues(CombatFramework)[2]['activeController'].timeToNextAttack = 0
					getupvalues(CombatFramework)[2]['activeController'].hitboxMagnitude = 25
					getupvalues(CombatFramework)[2]['activeController']:attack()
				end
			end)
        end
    end)
end)
function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

-- [Not Lag Attack] --

if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
	game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
		pcall(function()
			if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
				game.Players.LocalPlayer.Character.Stun.Value = 0
			end
		end)
	end)
end

spawn(function()
	while wait() do
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
			pcall(function()
				if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
					v:Destroy()
				end
			end)
		end
	end
end)

getgenv().NoDieEffect = true 
if getgenv().NoDieEffect then
	if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
		game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
	end
	if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
		game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
	end
end

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function DisabledDamage()
	spawn(function()
		while wait() do
			pcall(function()
				if FastAttack then
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				else
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				end
			end)
		end
	end)
end

function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end


if game:GetService("Players").LocalPlayer.Data.Level.Value == 700 then
	game.Players.LocalPlayer:Kick("ใส่ตัวหนังสือเช่น ฮับเรากำลังอัพเดช เเบบนี้อะ:white_check_mark:")
end
