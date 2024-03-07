DevilFruitTable = {
	"Rocket-Rocket",
	"Spin-Spin", 
	"Chop-Chop",
	"Spring-Spring",
	"Bomb-Bomb",
	"Smoke-Smoke",
	"Spike-Spike",
	"Flame-Flame",
	"Falcon-Falcon",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Diamond-Diamond",
	"Light-Light",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Ghost-Ghost",
	"Magma-Magma",
	"Quake-Quake",
	"Buddha-Buddha",
	"Love-Love",
	"Spider-Spider",
	"Sound-Sound",
	"Phoenix-Phoenix",
	"Portal-Portal",
	"Rumble-Rumble",
	"Paw-Paw",
	"Blizzard-Blizzard",
	"Gravity-Gravity",
	"Mammoth-Mammoth",
	"T-Rex-T-Rex",
	"Dough-Dough",
	"Shadow-Shadow",
	"Venom-Venom",
	"Control-Control",
	"Spirit-Spirit",
	"Dragon-Dragon",
	"Leopard-Leopard",
	"Kitsune-Kitsune"
}


local placeId = game.PlaceId
if placeId == 2753915549 then
	World1 = true
elseif placeId == 4442272183 then
	World2 = true
elseif placeId == 7449423635 then
	World3 = true
end
do

local MaterialMethod
if World1 then
	MaterialMethod = {
		"Magma Ore",
		"Angel Wings",
		"Leather",
		"Scrap Metal",
		"Radioactive Material",
	}
elseif World2 then
	MaterialMethod = {
		"Mystic Droplet",
		"Magma Ore",
		"Leather",
		"Scrap Metal",
		"Demonic Wisp",
		"Vampire Fang",
		"Radioactive Material",
	}
elseif World3 then
	MaterialMethod = {
		"Leather",
		"Scrap Metal",
		"Vampire Fang",
		"Conjured Cocoa",
		"Dragon Scale",
		"Gunpowder",
		"Fish Tail",
		"Mini Tusk",
		"Radioactive Material",
	}
end

function CheckMaterial()
	if _G.SelectMaterial == "Radioactive Material" then
		MaterialMon = "Factory Staff"
		MaterialCFrame = CFrame.new(-507, 73, -126)
	elseif _G.SelectMaterial == "Mystic Droplet" then
		MaterialMon = "Water Fighter"
		MaterialCFrame = CFrame.new(-3214, 300, -10544)
	elseif _G.SelectMaterial == "Magma Ore" then
		if World1 then
			MaterialMon = "Military Spy"
			MaterialCFrame = CFrame.new(-5850, 78, 8849)
		elseif World2 then
			MaterialMon = "Lava Pirate"
			MaterialCFrame = CFrame.new(-5235, 52, -4732)
		end
	elseif _G.SelectMaterial == "Angel Wings" then
		MaterialMon = "Royal Soldier"
		MaterialCFrame = CFrame.new(-7827, 5607, -1705)
	elseif _G.SelectMaterial == "Leather" then
		if World1 then
			MaterialMon = "Pirate"
			MaterialCFrame = CFrame.new(-1212, 5, 3917)
		elseif World2 then
			MaterialMon = "Marine Captain"
			MaterialCFrame = CFrame.new(-2010, 74, -3327)
		elseif World3 then
			MaterialMon = "Jungle Pirate"
			MaterialCFrame = CFrame.new(-11976, 332, -10620)
		end
	elseif _G.SelectMaterial == "Scrap Metal" then
		if World1 then
			MaterialMon = "Brute"
			MaterialCFrame = CFrame.new(-1132, 15, 4293)
		elseif World2 then
			MaterialMon = "Mercenary"
			MaterialCFrame = CFrame.new(-972, 74, 1419)
		elseif World3 then
			MaterialMon = "Pirate Millionaire"
			MaterialCFrame = CFrame.new(-290, 44, 5584)
		end
	elseif _G.SelectMaterial == "Demonic Wisp" then
		MaterialMon = "Demonic Soul"
		MaterialCFrame = CFrame.new(-9503, 173, 6143)
	elseif _G.SelectMaterial == "Vampire Fang" then
		MaterialMon = "Vampire"
		MaterialCFrame = CFrame.new(-5999, 7, -1290)
	elseif _G.SelectMaterial == "Conjured Cocoa" then
		MaterialMon = "Chocolate Bar Battler"
		MaterialCFrame = CFrame.new(745, 25, -12638)
	elseif _G.SelectMaterial == "Dragon Scale" then
		MaterialMon = "Dragon Crew Warrior"
		MaterialCFrame = CFrame.new(5824, 52, -1107)
	elseif _G.SelectMaterial == "Gunpowder" then
		MaterialMon = "Pistol Billionaire"
		MaterialCFrame = CFrame.new(-380, 74, 5928)
	elseif _G.SelectMaterial == "Fish Tail" then
		MaterialMon = "Fishman Captain"
		MaterialCFrame = CFrame.new(-10961, 332, -8914)
	elseif _G.SelectMaterial == "Mini Tusk" then
		MaterialMon = "Mythological Pirate"
		MaterialCFrame = CFrame.new(-13516, 470, -6899)
	end
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
		Title = "Serity Hub " .. Fluent.Version,
		SubTitle = "",
		TabWidth = 160,
		Size = UDim2.fromOffset(580, 460),
		Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
		Theme = "Dark",
		MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
		Main = Window:AddTab({ Title = "Main", Icon = "" }),
		Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
		M = Window:AddTab({ Title = "Menu", Icon = "" })
		Stats = Window:AddTab({ Title = "Stats", Icon = "" })
		Item = Window:AddTab({ Title = "Item", Icon = "" })
		Esp = Window:AddTab({ Title = "Esp", Icon = "" })
		Combat = Window:AddTab({ Title = "Combat", Icon = "" })
        Teleport = Window:AddTab({ Title = "Teleport", Icon = "" })
        Shop = Window:AddTab({ Title = "Shop", Icon = "" })
        Misc = Window:AddTab({ Title = "Misc", Icon = "" })
		M2 = Window:AddTab({ Title = "Menu", Icon = "" })
}

local Options = Fluent.Options

end

do
	Fluent:Notify({
		Title = "Notification",
		Content = "This is a notification",
		SubContent = "SubContent", -- Optional
		Duration = 5 -- Set to nil to make the notification not disappear
	})

	Tabs.M:AddParagraph({
		Title = "🏡 Home Menu 🏡",
		Content = ""
	})
	 
	--- Select Weapon
	local DDWeapon = Tabs.M:AddDropdown("Dropdown", {
		Title = "- Select Weapon",
		Values = {"Melee","Sword" ,"Blox Fruit"},
		Multi = false,
		Default = 1,
	})

	DDWeapon:SetValue("Melee")

	DDWeapon:OnChanged(function(Value)
		_G.SelectWeapon = Value
	end)
	--- Select Weapon end

	--- Auto Farm Level 
	local TAutoFarmLevel= Tabs.M:AddToggle("MyToggle", {Title = "- Auto Farm Level ", Default = false })

	TAutoFarmLevel:OnChanged(function()
		_G.AutoFarmLevel = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Auto Farm Level end
		
	--- Enabled Dressrosa Quest
	local TEnabledDressrosaQuest = Tabs.M:AddToggle("MyToggle", {Title = "- Enabled Dressrosa Quest", Default = false })

	TEnabledDressrosaQuest:OnChanged(function()
		_G.EnabledDressrosaQuest  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Enabled Dressrosa Quest end

		
	Tabs.M:AddParagraph({
		Title = "Mastery Farm",
		Content = ""
	})

	--- Auto Farm Devil Fruit Mastery
	local TAutoFarmDevilFruitMastery = Tabs.M:AddToggle("MyToggle", {Title = "- Auto Farm Devil Fruit Mastery", Default = false })

	TAutoFarmDevilFruitMastery:OnChanged(function()
		_G.AutoFarmDevilFruitMastery = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Auto Farm Devil Fruit Mastery end
	
	--- AutoFarmGunMastery
	local TAutoFarmGunMastery = Tabs.M:AddToggle("MyToggle", {Title = "- Auto Farm Gun Mastery", Default = false })

	TAutoFarmGunMastery:OnChanged(function()
		_G.AutoFarmGunMastery = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Auto AutoFarmGunMastery end

	Tabs.M:AddParagraph({
		Title = "🤺 Bosses 🤺",
		Content = ""
	})

	--- Select Bosses
	local DSelectBosses = Tabs.M:AddDropdown("Dropdown", {
		Title = "- Select Bosses",
		Values = {},
		Multi = false,
		Default = 1,
	})

	DSelectBosses:SetValue("")

	DSelectBosses:OnChanged(function(Value)
		print("Dropdown changed:", Value)
	end)
	 --- Select Bosses end

	 --- Refresh Bosses Dropdown
	Tabs.M:AddButton({
		Title = "- Refresh Bosses Dropdown",
		Description = "",
		Callback = function()
				Window:Dialog({
						Title = "Title",
						Content = "This is a dialog",
						Buttons = {
								{
										Title = "Confirm",
										Callback = function()
											DSelectBosses:setupvalue("1")
										end
								},
								{
										Title = "Cancel",
										Callback = function()
										end
								}
						 }
				 })
			end
	})

	--- Refresh Bosses Dropdown end

	--- AutoFarmBosses
	local TAutoFarmBosses = Tabs.M:AddToggle("MyToggle", {Title = "- Auto Farm Bosses", Default = false })

	TAutoFarmBosses:OnChanged(function()
		_G.AutoFarmBosses = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoFarmBosses end

	Tabs.M:AddParagraph({
		Title = "Observations",
		Content = ""
	})

	--- AutoFarmObservation EXP
	local TAutoFarmObservation = Tabs.M:AddToggle("MyToggle", {Title = "- Auto Farm Observation EXP", Default = false })

	TAutoFarmObservation:OnChanged(function()
		_G.AutoFarmObservation = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoFarmObservation EXP end

	--- AutoFarmObservation HOP
	local TAutoFarmObservation = Tabs.M:AddToggle("MyToggle", {Title = "- Auto Farm Observation HOP", Default = false })

	TAutoFarmObservation:OnChanged(function()
		_G.AutoFarmObservation = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoFarmObservation HOP end



	Tabs.M:AddParagraph({
		Title = "Chests",
		Content = ""
	})

	--- Auto Farm Chests
	local TAutoFarmChests = Tabs.M:AddToggle("MyToggle", {Title = "- Auto Farm Chests", Default = false })

	TAutoFarmChests:OnChanged(function()
		_G.AutoFarmChests  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Auto Farm Chests end
	
	Tabs.M:AddParagraph({
		Title = "Aura Functions",
		Content = ""
	})

	local SDistance = Tabs.M:AddSlider("Slider", {
		Title = "Distance",
		Description = "",
		Default = 2,
		Min = 0,
		Max = 200,
		Rounding = 5,
		Callback = function(Value)
				print("Slider was changed:", Value)
		end
	})

	SDistance:OnChanged(function(Value)
			print("Slider changed:", Value)
	end)

	SDistance:SetValue(100)
 
	--- Mob Aura
	local TAutoFarmChests = Tabs.M:AddToggle("MyToggle", {Title = "- Mob Aura", Default = false })

	TAutoFarmChests:OnChanged(function()
		_G.MobAura = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Mob Aura end

	-- Stats Tab --

	--- Melee Stats
	local TMelee = Tabs.Stats:AddToggle("MyToggle", {Title = "- Melee", Default = false })

	TMelee:OnChanged(function()
		_G.Melee = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Melee Stats end

	--- Defense Stats
	local TDefense = Tabs.Stats:AddToggle("MyToggle", {Title = "- Defense", Default = false })

	TDefense:OnChanged(function()
		_G.Defense = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Defense Stats end

	--- Sword Stats
	local TSword = Tabs.Stats:AddToggle("MyToggle", {Title = "- Sword", Default = false })

	TSword:OnChanged(function()
		_G.Sword = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Sword Stats end

	--- Gun Stats
	local TGun = Tabs.Stats:AddToggle("MyToggle", {Title = "- Gun", Default = false })

	TGun:OnChanged(function()
		_G.Gun = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Gun Stats end

	--- Devil Fruit Stats
	local TDevilFruit = Tabs.Stats:AddToggle("MyToggle", {Title = "- Devil Fruit", Default = false })

	TDevilFruit:OnChanged(function()
		_G.DevilFruit = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Devil Fruit Stats end

	-- Item Tab --

	Tabs.Item:AddParagraph({
		Title = "- East Blue -",
		Content = ""
	})

	--- Auto Bisento V2
	local TAutoBisentoV2 = Tabs.Item:AddToggle("MyToggle", {Title = "- Auto Bisento V2", Default = false })

	TAutoBisentoV2:OnChanged(function()
		_G.AutoBisentoV2 = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Auto Bisento V2 end

	--- AutoPole
	local TAutoPole = Tabs.Item:AddToggle("MyToggle", {Title = "- Auto Pole V1", Default = false })

	TAutoPole:OnChanged(function()
		_G.AutoPole = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoPole end

	--- AutoTrident
	local TAutoTrident = Tabs.Item:AddToggle("MyToggle", {Title = "- Auto Trident", Default = false })

	TAutoTrident:OnChanged(function()
		_G.AutoTrident = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoTridentend

	--- AutoSaber
	local TAutoSaber = Tabs.Item:AddToggle("MyToggle", {Title = "- Auto Saber", Default = false })

	TAutoSaber:OnChanged(function()
		_G.AutoSaber = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoSaber end

	--- AutoSharkSaw
	local TAutoSharkSaw = Tabs.Item:AddToggle("MyToggle", {Title = "- Auto Shark Saw", Default = false })

	TAutoSharkSaw:OnChanged(function()
		_G.AutoSharkSaw = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoSharkSaw end
	
	Tabs.Item:AddParagraph({
		Title = "Materials",
		Content = ""
	})

	--- Select Materials
	local DMaterials = Tabs.Main:AddDropdown("Dropdown", {
		Title = "- Select Materials",
		Values = {MaterialMethod},
		Multi = false,
		Default = 1,
	})

	DMaterials:SetValue()

	DMaterials:OnChanged(function(Value)
		_G.SelectMaterial = Value
	end)
	--- Select Materials end

	--- AutoFarmMaterials
	local TAutoFarmMaterials = Tabs.Item:AddToggle("MyToggle", {Title = "- Auto Farm Materials", Default = false })

	TAutoFarmMaterials:OnChanged(function()
		_G.AutoFarmMaterials  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoFarmMaterials  end

	-- ESP Tab --
	Tabs.Esp:AddParagraph({
		Title = "Esp",
		Content = ""
	})

	--- - Players ESP  
	local TPlayersESP = Tabs.Esp:AddToggle("MyToggle", {Title = "- Players ESP", Default = false })

	TPlayersESP:OnChanged(function()
		_G.PlayersESP  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Players ESP 

	--- Chest ESP  
	local TChestESP = Tabs.Esp:AddToggle("MyToggle", {Title = "- Chest ESP", Default = false })

	TChestESP:OnChanged(function()
		_G.ChestESP  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- Chest ESP end 

	--- DevilFruitsESP 
	local TDevilFruits ESP = Tabs.Esp:AddToggle("MyToggle", {Title = "- Devil Fruits ESP", Default = false })

	TDevilFruitsESP:OnChanged(function()
		_G.DevilFruitsESP  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- DevilFruitsESP  end

	Tabs.Esp:AddParagraph({
		Title = "Devil Fruits",
		Content = ""
	})

	--- Select Devil Fruits
	local DDevilFruits = Tabs.Main:AddDropdown("Dropdown", {
		Title = "- Select Devil Fruits",
		Values = {DevilFruitTable},
		Multi = false,
		Default = 1,
	})

	DDevilFruits:SetValue()

	DDevilFruits:OnChanged(function(Value)
		_G.SelectDevilFruit = Value
	end)
	--- Select Devil Fruits end

	--- - Auto Buy Fruits
	local TAutoBuyFruits ESP = Tabs.Esp:AddToggle("MyToggle", {Title = "- Auto Buy Fruits", Default = false })

	TAutoBuyFruitsESP:OnChanged(function()
		_G.AutoBuyFruits  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Auto Buy Fruits  end

	--- AutoStoredFruits 
	local TAutoStoredFruits = Tabs.Esp:AddToggle("MyToggle", {Title = "- Auto Stored Fruits", Default = false })

	TAutoStoredFruits:OnChanged(function()
		_G.AutoStoredFruits  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoStoredFruits  end

	--- AutoRandomFruits 
	local TAutoRandomFruits = Tabs.Esp:AddToggle("MyToggle", {Title = "- Auto Random Fruits", Default = false })

	TAutoRandomFruits:OnChanged(function()
		_G.AutoRandomFruits  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- AutoRandomFruits  end

	--- Random Fruits
	Tabs.Esp:AddButton({
		Title = "- Random Fruits",
		Description = "Very important button",
		Callback = function()
				Window:Dialog({
						Title = "Title",
						Content = "This is a dialog",
						Buttons = {
								{
										Title = "Confirm",
										Callback = function()
												print("Confirmed the dialog.")
										end
								},
								{
										Title = "Cancel",
										Callback = function()
												print("Cancelled the dialog.")
										end
								}
						}
				})
		end
	})
	--- Random Fruits end

	--- EnabledTweenToFruits 
	local TEnabledTweenToFruits = Tabs.Esp:AddToggle("MyToggle", {Title = "- Enabled Tween To Fruits", Default = false })

	TEnabledTweenToFruits:OnChanged(function()
		_G.EnabledTweenToFruits  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- EnabledTweenToFruits  end

	--- Remove Devil Fruit
	Tabs.Esp:AddButton({
		Title = "- Remove Devil Fruit",
		Description = "Very important button",
		Callback = function()
				Window:Dialog({
						Title = "Title",
						Content = "This is a dialog",
						Buttons = {
								{
								Title = "Confirm",
								Callback = function()
										print("Confirmed the dialog.")
								end
								},
								{
										Title = "Cancel",
										Callback = function()
												print("Cancelled the dialog.")
										end
								}
						}
				})
		end
	})
	--- Remove Devil Fruit end

	Tabs.Combat:AddParagraph({
		Title = "Combat",
		Content = "This is a paragraph.\nSecond line!"
	})


	--- Select Player
	local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
		Title = "- Select Player",
		Values = {},
		Multi = false,
		Default = 1,
	})

	Dropdown:SetValue()

	Dropdown:OnChanged(function(Value)
			print("Dropdown changed:", Value)
	end)
	--- Select Player  end

	--- Refresh Players Dropdown
	Tabs.Combat:AddButton({
		Title = "- Refresh Players Dropdown ",
		Description = "Very important button",
		Callback = function()
				Window:Dialog({
						Title = "Title",
						Content = "This is a dialog",
						Buttons = {
								{
										Title = "Confirm",
										Callback = function()
												print("Confirmed the dialog.")
										end
								},
								{
										Title = "Cancel",
										Callback = function()
												print("Cancelled the dialog.")
										end
								}
						}
				})
		end
	})
	--- Refresh Players Dropdown end

	---- TeleportPlayer
	local TTeleportPlayer = Tabs.Combat:AddToggle("MyToggle", {Title = "- Teleport Player", Default = false })

	TTeleportPlayer:OnChanged(function()
		_G.TeleportPlayer  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	---- Teleport Player  end

	--- SpectatePlayer 
	local TSpectatePlayer = Tabs.Combat:AddToggle("MyToggle", {Title = "- Spectate Player", Default = false })

	TSpectatePlayer:OnChanged(function()
		_G.SpectatePlayer  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- SpectatePlayer  end

	Tabs.Combat:AddParagraph({
		Title = "Aimbot",
		Content = ""
	})

	--- EnabledAimbotSkill
	local TEnabledAimbotSkill = Tabs.Combat:AddToggle("MyToggle", {Title = "- Enabled Aimbot Skill", Default = false })

	TEnabledAimbotSkill:OnChanged(function()
		_G.EnabledAimbotSkill  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- SpectatePlayer  end

	--- EnabledAimbotGun 
	local TEnabledAimbotGun = Tabs.Combat:AddToggle("MyToggle", {Title = "- Enabled Aimbot Gun", Default = false })

	TEnabledAimbotGun:OnChanged(function()
		_G.EnabledAimbotGun  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- EnabledAimbotGun  end

	Tabs.Combat:AddParagraph({
		Title = "Abilities",
		Content = ""
	})

	--- - SemiMinkRace 
	local TSemiMinkRace = Tabs.Combat:AddToggle("MyToggle", {Title = "- Semi Mink Race", Default = false })

	TSemiMinkRace:OnChanged(function()
		_G.SemiMinkRace  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Semi Mink Race  end

	--- - AutoActiveRaces 
	local TAutoActiveRaces = Tabs.Combat:AddToggle("MyToggle", {Title = "- Auto Active Races", Default = false })

	TAutoActiveRaces:OnChanged(function()
		_G.AutoActiveRaces  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Auto Active Races  end

	--- - DashNoCooldown 
	local TDashNoCooldown = Tabs.Combat:AddToggle("MyToggle", {Title = "- Dash No Cooldown", Default = false })

	TDashNoCooldown:OnChanged(function()
		_G.DashNoCooldown  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Dash No Cooldown  end

	--- - SkyJumpNoCooldown 
	local TSkyJumpNoCooldown = Tabs.Combat:AddToggle("MyToggle", {Title = "- Sky Jump No Cooldown", Default = false })

	TSkyJumpNoCooldown:OnChanged(function()
		_G.SkyJumpNoCooldown  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Sky Jump No Cooldown  end

	--- - SoruNoCooldown 
	local TSoruNoCooldown = Tabs.Combat:AddToggle("MyToggle", {Title = "- Soru No Cooldown", Default = false })

	TSoruNoCooldown:OnChanged(function()
		_G.SoruNoCooldown  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Soru No Cooldown  end

    Tabs.Teleport:AddParagraph({
		Title = "Teleport Place",
		Content = ""
	})

    --- Teleport To East Blue
    Tabs.Teleport:AddButton({
        Title = "- Teleport To East Blue",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    --- Teleport To East Blue end
    --- Teleport To Dressrosa
    Tabs.Teleport:AddButton({
        Title = "- Teleport To Dressrosa",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    --- Teleport To Dressrosa end
    --- Teleport To Zou
    Tabs.Teleport:AddButton({
        Title = "- Teleport To Zou",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    --- Teleport To Zou end

    Tabs.Teleport:AddParagraph({
		Title = "Teleport Island",
		Content = ""
	})

    local DSelectIsland = Tabs.Main:AddDropdown("Dropdown", {
        Title = "- Select Island",
        Values = {},
        Multi = false,
        Default = 1,
    })

    DSelectIsland:SetValue()

    DSelectIsland:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)

    --- - TeleportIsland 
	local TTeleportIsland = Tabs.Combat:AddToggle("MyToggle", {Title = "- Teleport Island", Default = false })

	TTeleportIsland:OnChanged(function()
		_G.TeleportIsland  = Options.MyToggle.Value
	end)

	Options.MyToggle:SetValue(false)
	--- - Soru No Cooldown  end

    Tabs.Shop:AddParagraph({
		Title = "Fighting Styles",
		Content = ""
	})


    Tabs.Shop:AddButton({
        Title = "- Black Leg",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Electro",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Fishman Karate",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Dragon Claw",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Superhuman",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Death Step",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Sharkman Karate",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Electric Claw",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Dragon Talon",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Godhuman",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Sanguine Art",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


    Tabs.Shop:AddParagraph({
		Title = "Abilities",
		Content = ""
	})


    Tabs.Shop:AddButton({
        Title = "- Buy Geppo",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Buy Buso Haki",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Buy Soru",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddParagraph({
        Title = "Fragment",
        Content = ""
      })
    


    Tabs.Shop:AddButton({
        Title = "- Stats Refund",
        Description = "- Rances Reroll",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "- Sanguine Art",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


    Tabs.Misc:AddParagraph({
        Title = "Ui",
        Content = ""
    })

     Tabs.Misc:AddButton({
        Title = "- Open Devil Fruit Shop",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

     Tabs.Misc:AddButton({
        Title = "- Open Title Inventory",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

     Tabs.Misc:AddButton({
        Title = "- Open Haki Color",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


    Tabs.Misc:AddParagraph({
        Title = "Teams",
        Content = ""
    })

    Tabs.Misc:AddButton({
        Title = "- Join Pirates Team",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "- Join Marines Team",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddParagraph({
        Title = "Server",
        Content = ""
    })

    Tabs.Misc:AddButton({
        Title = "- Rejoin Server",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "- Server Hop",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "- Server Hop Lower Players",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    local IJobids = Tabs.Misc:AddInput("Input", {
        Title = "- Job ids",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    IJobids:OnChanged(function()
        print("Input updated:", Input.Value)
    end)

    Tabs.Misc:AddButton({
        Title = "- Join Job ids",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "- Coppy Job ids",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddParagraph({
        Title = "Graphic",
        Content = ""
    })

    local TEnabledWhiteScreen = Tabs.Main:AddToggle("MyToggle", {Title = "- Enabled White Screen [ Reduce GPU ]", Default = false })

    TEnabledWhiteScreen:OnChanged(function()
        print("Toggle1 changed:", Options.MyToggle.Value)
    end)

    Tabs.Misc:AddButton({
        Title = "- FPS Boost",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddParagraph({
        Title = "Codes",
        Content = ""
    })

    Tabs.Misc:AddButton({
        Title = "- Redeem All Codes",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddParagraph({
        Title = "Abilities",
        Content = ""
    })

    local TWalkonWater = Tabs.Main:AddToggle("MyToggle", {Title = "- Walk on Water", Default = false })

    TWalkonWater:OnChanged(function()
        print("Toggle1 changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)

    local TSemiNoClip = Tabs.Main:AddToggle("MyToggle", {Title = "- Semi No Clip", Default = false })

    TSemiNoClip:OnChanged(function()
        print("Toggle1 changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)

    local TEnabledFly = Tabs.Main:AddToggle("MyToggle", {Title = "- Enabled Fly", Default = false })

    TEnabledFly:OnChanged(function()
        print("Toggle1 changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)

    local TClickTPTool = Tabs.Main:AddToggle("MyToggle", {Title = "- Click TP Tool", Default = false })

    TClickTPTool:OnChanged(function()
        print("Toggle1 changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)

end

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
		Title = "Fluent",
		Content = "The script has been loaded.",
		Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()




-- [Serity Hub Next Gen] --

-- [Auto Team] --

if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
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

-- [Check Quest] --

function CheckQuest()
		local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if MyLevel == 1 or MyLevel <= 9 then -- Bandit [Lv. 5]
		Mon= "Bandit"
		Quest = "BanditQuest1"
		LevelQuest = 1
		CFrameMon = CFrame.new(1095, 55, 1572, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(1060, 16, 1549, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey [Lv. 14]
		Mon = "Monkey"
		Quest = "JungleQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-1377, 62, 142, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-1602, 35, 154, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 15 or MyLevel <= 119 then -- Gorilla [Lv. 20]
				if _G.AutoFarmLevel then
						pcall(function()
								if game:GetService("Workspace").Enemies:FindFirstChild("Shanda") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Shanda" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
																Haki()
																EquipWeapon()
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
														until not _G.AutoFarmLevel or v.Humanoid.Health <= 0 or not v.Parent
														UnEquip()
														BringMob = false
														FastAttack = false
												end
										end
								else 
										local Distance = (Vector3.new(-7895, 5547, -380, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
										if Distance > 3000 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7895, 5547, -380, 1, 0, 0, 0, 1, 0, 0, 0, 1))
										end
										TP(CFrame.new(-7688, 5601, -441, 1, 0, 0, 0, 1, 0, 0, 0, 1))
								end
						end)
				end

	elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer [Lv. 120]
		Mon = "Chief Petty Officer"
		Quest = "MarineQuest2"
		LevelQuest = 1
		CFrameMon = CFrame.new(-4769, 5, 4296, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-5038, 29, 4323, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit [Lv. 150]
		Mon = "Sky Bandit"
		Quest = "SkyQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-4945, 317, -2785, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master [Lv. 175]
		Mon = "Dark Master"
		Quest = "SkyQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(-5225, 430, -2280, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-4841, 718, -2620, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 190 or MyLevel <= 209 then -- Prisoner [Lv. 190]
		Mon = "Prisoner"
		Quest = "PrisonerQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(5090, 40, 424, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(5310, 0, 474, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 210 or MyLevel <= 249 then -- Dangerous Prisoner [Lv. 210]
		Mon = "Dangerous Prisoner"
		Quest = "PrisonerQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(5646, 40, 765, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(5310, 0, 474, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior [Lv. 250]
		Mon = "Toga Warrior"
		Quest = "ColosseumQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-1851, 40, -2925, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-1577, 7.50791311, -2987, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier [Lv. 300]
		Mon = "Military Soldier"
		Quest = "MagmaQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(-5465, 111, 8675, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy [Lv. 325]
		Mon = "Military Spy"
		Quest = "MagmaQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(-5756, 172, 8771, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-5315, 13, 8516, 1, 0, 0, 0, 1, 0, 0, 0, 1)

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

	elseif MyLevel >= 650 then -- Galley Captain [Lv. 650]
		Mon = "Galley Captain"
		Quest = "FountainQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(5678, 93, 4968, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(5258, 39, 4049, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	end
end

-- [Tween Service] --

function TP(P)
		spawn(function()
		pcall(function()
			if game:GetService("Players").LocalPlayer:DistanceFromCharacter(P.Position) <= 250 then 
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = P
			elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
				local K = Instance.new("Part",game.Players.LocalPlayer.Character)
				K.Size = Vector3.new(1,0.5,1)
				K.Name = "Root"
				K.Anchored = true
				K.Transparency = 1
				K.CanCollide = false
				K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
			end
			local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-P.Position).Magnitude
			local z = game:service("TweenService")
			local B = TweenInfo.new((P.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
			local S,g = pcall(function()
			local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = P})
			q:Play()
		end)
		if not S then 
			return g
		end
		game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
				pcall(function()
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-P.Position).Magnitude >= 20 then 
						spawn(function()
							pcall(function()
								if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
									game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								else 
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
								end
							end)
						end)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-P.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-P.Position).Magnitude < 20 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-P.Position).Magnitude < 10 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
					end
				end)
			end
		end)
	end)
end

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

function TP2(P)
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
		_G.NoClip = true
		wait(Distance/Speed)
		_G.NoClip = false
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
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
								setfflag("HumanoidParallelRemoveNoPhysics", "False")
								setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
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

-- [Auto Haki]--

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
function EquipWeapon()
		if _G.SelectWeapon == "Melee" then
		Melee()
	elseif _G.SelectWeapon == "Sword" then
		Sword()
	elseif _G.SelectWeapon == "Blox Fruit" then
		BloxFruit()   
	end	
end

-- [Stats] --

spawn(function()
		while wait(.1) do
				if _G.Melee then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
				end
		end
end)
spawn(function()
		while wait(.1) do
				if _G.Defense then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", 1)
				end
		end
end)
spawn(function()
		while wait(.1) do
				if _G.Sword then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", 1)
				end
		end
end)
spawn(function()
		while wait(.1) do
				if _G.Gun then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", 1)
				end
		end
end)
spawn(function()
		while wait(.1) do
				if _G.DevilFruit then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", 1)
				end
		end
end)

-- [Auto Haki] -

function Haki()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end

-- [Anti AFK] --

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- [Hop] --

function HopLowerServer()
	local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	if not _G.FailedServerID then _G.FailedServerID = {} end
	local function serversearch()
		data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
		for _, v in pairs(data_table.data) do
			pcall(function()
				if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
					maxplayers = v.playing
					goodserver = v.id
				end
			end)
		end
	end
	function getservers()
		pcall(serversearch)
		for i, v in pairs(data_table) do
			if i == "nextPageCursor" then
				if gamelink:find"&cursor=" then
					local a = gamelink:find"&cursor="
					local b = gamelink:sub(a)
					gamelink = gamelink:gsub(b, "")
				end
				gamelink = gamelink .. "&cursor=" .. v
				pcall(getservers)
			end
		end
	end
	pcall(getservers)
	if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
	end
	table.insert(_G.FailedServerID, goodserver)
	game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
end

-- [End Code] --

