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

	elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla [Lv. 20]
		Mon = "Gorilla"
		Quest = "JungleQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(-1237, 62, -486, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-1602, 35, 154, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate [Lv. 35]
		Mon = "Pirate"
		Quest = "BuggyQuest1"
		LevelQuest = 1
		CFrameMon = CFrame.new(-1215, 53, 3915, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-1141, 4, 3831, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 40 or MyLevel <= 59 then -- Brute [Lv. 45]
		Mon = "Brute"
		Quest = "BuggyQuest1"
		LevelQuest = 2
		CFrameMon = CFrame.new(-1150, 97, 4311, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-1141, 4, 3831, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit [Lv. 60]
		Mon = "Desert Bandit"
		Quest = "DesertQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(930, 53, 4490, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(896, 5, 4390, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officer [Lv. 70]
		Mon = "Desert Officer"
		Quest = "DesertQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(1608, 53, 4372, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(896, 5, 4390, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandit [Lv. 90]
		Mon = "Snow Bandit"
		Quest = "SnowQuest"
		LevelQuest = 1
		CFrameMon = CFrame.new(1316, 145, -1397, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(1389, 86, -1298, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman [Lv. 100]
		Mon = "Snowman"
		Quest = "SnowQuest"
		LevelQuest = 2
		CFrameMon = CFrame.new(1316, 145, -1397, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(1389, 86, -1298, 1, 0, 0, 0, 1, 0, 0, 0, 1)

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
            _G.AutoFarmLevel or _G.AutoSecondSea or _G.AutoFarmBoss or _G.AutoFarmChests or _G.MobAura or
			_G.AutoFarmMaterial or _G.AutoSharkSaw or _G.AutoSaber or _G.AutoTrident or _G.AutoPole or _G.AutoBisento or
			_G.TeleportPlayers or
			_G.AutoFarmMasteryDevilFruit or _G.AutoFarmMasteryGun or _G.AutoFarmObservation or
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
		_G.AutoFarmLevel or _G.AutoSecondSea or _G.AutoFarmBoss or _G.AutoFarmChests or _G.MobAura or
		_G.AutoFarmMaterial or _G.AutoSharkSaw or _G.AutoSaber or _G.AutoTrident or _G.AutoPole or _G.AutoBisento or
		_G.TeleportPlayers or
		_G.AutoFarmMasteryDevilFruit or _G.AutoFarmMasteryGun or _G.AutoFarmObservation or
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
		_G.AutoFarmLevel or _G.AutoSecondSea or _G.AutoFarmBoss or _G.AutoFarmChests or _G.MobAura or
		_G.AutoFarmMaterial or _G.AutoSharkSaw or _G.AutoSaber or _G.AutoTrident or _G.AutoPole or _G.AutoBisento or
		_G.TeleportPlayers or
		_G.AutoFarmMasteryDevilFruit or _G.AutoFarmMasteryGun or _G.AutoFarmObservation or
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
					if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then 
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

-- [Ui] --

repeat wait() until game:IsLoaded()

do  local ui =  game:GetService("CoreGui"):FindFirstChild("UILibrary")  if ui then ui:Destroy() end end  

do  local ui =  game:GetService("Lighting"):FindFirstChild("Blur")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")

local function tablefound(ta, object)
	for i,v in pairs(ta) do
		if v == object then
			return true
		end
	end
	return false
end

local ActualTypes = {
	RoundFrame = "ImageLabel",
	Shadow = "ImageLabel",
	Circle = "ImageLabel",
	CircleButton = "ImageButton",
	Frame = "Frame",
	Label = "TextLabel",
	Button = "TextButton",
	SmoothButton = "ImageButton",
	Box = "TextBox",
	ScrollingFrame = "ScrollingFrame",
	Menu = "ImageButton",
	NavBar = "ImageButton"
}

local Properties = {
	RoundFrame = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	SmoothButton = {
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	Shadow = {
		Name = "Shadow",
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554236805",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(23,23,277,277),
		Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
		Position = UDim2.fromOffset(-15,-15)
	},
	Circle = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	CircleButton = {
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	Frame = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1,1)
	},
	Label = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Button = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Box = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	ScrollingFrame = {
		BackgroundTransparency = 1,
		ScrollBarThickness = 0,
		CanvasSize = UDim2.fromScale(0,0),
		Size = UDim2.fromScale(1,1)
	},
	Menu = {
		Name = "More",
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5555108481",
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
	},
	NavBar = {
		Name = "SheetToggle",
		Image = "http://www.roblox.com/asset/?id=5576439039",
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromOffset(5,5),
		AutoButtonColor = false
	}
}

local Types = {
	"RoundFrame",
	"Shadow",
	"Circle",
	"CircleButton",
	"Frame",
	"Label",
	"Button",
	"SmoothButton",
	"Box",
	"ScrollingFrame",
	"Menu",
	"NavBar"
}

function FindType(String)
	for _, Type in next, Types do
		if Type:sub(1, #String):lower() == String:lower() then
			return Type
		end
	end
	return false
end

local Objects = {}

function Objects.new(Type)
	local TargetType = FindType(Type)
	if TargetType then
		local NewImage = Instance.new(ActualTypes[TargetType])
		if Properties[TargetType] then
			for Property, Value in next, Properties[TargetType] do
				NewImage[Property] = Value
			end
		end
		return NewImage
	else
		return Instance.new(Type)
	end
end

local function GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

local function CircleAnim(GuiObject, EndColour, StartColour)
	local PX, PY = GetXY(GuiObject)
	local Circle = Objects.new("Shadow")
	Circle.Size = UDim2.fromScale(0,0)
	Circle.Position = UDim2.fromScale(PX,PY)
	Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
	Circle.ZIndex = 200
	Circle.Parent = GuiObject
	local Size = GuiObject.AbsoluteSize.X
	TweenService:Create(Circle, TweenInfo.new(0.5), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
	spawn(function()
		wait(0.5)
		Circle:Destroy()
	end)
end

local UILibrary = Instance.new("ScreenGui")
local Load = Instance.new("Frame")
local UICornerLoad = Instance.new("UICorner")
local LoadButton = Instance.new("ImageButton")

UILibrary.Name = "UILibrary"
UILibrary.Parent = game:GetService("CoreGui")
UILibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Load.Name = "Load"
Load.Parent = UILibrary
Load.Active = true
Load.AnchorPoint = Vector2.new(0.5, 0.5)
Load.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Load.BackgroundTransparency = 1
Load.BorderSizePixel = 0
Load.Position = UDim2.new(0.5, 0, 1, 0)
Load.Size = UDim2.new(0, 100, 0, 100)
Load.BackgroundTransparency = 1

local uitoggled = false
UserInputService.InputBegan:Connect(
	function(io, p)
		if io.KeyCode == Enum.KeyCode.RightControl then
			if uitoggled == false then
				uitoggled = true
				UILibrary.Enabled = false
			else
				UILibrary.Enabled = true
				uitoggled = false
			end
		end
	end
)

UICornerLoad.CornerRadius = UDim.new(0, 30)
UICornerLoad.Name = "UICornerLoad"
UICornerLoad.Parent = Load

LoadButton.Name = "LoadButton"
LoadButton.Parent = Load
LoadButton.AnchorPoint = Vector2.new(0.5, 0.5)
LoadButton.Position = UDim2.new(0.5, 0, 0.5, 0)
LoadButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.BackgroundTransparency = 1.000
LoadButton.Size = UDim2.new(0, 70, 0, 70)
LoadButton.Image = "http://www.roblox.com/asset/?id=16014590522"
LoadButton.ImageTransparency = 1

local ClickFrame = Instance.new("Frame")

ClickFrame.Name = "ClickFrame"
ClickFrame.Parent = Load
ClickFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickFrame.BackgroundTransparency = 1.000
ClickFrame.Position = UDim2.new(0, 0, 7.62939436e-08, 0)
ClickFrame.Size = UDim2.new(0, 0, 0, 0)

local SoundClick = Instance.new("Sound")

SoundClick.Name = "Sound Effect"
SoundClick.Parent = Load
SoundClick.SoundId = "rbxassetid://130785805"
SoundClick.Volume = 1

local Blur = Instance.new("BlurEffect")

Blur.Size = 0
Blur.Parent = game.Lighting

if game.Workspace.Camera.FieldOfView == 50 then
	return game.Workspace.Camera.FieldOfView == 70
end

local LoadText = Instance.new("Frame")
local UIListLayoutLoadText = Instance.new("UIListLayout")
local TitleLoad = Instance.new("TextLabel")

LoadText.Name = "LoadText"
LoadText.Parent = Load
LoadText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadText.BackgroundTransparency = 1.000
LoadText.Size = UDim2.new(0, 500, 0, 50)
LoadText.ClipsDescendants = true

UIListLayoutLoadText.Name = "UIListLayoutLoadText"
UIListLayoutLoadText.Parent = LoadText
UIListLayoutLoadText.FillDirection = Enum.FillDirection.Horizontal
UIListLayoutLoadText.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayoutLoadText.SortOrder = Enum.SortOrder.LayoutOrder

TitleLoad.Name = "TitleLoad"
TitleLoad.Parent = LoadText
TitleLoad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLoad.BackgroundTransparency = 1.000
TitleLoad.Size = UDim2.new(0, 200, 0, 50)
TitleLoad.Font = Enum.Font.Gotham
TitleLoad.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLoad.TextSize = 14.000
TitleLoad.TextTransparency = 1

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local Scrollbar = Instance.new("Frame")
local LoadScrollbar = Instance.new("ImageButton")

Scrollbar.Name = "Scrollbar"
Scrollbar.Parent = Load
Scrollbar.Active = true
Scrollbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scrollbar.BackgroundTransparency = 1.000
Scrollbar.ClipsDescendants = true
Scrollbar.Position = UDim2.new(0.899999976, 0, -0.0199999232, 0)
Scrollbar.Size = UDim2.new(0, 50, 0, 51)

LoadScrollbar.Name = "LoadScrollbar"
LoadScrollbar.Parent = Scrollbar
LoadScrollbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadScrollbar.AnchorPoint = Vector2.new(0.5,0.5)
LoadScrollbar.BackgroundTransparency = 1.000
LoadScrollbar.Position = UDim2.new(0.5, 0, 0.5, 0)
LoadScrollbar.Size = UDim2.new(0, 30, 0, 30)
LoadScrollbar.Image = "http://www.roblox.com/asset/?id=6031097225"
LoadScrollbar.ImageTransparency = 1
LoadScrollbar.Visible = false

local osday = Instance.new("TextLabel")

osday.Name = "osday"
osday.Parent = ClickFrame
osday.Active = true
osday.AnchorPoint = Vector2.new(0.5, 0.5)
osday.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
osday.BackgroundTransparency = 1.000
osday.Position = UDim2.new(0.5, 0, 0.699999988, 0)
osday.Size = UDim2.new(0, 384, 0, 30)
osday.Font = Enum.Font.GothamBold
osday.TextTransparency = 1
osday.TextColor3 = Color3.fromRGB(255, 255, 255)
osday.TextSize = 14.000

task.spawn(function()
	while task.wait() do
		pcall(function()
			osday.Text = os.date("%I:%M:%S".." | ".."%B %d, %Y")
		end)
	end
end)

local Title = Instance.new("TextLabel")

Title.Name = "Title"
Title.Parent = ClickFrame
Title.Active = true
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.5, 0, 0.280000001, 0)
Title.Size = UDim2.new(0, 384, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "BLOX FRUIT PREMIUM EDITION"
Title.TextTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000


function LoadFunction()

	TweenService:Create(
		game.Workspace.Camera,
		TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
		{FieldOfView = 50}
	):Play()

	TweenService:Create(
		Blur,
		TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
		{Size = 20}
	):Play()

	TweenService:Create(
		Load,
		TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
		{Position = UDim2.new(0.5, 0, 0.5, 0)}
	):Play()
	TweenService:Create(
		Load,
		TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
		{BackgroundTransparency = 0}
	):Play()
	wait(.5)
	TweenService:Create(
		LoadButton,
		TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
		{ImageTransparency = 0}
	):Play()

	LoadButton.MouseEnter:Connect(function()
		TweenService:Create(
			LoadButton,
			TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 80, 0, 80)}
		):Play()
	end)

	LoadButton.MouseLeave:Connect(function()
		TweenService:Create(
			LoadButton,
			TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 70, 0, 70)}
		):Play()
	end)

	local LoadFocus = false

	LoadButton.MouseButton1Down:Connect(function()
		if LoadFocus == false then
			LoadFocus = true
			TweenService:Create(
				LoadButton,
				TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Rotation = 180}
			):Play()
			SoundClick:Play()
			TweenService:Create(
				LoadButton,
				TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
				{ImageTransparency = 1}
			):Play()
			wait(.5)
			LoadButton:Destroy()
			wait(.5)
			TweenService:Create(
				Load,
				TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Position = UDim2.new(0.5, 0, 0.025, 0)}
			):Play()
			TweenService:Create(
				Blur,
				TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Size = 0}
			):Play()
			TweenService:Create(
				game.Workspace.Camera,
				TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{FieldOfView = 70}
			):Play()
			wait(.5)
			TweenService:Create(
				Load,
				TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 500, 0, 50)}
			):Play()
			repeat wait()
				TweenService:Create(
					TitleLoad,
					TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
					{TextTransparency = 0.2}
				):Play()
				TitleLoad.Text = "Loading Interface . . ."
				wait(0.35)
				TweenService:Create(
					TitleLoad,
					TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
					{TextTransparency = 1}
				):Play()
				wait(0.35)
				TweenService:Create(
					TitleLoad,
					TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
					{TextTransparency = 0.2}
				):Play()
				TitleLoad.Text = "Get Patch Serity Script Version : 1.0.0"
				wait(0.35)
				TweenService:Create(
					TitleLoad,
					TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
					{TextTransparency = 1}
				):Play()
				wait(0.35)
				TweenService:Create(
					TitleLoad,
					TweenInfo.new(.45, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
					{TextTransparency = 0.2}
				):Play()
				TitleLoad.Text = "Welcome to Serity Script | Premium Edition"
				TitleLoad.Font = Enum.Font.GothamBold
				TitleLoad.TextTransparency = 0
				wait(3)
				TweenService:Create(
					TitleLoad,
					TweenInfo.new(.45, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
					{TextTransparency = 1}
				):Play()
			until Load.Size == UDim2.new(0, 500, 0, 50)
			TweenService:Create(
				ClickFrame,
				TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 500, 0, 50)}
			):Play()
			TweenService:Create(
				Load,
				TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{BackgroundTransparency = 0.05}
			):Play()

			LoadScrollbar.Visible = true
			wait(.5)

			TweenService:Create(
				LoadScrollbar,
				TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{ImageTransparency = 0}
			):Play()
			repeat wait() until LoadScrollbar.ImageTransparency == 0
			wait(.5)
			TweenService:Create(
				osday,
				TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
				{TextTransparency = 0}
			):Play()
			wait(.5)
			TweenService:Create(
				Title,
				TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
				{TextTransparency = 0}
			):Play()
		end
	end)
end
LoadFunction()

LoadScrollbarFocus = false

LoadScrollbar.MouseLeave:Connect(function()
	if LoadScrollbarFocus == false then
		TweenService:Create(
			LoadScrollbar,
			TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()
	end
end)

LoadScrollbar.MouseEnter:Connect(function()
	if LoadScrollbarFocus == false then
		TweenService:Create(
			LoadScrollbar,
			TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()
	end
end)

MakeDraggable(ClickFrame,Load)

local Library = {}

function Library.new()

	local PageOrder = -1

	local Scrollingbar = Instance.new("ScrollingFrame")
	local ScrollingbarUIListLayout = Instance.new("UIListLayout")
	local ScrollingbarUIPadding = Instance.new("UIPadding")

	Scrollingbar.Name = "Scrollingbar"
	Scrollingbar.Parent = Load
	Scrollingbar.Active = true
	Scrollingbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Scrollingbar.BackgroundTransparency = 1
	Scrollingbar.BorderSizePixel = 0
	Scrollingbar.AnchorPoint = Vector2.new(0.5,0.5)
	Scrollingbar.Position = UDim2.new(0.5, 0, 1.65, 0)
	Scrollingbar.Size = UDim2.new(0, 500, 0, 0)
	Scrollingbar.ClipsDescendants = true
	Scrollingbar.ScrollBarThickness = 0

	ScrollingbarUIListLayout.Name = "ScrollingbarUIListLayout"
	ScrollingbarUIListLayout.Parent = Scrollingbar
	ScrollingbarUIListLayout.FillDirection = Enum.FillDirection.Horizontal
	ScrollingbarUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ScrollingbarUIListLayout.Padding = UDim.new(0, 5)

	ScrollingbarUIPadding.Name = "ScrollingbarUIPadding"
	ScrollingbarUIPadding.Parent = Scrollingbar
	ScrollingbarUIPadding.PaddingLeft = UDim.new(0, 5)
	ScrollingbarUIPadding.PaddingTop = UDim.new(0, 5)

	ScrollingbarUIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
		Scrollingbar.CanvasSize = UDim2.new(0,ScrollingbarUIListLayout.AbsoluteContentSize.X + 5,0,0)
	end)

	local Main2 = Instance.new("Frame")
	local ContainerPage = Instance.new("Frame")
	local FolderPage = Instance.new("Folder")
	local FolderPageUIPageLayout = Instance.new("UIPageLayout")

	Main2.Name = "Main2"
	Main2.Parent = Load
	Main2.AnchorPoint = Vector2.new(0.5, 0.5)
	Main2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main2.BackgroundTransparency = 1.000
	Main2.Position = UDim2.new(0.5, 0, 5.5, 0)
	Main2.Size = UDim2.new(0, 500, 0, 332)

	ContainerPage.Name = "ContainerPage"
	ContainerPage.Parent = Main2
	ContainerPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContainerPage.BackgroundTransparency = 1.000
	ContainerPage.BorderColor3 = Color3.fromRGB(27, 42, 53)
	ContainerPage.Size = UDim2.new(0, 500, 0, 332)
	ContainerPage.ClipsDescendants = true

	FolderPage.Name = "FolderPage"
	FolderPage.Parent = ContainerPage

	FolderPageUIPageLayout.Name = "FolderPageUIPageLayout"
	FolderPageUIPageLayout.Parent = FolderPage
	FolderPageUIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	FolderPageUIPageLayout.EasingStyle = Enum.EasingStyle.Cubic
	FolderPageUIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	FolderPageUIPageLayout.FillDirection = Enum.FillDirection.Horizontal
	FolderPageUIPageLayout.Padding = UDim.new(0, 10)
	FolderPageUIPageLayout.TweenTime = 0.300

	function Library.Notifcation(options)

		local visualTitle = options.Title or "Notifcation"
		local visualDesc = options.Desc or "Description"
		local visualDelays = options.Delays or 10
		local visualButtonText = options.TextSubmit or "Submit"

		local NotificationFrame = Instance.new("Frame")
		local MainNotification = Instance.new("Frame")
		local MainNotificationUICorner = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local Description = Instance.new("TextLabel")
		local Button = Instance.new("TextButton")
		local ButtonUICorner = Instance.new("UICorner")
		local Line1 = Instance.new("Frame")
		local Line2 = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")

		NotificationFrame.Name = "NotificationFrame"
		NotificationFrame.Parent = Main2
		NotificationFrame.Active = true
		NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		NotificationFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NotificationFrame.BackgroundTransparency = 0.050
		NotificationFrame.ClipsDescendants = true
		NotificationFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		NotificationFrame.Size = UDim2.new(0, 0, 0, 0)

		NotificationFrame:TweenSizeAndPosition(UDim2.new(0, 500, 0, 322),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quart", 0.2, true)

		MainNotification.Name = "MainNotification"
		MainNotification.Parent = NotificationFrame
		MainNotification.Active = true
		MainNotification.AnchorPoint = Vector2.new(0.5, 0.5)
		MainNotification.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		MainNotification.BorderSizePixel = 0
		MainNotification.Position = UDim2.new(0.5, 0, 0.5, 0)
		MainNotification.Size = UDim2.new(0, 382, 0, 287)

		MainNotificationUICorner.CornerRadius = UDim.new(0, 3)
		MainNotificationUICorner.Name = "MainNotificationUICorner"
		MainNotificationUICorner.Parent = MainNotification

		Title.Name = "Title"
		Title.Parent = MainNotification
		Title.Active = true
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0209424086, 0, 0.0209059231, 0)
		Title.Size = UDim2.new(0, 367, 0, 33)
		Title.Font = Enum.Font.GothamMedium
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 14.000
		Title.Text = visualTitle
		Title.TextWrapped = true

		Description.Name = "Description"
		Description.Parent = MainNotification
		Description.Active = true
		Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Description.BackgroundTransparency = 1.000
		Description.ClipsDescendants = true
		Description.Position = UDim2.new(0.0209424086, 0, 0.135888502, 0)
		Description.Size = UDim2.new(0, 367, 0, 196)
		Description.Font = Enum.Font.GothamMedium
		Description.TextColor3 = Color3.fromRGB(255, 255, 255)
		Description.TextSize = 12.000
		Description.TextTransparency = 0.450
		Description.TextWrapped = true
		Description.Text = visualDesc
		Description.TextYAlignment = Enum.TextYAlignment.Top

		Button.Name = "Button"
		Button.Parent = MainNotification
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0.0209424086, 0, 0.878048778, 0)
		Button.Size = UDim2.new(0, 367, 0, 26)
		Button.Font = Enum.Font.GothamBold
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextSize = 14.000
		Button.Text = visualButtonText
		Button.ClipsDescendants = true

		ButtonUICorner.CornerRadius = UDim.new(0, 4)
		ButtonUICorner.Name = "ButtonUICorner"
		ButtonUICorner.Parent = Button

		Line1.Name = "Line1"
		Line1.Parent = MainNotification
		Line1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Line1.BorderSizePixel = 0
		Line1.Position = UDim2.new(0.0209424086, 0, 0.850174189, 0)
		Line1.Size = UDim2.new(0, 367, 0, 4)

		Line2.Name = "Line2"
		Line2.Parent = Line1
		Line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Line2.BorderSizePixel = 0
		Line2.Size = UDim2.new(0, 367, 0, 4)

		UICorner.Parent = NotificationFrame

		Button.MouseEnter:Connect(function()
			TweenService:Create(
				Button,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
				{TextTransparency = 0}
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
				{BackgroundTransparency = 0}
			):Play()
		end)

		Button.MouseLeave:Connect(function()
			TweenService:Create(
				Button,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
				{TextTransparency = 0.5}
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
				{BackgroundTransparency = 0.5}
			):Play()
		end)

		Button.MouseButton1Click:Connect(function()
			CircleAnim(Button,Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255))
			TweenService:Create(
				NotificationFrame,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			):Play()
			NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
			TweenService:Create(
				NotificationFrame,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			):Play()
			wait(.2)
			NotificationFrame:Destroy()
		end)

		TweenService:Create(
			Line2,
			TweenInfo.new(tonumber(visualDelays), Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
			{Size = UDim2.new(0, 0, 0, 5)} -- UDim2.new(0, 128, 0, 25)
		):Play()
		delay(tonumber(visualDelays),function()
			TweenService:Create(
				NotificationFrame,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			):Play()
			NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
			TweenService:Create(
				NotificationFrame,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			):Play()
			wait(.2)
			NotificationFrame:Destroy()
		end)
	end

	local LibraryTab = {}

	function LibraryTab.tab(options)

		local Logo = options.Logo or 16014590522
		local ColorUI = options.ColorUI or _G.Settings.ConfigsUI.Color
		local Sound = options.SoundEffect or 130785805

		PageOrder = PageOrder + 1

		local name = tostring(Title) or tostring(math.random(500,100000))

		local SoundClick = Instance.new("Sound")

		SoundClick.Name = "Sound Effect"
		SoundClick.Parent = Load
		SoundClick.SoundId = "rbxassetid://"..tonumber(Sound)
		SoundClick.Volume = 1

		local ButtonBar = Instance.new("ImageButton")
		local ButtonBarUICorner = Instance.new("UICorner")

		ButtonBar.Name = "ButtonBar"
		ButtonBar.Parent = Scrollingbar
		ButtonBar.BackgroundColor3 = Color3.fromRGB(20,20,20)
		ButtonBar.Size = UDim2.new(0, 45, 0, 45)
		ButtonBar.AutoButtonColor = false

		ButtonBarUICorner.CornerRadius = UDim.new(0, 10)
		ButtonBarUICorner.Name = "ButtonBarUICorner"
		ButtonBarUICorner.Parent = ButtonBar

		local Icon = Instance.new("ImageButton")

		Icon.Name = "Icon"
		Icon.Parent = ButtonBar
		Icon.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1.000
		Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon.Size = UDim2.new(0, 30, 0, 30)
		Icon.Image = "http://www.roblox.com/asset/?id="..tostring(Logo)
		Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
		Icon.AutoButtonColor = false

		Icon.MouseEnter:Connect(function()
			TweenService:Create(
				Icon,
				TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
				{ImageColor3 = ColorUI}
			):Play()
		end)

		Icon.MouseLeave:Connect(function()
			TweenService:Create(
				Icon,
				TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
				{ImageColor3 = Color3.fromRGB(255, 255, 255)}
			):Play()
		end)

		local FocusUI = false

		local MainPage = Instance.new("Frame")
		local MainPageUICorner = Instance.new("UICorner")
		local ScrollingMainPage = Instance.new("ScrollingFrame")
		local ScrollingMainPageUIListLayout = Instance.new("UIListLayout")
		local ScrollingMainPageUIPadding = Instance.new("UIPadding")

		MainPage.Name = name.."_MainPage"
		MainPage.Parent = FolderPage
		MainPage.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
		MainPage.BackgroundTransparency = 1.000
		MainPage.BorderColor3 = Color3.fromRGB(27, 42, 53)
		MainPage.Size = UDim2.new(0, 500, 0, 332)
		MainPage.LayoutOrder = PageOrder

		MainPageUICorner.CornerRadius = UDim.new(0, 3)
		MainPageUICorner.Name = "MainPageUICorner"
		MainPageUICorner.Parent = MainPage

		ScrollingMainPage.Name = "ScrollingMainPage"
		ScrollingMainPage.Parent = MainPage
		ScrollingMainPage.Active = true
		ScrollingMainPage.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingMainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingMainPage.BackgroundTransparency = 1.000
		ScrollingMainPage.BorderSizePixel = 0
		ScrollingMainPage.Position = UDim2.new(0.5, 0, 0.5, 0)
		ScrollingMainPage.Size = UDim2.new(0, 0, 0, 0)
		ScrollingMainPage.BottomImage = ""
		ScrollingMainPage.CanvasSize = UDim2.new(0, 0, 0, 515)
		ScrollingMainPage.ScrollBarThickness = 0
		ScrollingMainPage.TopImage = ""
		ScrollingMainPage.ClipsDescendants = true

		local LoadScrollbarFocus = false

		LoadScrollbar.MouseButton1Down:Connect(function()
			SoundClick:Play()
			if LoadScrollbarFocus == false then
				TweenService:Create(
					LoadScrollbar,
					TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
					{ImageColor3 = Color3.fromRGB(255, 255, 255)}
				):Play()
				TweenService:Create(
					LoadScrollbar,
					TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 20, 0, 20)}
				):Play()
				wait(0.1)
				TweenService:Create(
					LoadScrollbar,
					TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 30, 0, 30)}
				):Play()
				TweenService:Create(
					Scrollingbar,
					TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 500, 0, 55)}
				):Play()
				TweenService:Create(ScrollingMainPage,TweenInfo.new(0.2,Enum.EasingStyle.Quart),{Size = UDim2.new(0, 500, 0, 322)}):Play()
			else
				TweenService:Create(
					LoadScrollbar,
					TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
					{ImageColor3 = Color3.fromRGB(255, 255, 255)}
				):Play()
				TweenService:Create(
					LoadScrollbar,
					TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 20, 0, 20)}
				):Play()
				wait(0.1)
				TweenService:Create(
					LoadScrollbar,
					TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 30, 0, 30)}
				):Play()
				TweenService:Create(
					Scrollingbar,
					TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 500, 0, 0)}
				):Play()
				TweenService:Create(ScrollingMainPage,TweenInfo.new(0.2,Enum.EasingStyle.Quart),{Size = UDim2.new(0, 0, 0, 0)}):Play()
			end
			FocusUI = not FocusUI
			LoadScrollbarFocus = not LoadScrollbarFocus
		end)

		ScrollingMainPageUIListLayout.Name = "ScrollingMainPageUIListLayout"
		ScrollingMainPageUIListLayout.Parent = ScrollingMainPage
		ScrollingMainPageUIListLayout.FillDirection = Enum.FillDirection.Horizontal
		ScrollingMainPageUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ScrollingMainPageUIListLayout.Padding = UDim.new(0, 5)

		ScrollingMainPageUIPadding.Name = "ScrollingMainPageUIPadding"
		ScrollingMainPageUIPadding.Parent = ScrollingMainPage
		ScrollingMainPageUIPadding.PaddingLeft = UDim.new(0, 5)
		ScrollingMainPageUIPadding.PaddingTop = UDim.new(0, 5)

		Icon.MouseButton1Click:connect(function()
			if FocusUI == false then
				TweenService:Create(ScrollingMainPage,TweenInfo.new(0.2,Enum.EasingStyle.Quart),{Size = UDim2.new(0, 500, 0, 322)}):Play()
				if MainPage.Name == name.."_MainPage" then
					FolderPageUIPageLayout:JumpToIndex(MainPage.LayoutOrder)
				end
				SoundClick:Play()
			else
				TweenService:Create(ScrollingMainPage,TweenInfo.new(0.2,Enum.EasingStyle.Quart),{Size = UDim2.new(0, 0, 0, 0)}):Play()
			end
			FocusUI = not FocusUI
		end)

		local LibraryPage = {}

		function LibraryPage.page()
			local PageFrame = Instance.new("Frame")
			local PageFrameMainUICorner = Instance.new("UICorner")
			local PageFrameMainUIListLayout = Instance.new("UIListLayout")
			local PageFrameMainUIPadding = Instance.new("UIPadding")

			PageFrame.Name = "PageFrame"
			PageFrame.Parent = ScrollingMainPage
			PageFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			PageFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			PageFrame.Position = UDim2.new(0.274747461, 0, 0.492354751, 0)
			PageFrame.Size = UDim2.new(0, 490, 0, 322)
			PageFrame.BackgroundTransparency = 0

			PageFrameMainUICorner.CornerRadius = UDim.new(0, 4)
			PageFrameMainUICorner.Name = "PageFrameMainUICorner"
			PageFrameMainUICorner.Parent = PageFrame

			local ScrollingPageFrame = Instance.new("ScrollingFrame")
			local ScrollingPageFrameUIListLayout = Instance.new("UIListLayout")
			local ScrollingPageFrameUIPadding = Instance.new("UIPadding")

			ScrollingPageFrame.Name = "ScrollingMainPage"
			ScrollingPageFrame.Parent = PageFrame
			ScrollingPageFrame.Active = true
			ScrollingPageFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			ScrollingPageFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ScrollingPageFrame.BackgroundTransparency = 1
			ScrollingPageFrame.BorderSizePixel = 0
			ScrollingPageFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			ScrollingPageFrame.Size = UDim2.new(0, 490, 0, 322)
			ScrollingPageFrame.BottomImage = ""
			ScrollingPageFrame.CanvasSize = UDim2.new(0, 0, 0, 515)
			ScrollingPageFrame.ScrollBarThickness = 0
			ScrollingPageFrame.TopImage = ""
			ScrollingPageFrame.ClipsDescendants = true

			ScrollingPageFrameUIListLayout.Name = "ScrollingMainPageUIListLayout"
			ScrollingPageFrameUIListLayout.Parent = ScrollingPageFrame
			ScrollingPageFrameUIListLayout.FillDirection = Enum.FillDirection.Vertical
			ScrollingPageFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ScrollingPageFrameUIListLayout.Padding = UDim.new(0, 9)

			ScrollingPageFrameUIPadding.Name = "ScrollingMainPageUIPadding"
			ScrollingPageFrameUIPadding.Parent = ScrollingPageFrame
			ScrollingPageFrameUIPadding.PaddingLeft = UDim.new(0, 7)
			ScrollingPageFrameUIPadding.PaddingTop = UDim.new(0, 8)

			game:GetService("RunService").Stepped:Connect(function()
				pcall(function()
					ScrollingPageFrame.CanvasSize =  UDim2.new(0, 0, 0,ScrollingPageFrameUIListLayout.AbsoluteContentSize.Y + 20)
					ScrollingMainPage.CanvasSize = UDim2.new(0, ScrollingMainPageUIListLayout.AbsoluteContentSize.X +10, 0,0)
				end)
			end)

			local LibraryFunction = {}

			function LibraryFunction.Line()
				local LineFrame = Instance.new("Frame")
				local Line = Instance.new("TextButton")

				LineFrame.Name = "LineFrame"
				LineFrame.Parent = ScrollingPageFrame
				LineFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				LineFrame.BackgroundTransparency = 1.000
				LineFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				LineFrame.Size = UDim2.new(0, 475, 0, 15)

				Line.Name = "Line"
				Line.Parent = LineFrame
				Line.AnchorPoint = Vector2.new(0.5, 0.5)
				Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Line.BackgroundTransparency = 0.750
				Line.BorderSizePixel = 0
				Line.Position = UDim2.new(0.5, 0, 0.5, 0)
				Line.Size = UDim2.new(0, 478, 0, 1)
				Line.Font = Enum.Font.SourceSans
				Line.Text = ""
				Line.TextColor3 = Color3.fromRGB(0, 0, 0)
				Line.TextSize = 14.000
			end
			
			function LibraryFunction.TextBox(options)
				
				local NameTitle = options.Title or "TextBox"
				local Holder = options.Holder or "Holder"
				local callback = options.callback or function() end

				local TextBoxFrame = Instance.new("Frame")
				local TextBoxFrameUICorner = Instance.new("UICorner")
				local Title = Instance.new("TextLabel")
				local TextBoxMain = Instance.new("TextButton")
				local TextBox = Instance.new("TextBox")
				local TextBoxUICorner = Instance.new("UICorner")

				TextBoxFrame.Name = "TextBoxFrame"
				TextBoxFrame.Parent = ScrollingPageFrame
				TextBoxFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				TextBoxFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				TextBoxFrame.Size = UDim2.new(0, 475, 0, 35)

				TextBoxFrameUICorner.Name = "TextBoxFrameUICorner"
				TextBoxFrameUICorner.Parent = TextBoxFrame

				Title.Name = "Title"
				Title.Parent = TextBoxFrame
				Title.Active = true
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.0208332911, 0, 0, 0)
				Title.Size = UDim2.new(0, 240, 0, 35)
				Title.Font = Enum.Font.GothamBold
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextTransparency = 0.450
				Title.TextWrapped = true
				Title.Text = NameTitle
				Title.TextXAlignment = Enum.TextXAlignment.Left

				TextBoxMain.Name = "TextBoxMain"
				TextBoxMain.Parent = TextBoxFrame
				TextBoxMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBoxMain.BackgroundTransparency = 1.000
				TextBoxMain.Size = UDim2.new(0, 478, 0, 35)
				TextBoxMain.Font = Enum.Font.SourceSans
				TextBoxMain.Text = ""
				TextBoxMain.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextBoxMain.TextSize = 14.000

				TextBox.Parent = TextBoxMain
				TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
				TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0.819999993, 0, 0.5, 0)
				TextBox.Size = UDim2.new(0, 150, 0, 25)
				TextBox.Font = Enum.Font.GothamBold
				TextBox.Text = Holder
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.TextSize = 12.000
				TextBox.TextTransparency = 0.450

				TextBoxUICorner.Name = "TextBoxUICorner"
				TextBoxUICorner.Parent = TextBox
				
				TextBox.FocusLost:Connect(function(ep)
					if ep then
						if #TextBox.Text > 0 then
							pcall(callback, TextBox.Text)
						end
					end
				end)
			end

			function LibraryFunction.Toggle(options)

				local TitleT = options.Title or "Toggle"
				local default = options.Default or false
				local callback = options.callback or function() end

				local ToggleFrame = Instance.new("Frame")
				local ToggleFrameUICorner = Instance.new("UICorner")
				local Title = Instance.new("TextLabel")
				local ButtonToggle = Instance.new("TextButton")
				local Toggle_1 = Instance.new("ImageButton")
				local Toggle_1UICorner = Instance.new("UICorner")
				local Toggle_2 = Instance.new("ImageButton")
				local Toggle_2UICorner = Instance.new("UICorner")

				ToggleFrame.Name = "ToggleFrame"
				ToggleFrame.Parent = ScrollingPageFrame
				ToggleFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
				ToggleFrame.Size = UDim2.new(0, 475, 0, 46)

				ToggleFrameUICorner.Name = "ToggleFrameUICorner"
				ToggleFrameUICorner.Parent = ToggleFrame

				Title.Name = "Title"
				Title.Parent = ToggleFrame
				Title.Active = true
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.020833334, 0, 0, 0)
				Title.Size = UDim2.new(0, 406, 0, 46)
				Title.Font = Enum.Font.GothamBold
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.Text = tostring(TitleT)
				Title.TextTransparency = 0.450
				Title.TextWrapped = true
				Title.TextXAlignment = Enum.TextXAlignment.Left

				ButtonToggle.Name = "ButtonToggle"
				ButtonToggle.Parent = ToggleFrame
				ButtonToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonToggle.BackgroundTransparency = 1.000
				ButtonToggle.Size = UDim2.new(0, 478, 0, 46)
				ButtonToggle.Font = Enum.Font.SourceSans
				ButtonToggle.Text = ""
				ButtonToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonToggle.TextSize = 14.000
				ButtonToggle.ClipsDescendants = true

				Toggle_1.Name = "Toggle_1"
				Toggle_1.Parent = ButtonToggle
				Toggle_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				Toggle_1.Position = UDim2.new(0.91, 0, 0.5, 0)
				Toggle_1.Size = UDim2.new(0, 50, 0, 24)
				Toggle_1.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
				Toggle_1.ImageTransparency = 1.000

				Toggle_1UICorner.CornerRadius = UDim.new(0, 30)
				Toggle_1UICorner.Name = "Toggle_1UICorner"
				Toggle_1UICorner.Parent = Toggle_1

				Toggle_2.Name = "Toggle_2"
				Toggle_2.Parent = Toggle_1
				Toggle_2.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle_2.BackgroundTransparency = 0.45
				Toggle_2.Position = UDim2.new(0.219999999, 0, 0.5, 0)
				Toggle_2.Size = UDim2.new(0, 16, 0, 16)
				Toggle_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
				Toggle_2.ImageTransparency = 1.000

				Toggle_2UICorner.CornerRadius = UDim.new(0, 30)
				Toggle_2UICorner.Name = "Toggle_2UICorner"
				Toggle_2UICorner.Parent = Toggle_2

				local visual = {toggle = false , lock = true , togglefunction ={

				},}

				ButtonToggle.MouseEnter:Connect(function()
					if visual.toggle == false and visual.lock == true then
						TweenService:Create(
							Title,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0}
						):Play()
					end
				end)

				ButtonToggle.MouseLeave:Connect(function()
					if visual.toggle == false and visual.lock == true then
						TweenService:Create(
							Title,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0.45}
						):Play()
					end
				end)

				ButtonToggle.MouseButton1Down:Connect(function()
					CircleAnim(ButtonToggle,Color3.fromRGB(255, 255, 255),Color3.fromRGB(255, 255, 255))
					if visual.toggle == false and visual.lock == true then
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundTransparency = 0}
						):Play()
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Position = UDim2.new(0.78, 0, 0.5, 0)}
						):Play()
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 22, 0, 16)}
						):Play()
						wait(.12)
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 16, 0, 16)}
						):Play()
					elseif visual.lock == true then
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundTransparency = 0.45}
						):Play()
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Position = UDim2.new(0.219999999, 0, 0.5, 0)}
						):Play()
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 22, 0, 16)}
						):Play()
						wait(.12)
						TweenService:Create(
							Toggle_2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 16, 0, 16)}
						):Play()
					end
					if  visual.lock == true  then
						visual.toggle = not visual.toggle
						callback(visual.toggle)
					end
				end)

				if default == true then
					TweenService:Create(
						Title,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					TweenService:Create(
						Toggle_2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					TweenService:Create(
						Toggle_2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(255, 255, 255)}
					):Play()
					TweenService:Create(
						Toggle_2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position = UDim2.new(0.78, 0, 0.5, 0)}
					):Play()
					TweenService:Create(
						Toggle_2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 22, 0, 16)}
					):Play()
					wait(.12)
					TweenService:Create(
						Toggle_2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 16, 0, 16)}
					):Play()
					if  visual.lock == true  then
						visual.toggle = not visual.toggle
						callback(visual.toggle)
					end
				end

				local LockerFrame = Instance.new("Frame")
				local LockIcon = Instance.new("ImageLabel")

				LockerFrame.Name = "LockerFrame"
				LockerFrame.Parent = ToggleFrame
				LockerFrame.Active = true
				LockerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LockerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				LockerFrame.BorderSizePixel = 0
				LockerFrame.ClipsDescendants = true
				LockerFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				LockerFrame.Size = UDim2.new(0, 480, 0, 46)
				LockerFrame.BackgroundTransparency = 1

				LockIcon.Name = "LockIcon"
				LockIcon.Parent = LockerFrame
				LockIcon.AnchorPoint = Vector2.new(0.5, 0.5)
				LockIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LockIcon.BackgroundTransparency = 1.000
				LockIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
				LockIcon.Size = UDim2.new(0, 0, 0, 0)
				LockIcon.Image = "http://www.roblox.com/asset/?id=6031082533"

				function visual.togglefunction.lock()
					visual.lock = false
					TweenService:Create(
						LockerFrame,
						TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 0.1}
					):Play()
					wait(0.5)
					TweenService:Create(
						LockIcon,
						TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 20, 0, 20)}
					):Play()
				end
				function visual.togglefunction.unlock()
					visual.lock = true
					TweenService:Create(
						LockerFrame,
						TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 1}
					):Play()
					wait(0.5)
					TweenService:Create(
						LockIcon,
						TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 0, 0, 0)}
					):Play()
				end

				LockerFrame.MouseEnter:Connect(function()
					for i = 1,3 do
						TweenService:Create(LockIcon, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Rotation = 10}):Play()
						wait(.1)
						TweenService:Create(LockIcon, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Rotation = -10}):Play()
						wait(.1)
					end
					TweenService:Create(LockIcon, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Rotation = 0}):Play()
				end)
				LockerFrame.MouseLeave:Connect(function()
					TweenService:Create(LockIcon, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Rotation = 0}):Play()
				end)
				return visual.togglefunction
			end

			function LibraryFunction.Button(options)

				local TitleButton = options.Title or "Button"
				local callback = options.callback or function() end

				local ButtonFrame = Instance.new("Frame")
				local ButtonFrameUICorner = Instance.new("UICorner")
				local Title = Instance.new("TextLabel")
				local Button = Instance.new("TextButton")

				ButtonFrame.Name = "ButtonFrame"
				ButtonFrame.Parent = ScrollingPageFrame
				ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonFrame.BackgroundTransparency = 0.450
				ButtonFrame.Size = UDim2.new(0, 475, 0, 35)

				ButtonFrameUICorner.Name = "ButtonFrameUICorner"
				ButtonFrameUICorner.Parent = ButtonFrame

				Title.Name = "Title"
				Title.Parent = ButtonFrame
				Title.Active = true
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.020833334, 0, 0, 0)
				Title.Size = UDim2.new(0, 406, 0, 35)
				Title.Font = Enum.Font.GothamBold
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextTransparency = 0.450
				Title.TextWrapped = true
				Title.Text = tostring(TitleButton)
				Title.TextXAlignment = Enum.TextXAlignment.Left

				Button.Name = "Button"
				Button.Parent = ButtonFrame
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.Size = UDim2.new(0, 478, 0, 35)
				Button.Font = Enum.Font.SourceSans
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				Button.ClipsDescendants = true

				Button.MouseEnter:Connect(function()
					TweenService:Create(
						Title,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					TweenService:Create(
						ButtonFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
				end)

				Button.MouseLeave:Connect(function()
					TweenService:Create(
						Title,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0.45}
					):Play()
					TweenService:Create(
						ButtonFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0.45}
					):Play()
				end)

				Button.MouseButton1Down:Connect(function()
					CircleAnim(Button,Color3.fromRGB(0, 0, 0),Color3.fromRGB(0, 0, 0))
					pcall(callback)
				end)
			end
			
			function LibraryFunction.MultiDropdown(options)

				local TitleDropdown = options.Title or "MultiDropdown"
				local callback = options.callback or function() end
				local Item = options.Item or {}
				local Default = options.Default or {}
				local DropdownFocus = false
				local DropdownFunctions = {}
				local MultiDropdown = {}

				local DropdownFrame = Instance.new("Frame")
				local DropdownFrameUICorner = Instance.new("UICorner")
				local Title = Instance.new("TextLabel")
				local ButtonDropdown = Instance.new("TextButton")
				local Arrow = Instance.new("ImageLabel")

				DropdownFrame.Name = "DropdownFrame"
				DropdownFrame.Parent = ScrollingPageFrame
				DropdownFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				DropdownFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				DropdownFrame.Size = UDim2.new(0, 475, 0, 35)

				DropdownFrameUICorner.Name = "DropdownFrameUICorner"
				DropdownFrameUICorner.Parent = DropdownFrame

				Title.Name = "Title"
				Title.Parent = DropdownFrame
				Title.Active = true
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.020833334, 0, 0, 0)
				Title.Size = UDim2.new(0, 406, 0, 35)
				Title.Font = Enum.Font.GothamBold
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextTransparency = 0.450
				Title.Text = TitleDropdown.." | "
				Title.TextWrapped = true
				Title.TextXAlignment = Enum.TextXAlignment.Left

				ButtonDropdown.Name = "ButtonDropdown"
				ButtonDropdown.Parent = DropdownFrame
				ButtonDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonDropdown.BackgroundTransparency = 1.000
				ButtonDropdown.Size = UDim2.new(0, 478, 0, 35)
				ButtonDropdown.Font = Enum.Font.SourceSans
				ButtonDropdown.Text = ""
				ButtonDropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonDropdown.TextSize = 14.000
				ButtonDropdown.ClipsDescendants = true

				Arrow.Name = "Arrow"
				Arrow.Parent = DropdownFrame
				Arrow.Active = true
				Arrow.AnchorPoint = Vector2.new(0.5, 0.5)
				Arrow.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Arrow.BackgroundTransparency = 1.000
				Arrow.Position = UDim2.new(0.960416675, 0, 0.5, 0)
				Arrow.Rotation = 90.000
				Arrow.Size = UDim2.new(0, 28, 0, 28)
				Arrow.Image = "http://www.roblox.com/asset/?id=6026663699"
				Arrow.ImageTransparency = 0.450

				local SelectionScrollingFrame = Instance.new("ScrollingFrame")
				local UIListLayoutSelectionScrollingFrame = Instance.new("UIListLayout")
				local UIPaddingSelectionScrollingFrame = Instance.new("UIPadding")

				local SelectionFrame = Instance.new("Frame")

				SelectionFrame.Name = "SelectionFrame"
				SelectionFrame.Parent = ScrollingPageFrame
				SelectionFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				SelectionFrame.BorderSizePixel = 0
				SelectionFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				SelectionFrame.Position = UDim2.new(0, 0, 0.413249224, 0)
				SelectionFrame.Size = UDim2.new(0, 475, 0, 0)
				SelectionFrame.ClipsDescendants = true
				SelectionFrame.Visible = true

				local SelectionFrameUICorner = Instance.new("UICorner")

				SelectionFrameUICorner.Name = "SelectionFrameUICorner"
				SelectionFrameUICorner.Parent = SelectionFrame

				SelectionScrollingFrame.Name = "SelectionScrollingFrame"
				SelectionScrollingFrame.Parent = SelectionFrame
				SelectionScrollingFrame.Active = true
				SelectionScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectionScrollingFrame.BackgroundTransparency = 1.000
				SelectionScrollingFrame.BorderSizePixel = 0
				SelectionScrollingFrame.Size = UDim2.new(0, 475, 0, 120)
				SelectionScrollingFrame.ScrollBarThickness = 0

				UIListLayoutSelectionScrollingFrame.Name = "UIListLayoutSelectionScrollingFrame"
				UIListLayoutSelectionScrollingFrame.Parent = SelectionScrollingFrame
				UIListLayoutSelectionScrollingFrame.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayoutSelectionScrollingFrame.Padding = UDim.new(0, 5)

				UIPaddingSelectionScrollingFrame.Name = "UIPaddingSelectionScrollingFrame"
				UIPaddingSelectionScrollingFrame.Parent = SelectionScrollingFrame
				UIPaddingSelectionScrollingFrame.PaddingLeft = UDim.new(0, 5)
				UIPaddingSelectionScrollingFrame.PaddingTop = UDim.new(0, 5)

				for i,v in pairs(Item) do
					local BarDropdown = Instance.new("Frame")
					local ButtonBar = Instance.new("TextButton")
					local Logo = Instance.new("ImageLabel")
					local TextButtonBar = Instance.new("TextLabel")

					for o,p in pairs(Default) do
						if v == p  then
							table.insert(MultiDropdown,p)
							Title.Text = tostring(TitleDropdown.." : "..table.concat(MultiDropdown,","))
							pcall(callback,p)
							pcall(callback,MultiDropdown)
						end
					end

					BarDropdown.Name = "BarDropdown"
					BarDropdown.Parent = SelectionScrollingFrame
					BarDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					BarDropdown.BackgroundTransparency = 1.000
					BarDropdown.Size = UDim2.new(0, 465, 0, 36)

					ButtonBar.Name = "ButtonBar"
					ButtonBar.Parent = BarDropdown
					ButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonBar.BackgroundTransparency = 1.000
					ButtonBar.Size = UDim2.new(0, 465, 0, 36)
					ButtonBar.Font = Enum.Font.SourceSans
					ButtonBar.Text = ""
					ButtonBar.TextColor3 = Color3.fromRGB(0, 0, 0)
					ButtonBar.TextSize = 14.000
					ButtonBar.ClipsDescendants = true

					Logo.Name = "Logo"
					Logo.Parent = ButtonBar
					Logo.AnchorPoint = Vector2.new(0.5, 0.5)
					Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Logo.BackgroundTransparency = 1.000
					Logo.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
					Logo.Size = UDim2.new(0, 25, 0, 25)
					Logo.Image = "http://www.roblox.com/asset/?id=6031251532"
					Logo.ImageTransparency = 0.450

					TextButtonBar.Name = "TextButtonBar"
					TextButtonBar.Parent = ButtonBar
					TextButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.BackgroundTransparency = 1.000
					TextButtonBar.Position = UDim2.new(0.0924731195, 0, 0.138888896, 0)
					TextButtonBar.Size = UDim2.new(0, 422, 0, 25)
					TextButtonBar.Font = Enum.Font.GothamBold
					TextButtonBar.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.TextSize = 14.000
					TextButtonBar.TextTransparency = 0.450
					TextButtonBar.TextWrapped = true
					TextButtonBar.Text = v
					TextButtonBar.TextXAlignment = Enum.TextXAlignment.Left

					ButtonBar.MouseButton1Down:Connect(function()
						if tablefound(MultiDropdown,v) == false then
							table.insert(MultiDropdown,v)
							TweenService:Create(
								TextButtonBar,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 0}
							):Play()
							TweenService:Create(
								Logo,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
						else
							for ine,va in pairs(MultiDropdown) do
								if va == v then
									table.remove(MultiDropdown,ine)
								end
							end
							TweenService:Create(
								TextButtonBar,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 0.45}
							):Play()
							TweenService:Create(
								Logo,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
						end
						Title.Text = tostring(TitleDropdown.." : "..table.concat(MultiDropdown,","))
						CircleAnim(ButtonBar,Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255))
						pcall(callback,MultiDropdown)
					end)
				end

				ButtonDropdown.MouseEnter:Connect(function()
					if DropdownFocus == false then
						TweenService:Create(
							Title,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0}
						):Play()
					end
				end)

				ButtonDropdown.MouseLeave:Connect(function()
					if DropdownFocus == false then
						TweenService:Create(
							Title,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0.45}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0.45}
						):Play()
					end
				end)

				ButtonDropdown.MouseButton1Down:Connect(function()
					CircleAnim(ButtonDropdown,Color3.fromRGB(255, 255, 255),Color3.fromRGB(255, 255, 255))
					if DropdownFocus == false then
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 23, 0, 23)}
						):Play()
						wait(.1)
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 28, 0, 28)}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							SelectionFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 475, 0, 120)}
						):Play()
					else
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 23, 0, 23)}
						):Play()
						wait(.1)
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 28, 0, 28)}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							SelectionFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 475, 0, 0)}
						):Play()
					end
					SelectionScrollingFrame.CanvasSize = UDim2.new(0,0,0,UIListLayoutSelectionScrollingFrame.AbsoluteContentSize.Y + 10)
					DropdownFocus = not DropdownFocus
				end)

				function DropdownFunctions.GetText(value)
					Title.Text = TitleDropdown.." | "..value
				end

				function DropdownFunctions.Clear()
					TweenService:Create(
						SelectionFrame,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 475, 0, 0)}
					):Play()
					DropdownFocus = not DropdownFocus
					Title.Text = tostring(TitleDropdown.." | ")
					for i, v in next, SelectionScrollingFrame:GetChildren() do
						if v:IsA("Frame") then
							v:Destroy()
						end
					end
				end

				function DropdownFunctions.Add(value)

					local BarDropdown = Instance.new("Frame")
					local ButtonBar = Instance.new("TextButton")
					local Logo = Instance.new("ImageLabel")
					local TextButtonBar = Instance.new("TextLabel")

					BarDropdown.Name = "BarDropdown"
					BarDropdown.Parent = SelectionScrollingFrame
					BarDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					BarDropdown.BackgroundTransparency = 1.000
					BarDropdown.Size = UDim2.new(0, 465, 0, 36)

					ButtonBar.Name = "ButtonBar"
					ButtonBar.Parent = BarDropdown
					ButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonBar.BackgroundTransparency = 1.000
					ButtonBar.Size = UDim2.new(0, 465, 0, 36)
					ButtonBar.Font = Enum.Font.SourceSans
					ButtonBar.Text = ""
					ButtonBar.TextColor3 = Color3.fromRGB(0, 0, 0)
					ButtonBar.TextSize = 14.000
					ButtonBar.ClipsDescendants = true

					Logo.Name = "Logo"
					Logo.Parent = ButtonBar
					Logo.AnchorPoint = Vector2.new(0.5, 0.5)
					Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Logo.BackgroundTransparency = 1.000
					Logo.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
					Logo.Size = UDim2.new(0, 25, 0, 25)
					Logo.Image = "http://www.roblox.com/asset/?id=6031251532"
					Logo.ImageTransparency = 0.450

					TextButtonBar.Name = "TextButtonBar"
					TextButtonBar.Parent = ButtonBar
					TextButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.BackgroundTransparency = 1.000
					TextButtonBar.Position = UDim2.new(0.0924731195, 0, 0.138888896, 0)
					TextButtonBar.Size = UDim2.new(0, 422, 0, 25)
					TextButtonBar.Font = Enum.Font.GothamBold
					TextButtonBar.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.TextSize = 14.000
					TextButtonBar.TextTransparency = 0.450
					TextButtonBar.TextWrapped = true
					TextButtonBar.Text = value
					TextButtonBar.TextXAlignment = Enum.TextXAlignment.Left

					ButtonBar.MouseButton1Down:Connect(function()
						if tablefound(MultiDropdown,value) == false then
							table.insert(MultiDropdown,value)
							TweenService:Create(
								TextButtonBar,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 0}
							):Play()
							TweenService:Create(
								Logo,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
						else
							for ine,va in pairs(MultiDropdown) do
								if va == value then
									table.remove(MultiDropdown,ine)
								end
							end
							TweenService:Create(
								TextButtonBar,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 0.45}
							):Play()
							TweenService:Create(
								Logo,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
						end
						Title.Text = tostring(TitleDropdown.." : "..table.concat(MultiDropdown,","))
						CircleAnim(ButtonBar,Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255))
						pcall(callback,MultiDropdown)
					end)
					SelectionScrollingFrame.CanvasSize = UDim2.new(0,0,0,UIListLayoutSelectionScrollingFrame.AbsoluteContentSize.Y + 10)
					DropdownFocus = not DropdownFocus
				end

				return DropdownFunctions
			end

			function LibraryFunction.Dropdown(options)

				local TitleDropdown = options.Title or "Dropdown | nil"
				local callback = options.callback or function() end
				local Item = options.Item or {}
				local Default = options.Default or {}
				local DropdownFocus = false
				local DropdownFunctions = {}

				local DropdownFrame = Instance.new("Frame")
				local DropdownFrameUICorner = Instance.new("UICorner")
				local Title = Instance.new("TextLabel")
				local ButtonDropdown = Instance.new("TextButton")
				local Arrow = Instance.new("ImageLabel")

				DropdownFrame.Name = "DropdownFrame"
				DropdownFrame.Parent = ScrollingPageFrame
				DropdownFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				DropdownFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				DropdownFrame.Size = UDim2.new(0, 475, 0, 35)

				DropdownFrameUICorner.Name = "DropdownFrameUICorner"
				DropdownFrameUICorner.Parent = DropdownFrame

				Title.Name = "Title"
				Title.Parent = DropdownFrame
				Title.Active = true
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.020833334, 0, 0, 0)
				Title.Size = UDim2.new(0, 406, 0, 35)
				Title.Font = Enum.Font.GothamBold
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextTransparency = 0.450
				Title.Text = TitleDropdown.." | "
				Title.TextWrapped = true
				Title.TextXAlignment = Enum.TextXAlignment.Left

				ButtonDropdown.Name = "ButtonDropdown"
				ButtonDropdown.Parent = DropdownFrame
				ButtonDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonDropdown.BackgroundTransparency = 1.000
				ButtonDropdown.Size = UDim2.new(0, 478, 0, 35)
				ButtonDropdown.Font = Enum.Font.SourceSans
				ButtonDropdown.Text = ""
				ButtonDropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonDropdown.TextSize = 14.000
				ButtonDropdown.ClipsDescendants = true

				Arrow.Name = "Arrow"
				Arrow.Parent = DropdownFrame
				Arrow.Active = true
				Arrow.AnchorPoint = Vector2.new(0.5, 0.5)
				Arrow.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Arrow.BackgroundTransparency = 1.000
				Arrow.Position = UDim2.new(0.960416675, 0, 0.5, 0)
				Arrow.Rotation = 90.000
				Arrow.Size = UDim2.new(0, 28, 0, 28)
				Arrow.Image = "http://www.roblox.com/asset/?id=6026663699"
				Arrow.ImageTransparency = 0.450

				local SelectionScrollingFrame = Instance.new("ScrollingFrame")
				local UIListLayoutSelectionScrollingFrame = Instance.new("UIListLayout")
				local UIPaddingSelectionScrollingFrame = Instance.new("UIPadding")

				local SelectionFrame = Instance.new("Frame")

				SelectionFrame.Name = "SelectionFrame"
				SelectionFrame.Parent = ScrollingPageFrame
				SelectionFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				SelectionFrame.BorderSizePixel = 0
				SelectionFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				SelectionFrame.Position = UDim2.new(0, 0, 0.413249224, 0)
				SelectionFrame.Size = UDim2.new(0, 475, 0, 0)
				SelectionFrame.ClipsDescendants = true
				SelectionFrame.Visible = true

				local SelectionFrameUICorner = Instance.new("UICorner")

				SelectionFrameUICorner.Name = "SelectionFrameUICorner"
				SelectionFrameUICorner.Parent = SelectionFrame

				SelectionScrollingFrame.Name = "SelectionScrollingFrame"
				SelectionScrollingFrame.Parent = SelectionFrame
				SelectionScrollingFrame.Active = true
				SelectionScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectionScrollingFrame.BackgroundTransparency = 1.000
				SelectionScrollingFrame.BorderSizePixel = 0
				SelectionScrollingFrame.Size = UDim2.new(0, 475, 0, 120)
				SelectionScrollingFrame.ScrollBarThickness = 0

				UIListLayoutSelectionScrollingFrame.Name = "UIListLayoutSelectionScrollingFrame"
				UIListLayoutSelectionScrollingFrame.Parent = SelectionScrollingFrame
				UIListLayoutSelectionScrollingFrame.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayoutSelectionScrollingFrame.Padding = UDim.new(0, 5)

				UIPaddingSelectionScrollingFrame.Name = "UIPaddingSelectionScrollingFrame"
				UIPaddingSelectionScrollingFrame.Parent = SelectionScrollingFrame
				UIPaddingSelectionScrollingFrame.PaddingLeft = UDim.new(0, 5)
				UIPaddingSelectionScrollingFrame.PaddingTop = UDim.new(0, 5)

				for i,v in pairs(Item) do
					local BarDropdown = Instance.new("Frame")
					local ButtonBar = Instance.new("TextButton")
					local Logo = Instance.new("ImageLabel")
					local TextButtonBar = Instance.new("TextLabel")

					for o,p in pairs(Default) do
						if v == p  then
							Title.Text = tostring(Title.." | "..p)
							callback(p)
						end
					end

					BarDropdown.Name = "BarDropdown"
					BarDropdown.Parent = SelectionScrollingFrame
					BarDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					BarDropdown.BackgroundTransparency = 1.000
					BarDropdown.Size = UDim2.new(0, 465, 0, 36)

					ButtonBar.Name = "ButtonBar"
					ButtonBar.Parent = BarDropdown
					ButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonBar.BackgroundTransparency = 1.000
					ButtonBar.Size = UDim2.new(0, 465, 0, 36)
					ButtonBar.Font = Enum.Font.SourceSans
					ButtonBar.Text = ""
					ButtonBar.TextColor3 = Color3.fromRGB(0, 0, 0)
					ButtonBar.TextSize = 14.000
					ButtonBar.ClipsDescendants = true

					Logo.Name = "Logo"
					Logo.Parent = ButtonBar
					Logo.AnchorPoint = Vector2.new(0.5, 0.5)
					Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Logo.BackgroundTransparency = 1.000
					Logo.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
					Logo.Size = UDim2.new(0, 25, 0, 25)
					Logo.Image = "http://www.roblox.com/asset/?id=6031251532"
					Logo.ImageTransparency = 0.450

					TextButtonBar.Name = "TextButtonBar"
					TextButtonBar.Parent = ButtonBar
					TextButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.BackgroundTransparency = 1.000
					TextButtonBar.Position = UDim2.new(0.0924731195, 0, 0.138888896, 0)
					TextButtonBar.Size = UDim2.new(0, 422, 0, 25)
					TextButtonBar.Font = Enum.Font.GothamBold
					TextButtonBar.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.TextSize = 14.000
					TextButtonBar.TextTransparency = 0.450
					TextButtonBar.TextWrapped = true
					TextButtonBar.Text = v
					TextButtonBar.TextXAlignment = Enum.TextXAlignment.Left

					ButtonBar.MouseEnter:Connect(function()
						TweenService:Create(
							TextButtonBar,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0}
						):Play()
						TweenService:Create(
							Logo,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0}
						):Play()
					end)

					ButtonBar.MouseLeave:Connect(function()
						TweenService:Create(
							TextButtonBar,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0.45}
						):Play()
						TweenService:Create(
							Logo,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0.45}
						):Play()
					end)

					ButtonBar.MouseButton1Down:Connect(function()
						Title.Text = TitleDropdown.." | "..v
						CircleAnim(ButtonBar,Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255))
						callback(v)
					end)
				end

				ButtonDropdown.MouseEnter:Connect(function()
					if DropdownFocus == false then
						TweenService:Create(
							Title,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0}
						):Play()
					end
				end)

				ButtonDropdown.MouseLeave:Connect(function()
					if DropdownFocus == false then
						TweenService:Create(
							Title,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0.45}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0.45}
						):Play()
					end
				end)

				ButtonDropdown.MouseButton1Down:Connect(function()
					CircleAnim(ButtonDropdown,Color3.fromRGB(255, 255, 255),Color3.fromRGB(255, 255, 255))
					if DropdownFocus == false then
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 23, 0, 23)}
						):Play()
						wait(.1)
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 28, 0, 28)}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							SelectionFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 475, 0, 120)}
						):Play()
					else
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 23, 0, 23)}
						):Play()
						wait(.1)
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 28, 0, 28)}
						):Play()
						TweenService:Create(
							Arrow,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						TweenService:Create(
							SelectionFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 475, 0, 0)}
						):Play()
					end
					SelectionScrollingFrame.CanvasSize = UDim2.new(0,0,0,UIListLayoutSelectionScrollingFrame.AbsoluteContentSize.Y + 10)
					DropdownFocus = not DropdownFocus
				end)

				function DropdownFunctions.GetText(value)
					Title.Text = TitleDropdown.." | "..value
				end

				function DropdownFunctions.Clear()
					TweenService:Create(
						SelectionFrame,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 475, 0, 0)}
					):Play()
					DropdownFocus = not DropdownFocus
					Title.Text = tostring(TitleDropdown.." | ")
					for i, v in next, SelectionScrollingFrame:GetChildren() do
						if v:IsA("Frame") then
							v:Destroy()
						end
					end
				end

				function DropdownFunctions.Add(value)

					local BarDropdown = Instance.new("Frame")
					local ButtonBar = Instance.new("TextButton")
					local Logo = Instance.new("ImageLabel")
					local TextButtonBar = Instance.new("TextLabel")

					BarDropdown.Name = "BarDropdown"
					BarDropdown.Parent = SelectionScrollingFrame
					BarDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					BarDropdown.BackgroundTransparency = 1.000
					BarDropdown.Size = UDim2.new(0, 465, 0, 36)

					ButtonBar.Name = "ButtonBar"
					ButtonBar.Parent = BarDropdown
					ButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonBar.BackgroundTransparency = 1.000
					ButtonBar.Size = UDim2.new(0, 465, 0, 36)
					ButtonBar.Font = Enum.Font.SourceSans
					ButtonBar.Text = ""
					ButtonBar.TextColor3 = Color3.fromRGB(0, 0, 0)
					ButtonBar.TextSize = 14.000
					ButtonBar.ClipsDescendants = true

					Logo.Name = "Logo"
					Logo.Parent = ButtonBar
					Logo.AnchorPoint = Vector2.new(0.5, 0.5)
					Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Logo.BackgroundTransparency = 1.000
					Logo.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
					Logo.Size = UDim2.new(0, 25, 0, 25)
					Logo.Image = "http://www.roblox.com/asset/?id=6031251532"
					Logo.ImageTransparency = 0.450

					TextButtonBar.Name = "TextButtonBar"
					TextButtonBar.Parent = ButtonBar
					TextButtonBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.BackgroundTransparency = 1.000
					TextButtonBar.Position = UDim2.new(0.0924731195, 0, 0.138888896, 0)
					TextButtonBar.Size = UDim2.new(0, 422, 0, 25)
					TextButtonBar.Font = Enum.Font.GothamBold
					TextButtonBar.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButtonBar.TextSize = 14.000
					TextButtonBar.TextTransparency = 0.450
					TextButtonBar.TextWrapped = true
					TextButtonBar.Text = value
					TextButtonBar.TextXAlignment = Enum.TextXAlignment.Left

					ButtonBar.MouseEnter:Connect(function()
						TweenService:Create(
							TextButtonBar,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0}
						):Play()
						TweenService:Create(
							Logo,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0}
						):Play()
					end)

					ButtonBar.MouseLeave:Connect(function()
						TweenService:Create(
							TextButtonBar,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextTransparency = 0.45}
						):Play()
						TweenService:Create(
							Logo,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{ImageTransparency = 0.45}
						):Play()
					end)

					ButtonBar.MouseButton1Down:Connect(function()
						Title.Text = TitleDropdown.." | "..value
						CircleAnim(ButtonBar,Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255))
						callback(value)
					end)

					SelectionScrollingFrame.CanvasSize = UDim2.new(0,0,0,UIListLayoutSelectionScrollingFrame.AbsoluteContentSize.Y + 10)
					DropdownFocus = not DropdownFocus
				end

				return DropdownFunctions
			end

			function LibraryFunction.Slider(options)

				local sliderfunc = {}

				local visualTitle = options.Title or "Slider"
				local visualMax = options.Max or 100
				local visualMin = options.Min or 0
				local visualDec = options.Dec or false
				local visualDefault = options.Default or 50
				local visualcallback = options.callback or function() end

				local SliderFrame = Instance.new("Frame")
				local SliderFrame2 = Instance.new("Frame")
				local SliderFrame2UICorner = Instance.new("UICorner")
				local CustomValueMain = Instance.new("Frame")
				local CustomValueMainUICorner = Instance.new("UICorner")
				local TextBox = Instance.new("TextBox")
				local UICorner = Instance.new("UICorner")
				local SliderValueFrame = Instance.new("Frame")
				local SliderValueFrame_2 = Instance.new("Frame")
				local SliderValueFrame_3 = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local SliderTitle = Instance.new("TextLabel")
				local UICorner_3 = Instance.new("UICorner")

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = ScrollingPageFrame
				SliderFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				SliderFrame.BorderSizePixel = 0
				SliderFrame.ClipsDescendants = true
				SliderFrame.Position = UDim2.new(0, 0, 0.717121601, 0)
				SliderFrame.Size = UDim2.new(0, 475, 0, 42)

				SliderFrame2.Name = "SliderFrame2"
				SliderFrame2.Parent = SliderFrame
				SliderFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				SliderFrame2.BackgroundTransparency = 1.000
				SliderFrame2.BorderSizePixel = 0
				SliderFrame2.ClipsDescendants = true
				SliderFrame2.Position = UDim2.new(0.500085711, 0, 0.5, 0)
				SliderFrame2.Size = UDim2.new(0, 475, 0, 42)

				SliderFrame2UICorner.CornerRadius = UDim.new(0, 4)
				SliderFrame2UICorner.Name = "SliderFrame2UICorner"
				SliderFrame2UICorner.Parent = SliderFrame2

				CustomValueMain.Name = "CustomValueMain"
				CustomValueMain.Parent = SliderFrame2
				CustomValueMain.AnchorPoint = Vector2.new(0.5, 0.5)
				CustomValueMain.BackgroundColor3 = Color3.fromRGB(68, 187, 165)
				CustomValueMain.BackgroundTransparency = 1.000
				CustomValueMain.BorderSizePixel = 0
				CustomValueMain.ClipsDescendants = true
				CustomValueMain.Position = UDim2.new(0.865607262, 0, 0.25, 0)
				CustomValueMain.Size = UDim2.new(0, 105, 0, 20)

				CustomValueMainUICorner.CornerRadius = UDim.new(0, 4)
				CustomValueMainUICorner.Name = "CustomValueMainUICorner"
				CustomValueMainUICorner.Parent = CustomValueMain

				TextBox.Parent = CustomValueMain
				TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
				TextBox.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				TextBox.BackgroundTransparency = 1.000
				TextBox.BorderSizePixel = 0
				TextBox.ClipsDescendants = true
				TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextBox.Size = UDim2.new(0, 68, 0, 18)
				TextBox.Font = Enum.Font.GothamMedium
				TextBox.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
				TextBox.Text = tostring(visualDefault and math.floor( (visualDefault / visualMax) * (visualMax - visualMin) + visualMin) or 0)
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.TextTransparency = 1.000
				if visualDec == true then
					TextBox.Text =  tostring(visualDefault and string.format("%.1f",(visualDefault / visualMax) * (visualMax - visualMin) + visualMin) or 0)
				else
					TextBox.Text = tostring(visualDefault and math.floor( (visualDefault / visualMax) * (visualMax - visualMin) + visualMin) or 0)
				end

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Name = ""
				UICorner.Parent = TextBox

				SliderValueFrame.Name = "SliderValueFrame"
				SliderValueFrame.Parent = SliderFrame2
				SliderValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderValueFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				SliderValueFrame.BorderSizePixel = 0
				SliderValueFrame.Position = UDim2.new(0.499490649, 0, 0.770000637, 0)
				SliderValueFrame.Size = UDim2.new(0, 465, 0, 5)

				SliderValueFrame_2.Name = "SliderValueFrame"
				SliderValueFrame_2.Parent = SliderValueFrame
				SliderValueFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValueFrame_2.BorderSizePixel = 0
				SliderValueFrame_2.Size = UDim2.new((visualDefault or 0) / visualMax, 0, 0, 5)

				SliderValueFrame_3.Name = "SliderValueFrame"
				SliderValueFrame_3.Parent = SliderValueFrame
				SliderValueFrame_3.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderValueFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValueFrame_3.BorderSizePixel = 0
				SliderValueFrame_3.ClipsDescendants = true
				SliderValueFrame_3.Position = UDim2.new((visualDefault or 0)/visualMax, 0.5, 0.5,0.5, 0)
				SliderValueFrame_3.Size = UDim2.new(0, 10, 0, 10)

				UICorner_2.CornerRadius = UDim.new(0, 300)
				UICorner_2.Name = ""
				UICorner_2.Parent = SliderValueFrame_3

				SliderTitle.Name = "SliderTitle"
				SliderTitle.Parent = SliderFrame
				SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderTitle.BackgroundTransparency = 1.000
				SliderTitle.Position = UDim2.new(0.0210526325, 0, 0, 0)
				SliderTitle.Size = UDim2.new(0, 438, 0, 27)
				SliderTitle.Font = Enum.Font.GothamBold
				SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderTitle.TextSize = 14.000
				SliderTitle.Text = visualTitle .. " : ".. visualDefault
				SliderTitle.TextTransparency = 0.500
				SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_3.Parent = SliderFrame

				SliderFrame.MouseEnter:Connect(function()
					TweenService:Create(
						SliderTitle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				SliderFrame.MouseLeave:Connect(function()
					TweenService:Create(
						SliderTitle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0.45}
					):Play()
				end)

				local function move(input)
					local pos =
						UDim2.new(
							math.clamp((input.Position.X - SliderValueFrame.AbsolutePosition.X) / SliderValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0.5,
							0
						)
					local pos1 =
						UDim2.new(
							math.clamp((input.Position.X - SliderValueFrame.AbsolutePosition.X) / SliderValueFrame.AbsoluteSize.X, 0, 1),
							0,
							0,
							5
						)

					SliderValueFrame_2:TweenSize(pos1, "Out", "Sine", 0.2, true)
					SliderValueFrame_3:TweenPosition(pos, "Out", "Sine", 0.2, true)
					if visualDec == true then
						local value = string.format("%.1f",((pos.X.Scale * visualMax) / visualMax) * (visualMax - visualMin) + visualMin)
						TextBox.Text = tostring(value)
						SliderTitle.Text = visualTitle .. " : ".. value
						visualcallback(value)
					else
						local value = math.floor(((pos.X.Scale * visualMax) / visualMax) * (visualMax - visualMin) + visualMin)
						TextBox.Text = tostring(value)
						SliderTitle.Text = visualTitle .. " : ".. value
						visualcallback(value)
					end
				end

				local dragging = false

				SliderFrame.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true

						end
					end
				)
				SliderFrame.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false

						end
					end
				)


				SliderValueFrame.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true

						end
					end
				)
				SliderValueFrame.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false

						end
					end
				)
				game:GetService("UserInputService").InputChanged:Connect(function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						move(input)
					end
				end)

				TextBox.FocusLost:Connect(function()
					if TextBox.Text == "" then
						TextBox.Text  = visualDefault
					end
					if  tonumber(TextBox.Text) > visualMax then
						TextBox.Text  = visualMax
					end
					SliderValueFrame_2:TweenSize(UDim2.new((TextBox.Text or 0) / visualMax, 0, 0, 5), "Out", "Sine", 0.2, true)
					SliderValueFrame_3:TweenPosition(UDim2.new((TextBox.Text or 0)/visualMax, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / visualMax) * (visualMax - visualMin) + visualMin) )
					pcall(options.callback, TextBox.Text)
				end)

				function sliderfunc.Update(value)
					SliderValueFrame_2:TweenSize(UDim2.new((value or 0) / visualMax, 0, 0, 5), "Out", "Sine", 0.2, true)
					SliderValueFrame_3:TweenPosition(UDim2.new((value or 0)/visualMax, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					SliderTitle.Text = visualTitle .. " : ".. value
					pcall(function()
						pcall(options.callback, TextBox.Text)
					end)
				end
				return sliderfunc
			end

			function LibraryFunction.Label(options)

				local Label = options.Title or "Label"
				local LabelFunctions = {}

				local LabelFrame = Instance.new("Frame")
				local Title = Instance.new("TextLabel")

				LabelFrame.Name = "LabelFrame"
				LabelFrame.Parent = ScrollingPageFrame
				LabelFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				LabelFrame.BackgroundTransparency = 1.000
				LabelFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				LabelFrame.Size = UDim2.new(0, 475, 0, 35)

				Title.Name = "Title"
				Title.Parent = LabelFrame
				Title.Active = true
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.020833334, 0, 0, 0)
				Title.Size = UDim2.new(0, 406, 0, 35)
				Title.Font = Enum.Font.GothamBold
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextTransparency = 0.450
				Title.TextWrapped = true
				Title.Text = Label
				Title.TextXAlignment = Enum.TextXAlignment.Left

				function LabelFunctions.Color(value)
					Title.TextColor3 = value
					Title.TextTransparency = 0
				end

				function LabelFunctions.Refresh(value)
					Title.Text = value
				end
				return LabelFunctions
			end
			return LibraryFunction
		end
		return LibraryPage
	end	
	return LibraryTab
end

-- [Create Library]

local UI = Library.new()

-- [Create Tab]

local Main = UI.tab({
	Logo = 7040391851,
	ColorUI = Color3.fromRGB(255, 255, 255)
})

local MainPage = Main.page()

-- [Main Tab]

local MainLabel =MainPage.Label({
	Title = "Main",
})
MainLabel.Color(Color3.fromRGB(255, 255, 255))

-- [Select Weapons] --

Weapons = {
	"Melee",
	"Sword",
	"Blox Fruit"
}

MainPage.Dropdown({
    Title = "Select Weapon",
    Item = Weapons,
    callback = function(Value)
        _G.SelectWeapon = Value
    end,
})

-- [Auto Farm Level] --

MainPage.Toggle({
	Title = "Auto Farm Level",
	Default = _G.AutoFarmLevel,
	callback = function(Value)
		_G.AutoFarmLevel = Value
		if Value == false then
			wait(0.3)
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
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
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                        end
                    end
                end)
            end
        end)
	end,
})
