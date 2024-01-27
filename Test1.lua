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

    elseif MyLevel == 15 or MyLevel <= 29 and not game:GetService("Workspace").Enemies:FindFirstChild("Gorilla King") then -- Gorilla [Lv. 20]
		Mon = "Gorilla"
		Quest = "JungleQuest"
		LevelQuest = 1 or LevelQuest = 2
		CFrameMon = CFrame.new(-1237, 62, -486, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		CFrameQuest = CFrame.new(-1602, 35, 154, 1, 0, 0, 0, 1, 0, 0, 0, 1)

    elseif MyLevel == 20 or MyLevel <= 29 and game:GetService("Workspace").Enemies:FindFirstChild("Gorilla King") then -- Gorilla [Lv. 20]
        Mon = "Gorilla King"
        Quest = "JungleQuest"
		LevelQuest = 3
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
			_G.AutoFarmLevel or _G.EnabledDressrosaQuest or _G.AutoFarmDevilFruitMastery or _G.AutoFarmGunMastery or _G.AutoFarmObservation or _G.AutoFarmChests or _G.MobAura or
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
			_G.AutoFarmLevel or _G.EnabledDressrosaQuest or _G.AutoFarmDevilFruitMastery or _G.AutoFarmGunMastery or _G.AutoFarmObservation or _G.AutoFarmChests or _G.MobAura or
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
		_G.AutoFarmLevel or _G.EnabledDressrosaQuest or _G.AutoFarmDevilFruitMastery or _G.AutoFarmGunMastery or _G.AutoFarmObservation or _G.AutoFarmChests or _G.MobAura or
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

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			if BringMob then
				CheckQuest()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if  _G.AutoFarmLevel and BringMob and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					elseif _G.AutoFarmLevel and BringMob and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					end
					if _G.AutoEctoplasm and StartEctoplasmMagnet then
						if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.HumanoidRootPart.CFrame = EctoplasmMon
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						end
					end
					if _G.AutoRengoku and StartRengokuMagnet then
						if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.HumanoidRootPart.CFrame = RengokuMon
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						end
					end
					if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
						if v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.HumanoidRootPart.CFrame = MusketeerHatMon
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						end
					end
					if _G.Auto_EvoRace and StartEvoMagnet then
						if v.Name == "Zombie" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.HumanoidRootPart.CFrame = PosMonEvo
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						end
					end
					if _G.AutoBartilo and AutoBartiloBring then
						if v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.HumanoidRootPart.CFrame = PosMonBarto
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						end
					end
					if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
						if v.Name == "Monkey" then
							if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMonMasteryFruit
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMonMasteryFruit
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMonMasteryFruit
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
					if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
						if v.Name == "Monkey" then
							if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMonMasteryGun
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMonMasteryGun
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMonMasteryGun
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
					if _G.AutoFarmBone and StartMagnetBoneMon then
						if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.HumanoidRootPart.CFrame = PosMonBone
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						end
					end
					if _G.AutoDoughtBoss and MagnetDought then
						if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						end
					end
					if _G.AutoCandy and StartMagnetCandy then
						if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.HumanoidRootPart.CFrame = PosMonCandy
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
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
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end

function AttackPlayers()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHitsPlayers(60)
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
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end

FastAttackType = "Fast"

coroutine.wrap(function()
	while wait() do
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			wait(.1)
			if FastAttack then
				AttackFunction()
				if FastAttackType == "Fast" then
					if tick() - cooldownfastattack > 1.5 then wait(0.3) cooldownfastattack = tick() end
				end
			elseif not FastAttack then
				if ac.hitboxMagnitude ~= 55 then
					ac.hitboxMagnitude = 55
				end
				ac:attack()
			end
		end
	end
end)()

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

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if FastAttack then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)

function GetBladeHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then 
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent 
    end
    return weapon
end

function AttackHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0.5 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 50
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end

spawn(function()
    while wait(.1) do
        if FastAttack then
            pcall(function()
                repeat wait(0.175)
                    AttackHit()
                until not FastAttack
            end)
        end
    end
end)

local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService('VirtualUser')
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)

function SeraphFuckWeapon() 
    local p13 = SeraphFrame.activeController
    local wea = p13.blades[1]
    if not wea then return end
    while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
    return wea
end

function getHits(Size)
    local Hits = {}
    local Enemies = workspace.Enemies:GetChildren()
    local Characters = workspace.Characters:GetChildren()
    for i=1,#Enemies do local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
            table.insert(Hits,Human.RootPart)
        end
    end
    for i=1,#Characters do local v = Characters[i]
        if v ~= game.Players.LocalPlayer.Character then
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                table.insert(Hits,Human.RootPart)
            end
        end
    end
    return Hits
end

spawn(function()
    while wait(0.059) do
        if FastAttack then
            if SeraphFrame.activeController then
                SeraphFrame.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                SeraphFrame.activeController.focusStart = 0
                SeraphFrame.activeController.hitboxMagnitude = 40
                SeraphFrame.activeController.humanoid.AutoRotate = true
                SeraphFrame.activeController.increment = 1 + 1 / 1
            end
        end
    end
end)

function Boost()
    spawn(function()
    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(SeraphFuckWeapon()))
    end)
end

function Unboost()
    spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(SeraphFuckWeapon()))
    end)
end

local cdnormal = 0.175
local Animation = Instance.new("Animation")
local CooldownFastAttack = 0.181
Attack = function()
    local ac = SeraphFrame.activeController
    if ac and ac.equipped then
        spawn(function()
            if tick() - cdnormal > 0.5 then
                ac:attack()
                cdnormal = tick()
            else
                Animation.AnimationId = ac.anims.basic[1]
                ac.humanoid:LoadAnimation(Animation):Play(1, 1)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
            end
        end)
    end
end

b = tick()
spawn(function()
    while wait(0.059) do
        if FastAttack then
            if b - tick() > 0.75 then
                wait(0.059)
                b = tick()
            end
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                            Attack()
                            wait(0.059)
                            Boost()
                        end
                    end
                end
            end)
        end
    end
end)

k = tick()
spawn(function()
    while wait(0.059) do
        if FastAttack then
            if k - tick() > 0.75 then
                wait(0.059)
                k = tick()
            end
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                        wait(0.059)
                        Unboost()
                        end
                    end
                end
            end)
        end
    end
end)

tjw1 = true
spawn(function()
    local a = game.Players.LocalPlayer
    local b = require(a.PlayerScripts.CombatFramework.Particle)
    local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    if not shared.orl then
        shared.orl = c.wrapAttackAnimationAsync
    end
    if not shared.cpc then
        shared.cpc = b.play
    end
    if tjw1 then
        pcall(function()
            c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                local i = c.getBladeHits(e, f, g)
                if i then
                    b.play = function()
                    end
                    d:Play(0.25, 0.25, 0.25)
                    h(i)
                    b.play = shared.cpc
                    wait(.5)
                    d:Stop()
                end
            end
        end)
    end
end)

local CameRA = require(game:GetService("ReplicatedStorage").Util.CameraShaker)CameRA:Stop()
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    pcall(function()
        if not shared.orl then
            shared.orl = STOPRL.wrapAttackAnimationAsync
        end
        if not shared.cpc then
            shared.cpc = STOP.play 
        end
        spawn(function()
            game:GetService("RunService").Stepped:Connect(function()
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                    local Hits = STOPRL.getBladeHits(b,c,d)
                    if Hits then
                        if FastAttack then
                            STOP.play = function() end
                            a:Play(0.1,0.1,0.1)
                            func(Hits)
                            STOP.play = shared.cpc
                            wait(a.length * 0.5)
                            a:Stop()
                        else
                            func(Hits)
                            STOP.play = shared.cpc
                            wait(a.length * 0.5)
                            a:Stop()
                        end
                    end
                end
            end)
        end)
    end)
end)


coroutine.wrap(function()
    local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
    for v,v in pairs(getreg()) do
        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
            for v,v in pairs(debug.getupvalues(v)) do
                if typeof(v) == "table" then
                    spawn(function()
                        game:GetService("RunService").RenderStepped:Connect(function()
                            if FastAttack then
                                pcall(function()
                                    v.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                    v.activeController.attacking = false
                                    v.activeController.increment = 1
                                    v.activeController.blocking = false   
                                    v.activeController.hitboxMagnitude = 150
                                    v.activeController.currentAttackTrack = 0
                                    v.activeController.focusStart = 0
                                    v.activeController.blocking = false
                                    v.activeController.attacking = false
                                    v.activeController.hitboxMagnitude = 40
                                    v.activeController.humanoid.AutoRotate = true
                                    v.activeController.increment = 1
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
                                end)
                            end
                        end)
                    end)
                end
            end
        end
    end
end)();

	
spawn(function()
    while wait() do
        pcall(function()
            if FastAttack then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
			end
        end)
    end
end) 
		
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
local CombatFrameworkR = getupvalues(CombatFramework)[2];
local RigController = require(game:GetService("Players")['LocalPlayer'].PlayerScripts.CombatFramework.RigController);
local RigControllerR = getupvalues(RigController)[2];
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib);
local cooldownfastattack = tick();

function DisabledDamage()
    spawn(function()
        while wait() do
            pcall(function()
                if FastAttack then
                    game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false;
                else
                    game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true;
                end
            end);
        end
    end);
end

function CurrentWeapon()
    local ac = CombatFrameworkR.activeController;
    local ret = ac.blades[1];
    if not ret then
        return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
    end
    pcall(function()
        while ret.Parent ~= game.Players.LocalPlayer.Character do
            ret = ret.Parent;
        end
    end);
    if not ret then
        return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
    end	
    return ret;
end

function getAllBladeHitsPlayers(Sizes)
    local Hits = {};
    local Client = game.Players.LocalPlayer;
    local Characters = game:GetService("Workspace").Characters:GetChildren();
    for i = 1, #Characters do
        local v = Characters[i];
        local Human = v:FindFirstChildOfClass("Humanoid");
        if ((v.Name ~= game.Players.LocalPlayer.Name) and Human and Human.RootPart and (Human.Health > 0) and (Client:DistanceFromCharacter(Human.RootPart.Position) < (Sizes + 5))) then
            table.insert(Hits, Human.RootPart);
        end
    end
    return Hits;
end

function getAllBladeHits(Sizes)
    local Hits = {};
    local Client = game.Players.LocalPlayer;
    local Enemies = game:GetService("Workspace").Enemies:GetChildren();
    for i = 1, #Enemies do
        local v = Enemies[i];
        local Human = v:FindFirstChildOfClass("Humanoid");
        if (Human and Human.RootPart and (Human.Health > 0) and (Client:DistanceFromCharacter(Human.RootPart.Position) < (Sizes + 5))) then
            table.insert(Hits, Human.RootPart);
        end
    end
    return Hits;
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
                    v:Play()
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
    while wait(0.09) do
        if FastAttack then
            AttackFunction();
            DisabledDamage();
        end
    end
end);

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

-- [Ui Start] --

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=16014590522"
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = ImageButton

do
	local ui = game.CoreGui:FindFirstChild("SimpleUI")
	if ui then
		ui:Destroy()
	end
end
local logo = getgenv().Logo 
if logo == nil then logo = 12194477043 end
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

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

local library = {}

function library:AddWindow(text,keybind)
    local currenttab = ""
    local uihide = false
    local abc = false
    keybind = keybind or Enum.KeyCode.RightControl
    yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")

    local Kub = Instance.new("ScreenGui")
    Kub.Name = "SimpleUI"
    Kub.Parent = game.CoreGui
    Kub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = Kub
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.ClipsDescendants = true
    Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Main.Position = UDim2.new(0.5, 0, 0.499, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)

    local MainCorner = Instance.new("UICorner")
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = Main

    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Top.Size = UDim2.new(0, 656, 0, 27)

    local TopCorner = Instance.new("UICorner")
    TopCorner.Name = "TopCorner"
    TopCorner.Parent = Top

    local NameHub = Instance.new("TextLabel")
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.Position = UDim2.new(0, 15, 0, 0)
    NameHub.Size = UDim2.new(0, 61, 0, 27)
    NameHub.Font = Enum.Font.GothamSemibold
    NameHub.Text = "Serity  Hub"
    NameHub.TextColor3 = Color3.fromRGB(255,255,255)
    NameHub.TextSize = 17.000
    NameHub.TextXAlignment = Enum.TextXAlignment.Left
    
    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Top.Size = UDim2.new(0, 656, 0, 27)

    local TopCorner = Instance.new("UICorner")
    TopCorner.Name = "TopCorner"
    TopCorner.Parent = Top

    local NameHub = Instance.new("TextLabel")
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.Position = UDim2.new(0, 15, 0, 0)
    NameHub.Size = UDim2.new(0, 61, 0, 27)
    NameHub.Font = Enum.Font.GothamSemibold
    NameHub.Text = "Serity  Hub"
    NameHub.TextColor3 = Color3.fromRGB(255,255,255)
    NameHub.TextSize = 17.000
    NameHub.TextXAlignment = Enum.TextXAlignment.Left

    local BindButton = Instance.new("TextButton")
    BindButton.Name = "BindButton"
    BindButton.Parent = Top
    BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BindButton.BackgroundTransparency = 1.000
    BindButton.Position = UDim2.new(0, 550, 0, 0)
    BindButton.Size = UDim2.new(0, 100, 0, 27)
    BindButton.Font = Enum.Font.GothamSemibold
    BindButton.Text = "[ "..string.gsub(tostring(keybind),"Enum.KeyCode.","").." ]"
    BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    BindButton.TextSize = 11.000

    BindButton.MouseButton1Click:Connect(function ()
        BindButton.Text = "[ ... ]"
        local inputwait = game:GetService("UserInputService").InputBegan:wait()
        local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

        if
        shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" and shiba.Name ~= "Focus"
        then
            BindButton.Text = "[ "..shiba.Name.." ]"
            yoo = shiba.Name
        end
    end)

    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Tab.Position = UDim2.new(0, 12, 0, 40)
    Tab.Size = UDim2.new(0, 633, 0, 29)

    local TabCorner = Instance.new("UICorner")
    TabCorner.Name = "TabCorner"
    TabCorner.Parent = Tab
    
    local ScrollTab = Instance.new("ScrollingFrame")
    ScrollTab.Name = "ScrollTab"
    ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.BorderSizePixel = 0
    ScrollTab.Size = UDim2.new(0, 633, 0, 29)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0
    
    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = ScrollTab
    UIPadding.PaddingLeft = UDim.new(0, 10)

    local TabList = Instance.new("UIListLayout")
    TabList.Name = "TabList"
    TabList.Parent = ScrollTab
    TabList.FillDirection = Enum.FillDirection.Horizontal
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 5)

    MakeDraggable(Top,Main)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
			end
		end
	end)

    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Page.Position = UDim2.new(0, 11, 0, 80)
    Page.Size = UDim2.new(0, 633, 0, 305)

    local PageCorner = Instance.new("UICorner")
    PageCorner.Name = "PageCorner"
    PageCorner.Parent = Page

    local PageFolder = Instance.new("Folder")
    PageFolder.Name = "PageFolder"
    PageFolder.Parent = Page

    local UIPageLayout = Instance.new("UIPageLayout")

    UIPageLayout.Parent = PageFolder
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.Padding = UDim.new(0, 10)
    UIPageLayout.TweenTime = 0.400
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false


    local Ui = {}
    function Ui:AddTab(text)
        local TabButton = Instance.new("TextButton")
        TabButton.Name = "TabButton"
        TabButton.Parent = ScrollTab
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Size = UDim2.new(0, 100, 0, 29)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
        TabButton.TextSize = 15.000
        TabButton.Text = text
        TabButton.TextTransparency = 0.500
        
        local MainPage = Instance.new("Frame")

        MainPage.Name = "MainPage"
        MainPage.Parent = PageFolder
        MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainPage.BackgroundTransparency = 1.000
        MainPage.Position = UDim2.new(0.00357977885, 0, 0, 0)
        MainPage.Size = UDim2.new(0, 632, 0, 305)

        TabButton.MouseButton1Click:Connect(function()
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            for i,v in next, PageFolder:GetChildren() do 
                if v.Name == "MainPage" then
                    currenttab = v.Name
                end
                UIPageLayout:JumpTo(MainPage)
            end
		end)

		if abc == false then
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            UIPageLayout:JumpToIndex(1)
			abc = true
		end

        local uitab = {}
        function uitab:AddPage()
            local MainFramePage = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local ScrollPage = Instance.new("ScrollingFrame")
            local PageList = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
            local UIPadding_2 = Instance.new("UIPadding")
            local UIListLayout_2 = Instance.new("UIListLayout")
        
            MainFramePage.Name = "MainFramePage"
            MainFramePage.Parent = MainPage
            MainFramePage.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            MainFramePage.Size = UDim2.new(0, 300, 0, 285)
        
            UICorner.Parent = MainFramePage
        
            ScrollPage.Name = "ScrollPage"
            ScrollPage.Parent = MainFramePage
            ScrollPage.Active = true
            ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollPage.BackgroundTransparency = 1.000
            ScrollPage.BorderSizePixel = 0
            ScrollPage.Size = UDim2.new(0, 300, 0, 285)
            ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollPage.ScrollBarThickness = 0
        
            PageList.Name = "PageList"
            PageList.Parent = ScrollPage
            PageList.SortOrder = Enum.SortOrder.LayoutOrder
            PageList.Padding = UDim.new(0, 13)
        
            UIPadding.Parent = ScrollPage
            UIPadding.PaddingLeft = UDim.new(0, 20)
            UIPadding.PaddingTop = UDim.new(0, 10)
        
            UIPadding_2.Parent = MainPage
            UIPadding_2.PaddingLeft = UDim.new(0, 10)
            UIPadding_2.PaddingTop = UDim.new(0, 10)
        
            UIListLayout_2.Parent = MainPage
            UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 13)

            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 26)
                    ScrollTab.CanvasSize = UDim2.new(0,TabList.AbsoluteContentSize.X + 10,0,0)
                end)
            end)

            local main = {}
            function main:AddSeperator(text)
                local SepText = {}
                local Seperator = Instance.new("Frame")
                local Sep1 = Instance.new("Frame")
                local Sep2 = Instance.new("TextLabel")
                local Sep3 = Instance.new("Frame")
                
                Seperator.Name = "Seperator"
                Seperator.Parent = ScrollPage
                Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Seperator.BackgroundTransparency = 1.000
                Seperator.Size = UDim2.new(0, 260, 0, 20)
                
                Sep1.Name = "Sep1"
                Sep1.Parent = Seperator
                Sep1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Sep1.BorderSizePixel = 0
                Sep1.Position = UDim2.new(0, 0, 0, 10)
                Sep1.Size = UDim2.new(0, 40, 0, 1)
                
                Sep2.Name = "Sep2"
                Sep2.Parent = Seperator
                Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.BackgroundTransparency = 1.000
                Sep2.Position = UDim2.new(0, 80, 0, 0)
                Sep2.Size = UDim2.new(0, 100, 0, 20)
                Sep2.Font = Enum.Font.GothamSemibold
                Sep2.Text = text
                Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.TextSize = 14.000
                
                Sep3.Name = "Sep3"
                Sep3.Parent = Seperator
                Sep3.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Sep3.BorderSizePixel = 0
                Sep3.Position = UDim2.new(0, 220, 0, 10)
                Sep3.Size = UDim2.new(0, 40, 0, 1)

                function SepText:RefreshSeperator(l)
                    Sep2.Text = l
                end
                return SepText
            end

            function main:AddLine()
                local Linee = Instance.new("Frame")
                local Line = Instance.new("Frame")
                
                Linee.Name = "Linee"
                Linee.Parent = ScrollPage
                Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Linee.BackgroundTransparency = 1.000
                Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
                Linee.Size = UDim2.new(0, 260, 0, 20)
                
                Line.Name = "Line"
                Line.Parent = Linee
                Line.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Line.BorderSizePixel = 0
                Line.Position = UDim2.new(0, 0, 0, 10)
                Line.Size = UDim2.new(0, 260, 0, 1)
            end

            function main:AddButton(text,callback)
                local Button = Instance.new("Frame")
                local ButtonCorner = Instance.new("UICorner")
                local Btn = Instance.new("TextButton")
                local BtnCorner = Instance.new("UICorner")
                local btim = Instance.new('ImageLabel')
                
                Button.Name = "Button"
                Button.Parent = ScrollPage
                Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Button.Size = UDim2.new(0, 260, 0, 38)
                Button.BackgroundTransparency = 0.5
                
                ButtonCorner.CornerRadius = UDim.new(0, 5)
                ButtonCorner.Name = "ButtonCorner"
                ButtonCorner.Parent = Button
                
                Btn.Name = "Btn"
                Btn.Parent = Button
                Btn.AutoButtonColor = false
                Btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Btn.Position = UDim2.new(0, 1, 0, 1)
                Btn.Size = UDim2.new(0, 258, 0, 36)
                Btn.Font = Enum.Font.GothamSemibold
                Btn.TextColor3 = Color3.fromRGB(225, 225, 225)
                Btn.TextSize = 16.000
                Btn.Text = text
                Btn.TextTransparency = 0.500
                Btn.TextXAlignment = Enum.TextXAlignment.Center
                
                BtnCorner.CornerRadius = UDim.new(0, 5)
                BtnCorner.Name = "BtnCorner"
                BtnCorner.Parent = Btn

                btim.Name = "ButtonLogo"
                btim.Parent = Btn
                btim.BackgroundTransparency = 1.000
                btim.Position = UDim2.new(0, 5, 0, 3)
                btim.Rotation = 0
                btim.Size = UDim2.new(0, 30, 0, 30)
                btim.Image = 'http://www.roblox.com/asset/?id=16014590522'
                btim.ImageTransparency = 0

                Btn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                Btn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)

                Btn.MouseButton1Click:Connect(function()
                    callback()
                    Btn.TextSize = 9
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextSize = 16}
                    ):Play()
                end)
            end 

            function main:AddDropdown(text,option,callback)
                local Dropdown = Instance.new("Frame")
                local dropcorner = Instance.new("UICorner")
                local Dropdownn = Instance.new("Frame")
                local droppcorner = Instance.new("UICorner")
                local DropBtn = Instance.new("TextButton")
                local DropLabel = Instance.new("TextLabel")
                local DropScroll = Instance.new("ScrollingFrame")
                local dpd = Instance.new("UIPadding")
                local dll = Instance.new("UIListLayout")
                local DropImage = Instance.new("ImageLabel")
                local isdropping = false

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = ScrollPage
                Dropdown.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Dropdown.BackgroundTransparency = 0.500
                Dropdown.Size = UDim2.new(0, 260, 0, 38) -- 114
                
                dropcorner.CornerRadius = UDim.new(0, 5)
                dropcorner.Name = "dropcorner"
                dropcorner.Parent = Dropdown
                
                Dropdownn.Name = "Dropdownn"
                Dropdownn.Parent = Dropdown
                Dropdownn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Dropdownn.ClipsDescendants = true
                Dropdownn.Position = UDim2.new(0, 1, 0, 1)
                Dropdownn.Size = UDim2.new(0, 258, 0, 36) -- 112
                
                droppcorner.CornerRadius = UDim.new(0, 5)
                droppcorner.Name = "droppcorner"
                droppcorner.Parent = Dropdownn
                
                DropBtn.Name = "DropBtn"
                DropBtn.Parent = Dropdownn
                DropBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                DropBtn.BackgroundTransparency = 1.000255
                DropBtn.Size = UDim2.new(0, 258, 0, 36)
                DropBtn.Font = Enum.Font.SourceSans
                DropBtn.Text = ""
                DropBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                DropBtn.TextSize = 14.000
                
                DropLabel.Name = "DropLabel"
                DropLabel.Parent = Dropdownn
                DropLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropLabel.BackgroundTransparency = 1.000
                DropLabel.Position = UDim2.new(0, 15, 0, 0)
                DropLabel.Size = UDim2.new(0, 180, 0, 36)
                DropLabel.Font = Enum.Font.GothamSemibold
                DropLabel.Text = text
                DropLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                DropLabel.TextSize = 16.000
                DropLabel.TextTransparency = 0.500
                DropLabel.TextXAlignment = Enum.TextXAlignment.Left

                local UICorner = Instance.new("UICorner")
                DropImage.Name = "DropImage"
                DropImage.Parent = Dropdownn
                DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropImage.BackgroundTransparency = 1.000
                DropImage.Position = UDim2.new(0, 230, 0, 9)
                DropImage.Rotation = 180.000
                DropImage.Size = UDim2.new(0, 20, 0, 20)
                DropImage.Image = "rbxassetid://16014590522"
                DropImage.ImageTransparency = 0.500
                UICorner.CornerRadius = UDim.new(0, 20)
                UICorner.Parent = ImageButton
                
                DropScroll.Name = "DropScroll"
                DropScroll.Parent = DropLabel
                DropScroll.Active = true
                DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropScroll.BackgroundTransparency = 1.000
                DropScroll.BorderSizePixel = 0
                DropScroll.Position = UDim2.new(-0.105555557, 0, 1.11111116, 0)
                DropScroll.Size = UDim2.new(0, 258, 0, 128) -- 70
                DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
                DropScroll.ScrollBarThickness = 3
                
                dpd.Name = "dpd"
                dpd.Parent = DropScroll
                dpd.PaddingLeft = UDim.new(0, 5)
                dpd.PaddingTop = UDim.new(0, 5)
                
                dll.Name = "dll"
                dll.Parent = DropScroll
                dll.SortOrder = Enum.SortOrder.LayoutOrder
                dll.Padding = UDim.new(0, 5)

                for i,v in next, option do
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                    Item.TextSize = 16.000
                    Item.Text = tostring(v)
                    Item.TextTransparency = 0.5

                    Item.MouseEnter:Connect(function()
                        TweenService:Create(
                        Item,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end)
                    Item.MouseLeave:Connect(function()
                        TweenService:Create(
                        Item,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        callback(Item.Text)
                        DropLabel.Text = text.." : "..Item.Text
                        callback(v)
                    end)
                end 

                DropScroll.CanvasSize = UDim2.new(0,0,0,dll.AbsoluteContentSize.Y + 10)

                DropBtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0}
                    ):Play()
                end)

                DropBtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0.5}
                    ):Play()
                end)

                DropBtn.MouseButton1Click:Connect(function()
                    if isdropping == false then
                        isdropping = true
                        Dropdown:TweenSize(UDim2.new(0,260,0,145),"Out","Quad",0.3,true) --114
                        Dropdownn:TweenSize(UDim2.new(0,258,0,143),"Out","Quad",0.3,true)
                        DropBtn:TweenSize(UDim2.new(0,258,0,143),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                    else
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        DropBtn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                    end
                end)

                local drop = {}

                function drop:Clear()
                    DropLabel.Text = tostring(text).." : "
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                    Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = 180}
                    ):Play()
                    for i, v in next, DropScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                end
                function drop:Add(t)
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Item.TextSize = 16.000
                    Item.TextTransparency = 0.5
                    Item.Text = tostring(t)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,36),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,34),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        callback(Item.Text)
                        DropLabel.Text = text.." : "..Item.Text
                        callback(t)
                    end)
                end
                return drop
            end

            function main:AddSlider(text,min,max,set,callback)
                local Slider = Instance.new("Frame")
                local slidercorner = Instance.new("UICorner")
                local sliderr = Instance.new("Frame")
                local sliderrcorner = Instance.new("UICorner")
                local SliderLabel = Instance.new("TextLabel")
                local HAHA = Instance.new("Frame")
                local AHEHE = Instance.new("TextButton")
                local bar = Instance.new("Frame")
                local bar1 = Instance.new("Frame")
                local bar1corner = Instance.new("UICorner")
                local barcorner = Instance.new("UICorner")
                local circlebar = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local slidervalue = Instance.new("Frame")
                local valuecorner = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")

                Slider.Name = "Slider"
                Slider.Parent = ScrollPage
                Slider.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Slider.BackgroundTransparency = 0.500
                Slider.Size = UDim2.new(0, 260, 0, 48)

                slidercorner.CornerRadius = UDim.new(0, 5)
                slidercorner.Name = "slidercorner"
                slidercorner.Parent = Slider

                sliderr.Name = "sliderr"
                sliderr.Parent = Slider
                sliderr.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                sliderr.Position = UDim2.new(0, 1, 0, 1)
                sliderr.Size = UDim2.new(0, 258, 0, 46)

                sliderrcorner.CornerRadius = UDim.new(0, 5)
                sliderrcorner.Name = "sliderrcorner"
                sliderrcorner.Parent = sliderr

                SliderLabel.Name = "SliderLabel"
                SliderLabel.Parent = sliderr
                SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderLabel.BackgroundTransparency = 1.000
                SliderLabel.Position = UDim2.new(0.0581395365, 0, 0, 0)
                SliderLabel.Size = UDim2.new(0, 180, 0, 26)
                SliderLabel.Font = Enum.Font.GothamSemibold
                SliderLabel.Text = text
                SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderLabel.TextSize = 16.000
                SliderLabel.TextTransparency = 0.500
                SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

                HAHA.Name = "HAHA"
                HAHA.Parent = sliderr
                HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                HAHA.BackgroundTransparency = 1.000
                HAHA.Size = UDim2.new(0, 258, 0, 46)

                AHEHE.Name = "AHEHE"
                AHEHE.Parent = sliderr
                AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                AHEHE.BackgroundTransparency = 1.000
                AHEHE.Position = UDim2.new(0, 10, 0, 35)
                AHEHE.Size = UDim2.new(0, 238, 0, 5)
                AHEHE.Font = Enum.Font.SourceSans
                AHEHE.Text = ""
                AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
                AHEHE.TextSize = 14.000

                bar.Name = "bar"
                bar.Parent = AHEHE
                bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                bar.Size = UDim2.new(0, 238, 0, 5)

                bar1.Name = "bar1"
                bar1.Parent = bar
                bar1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                bar1.BackgroundTransparency = 0.500
                bar1.Size = UDim2.new(set/max, 0, 0, 5)

                bar1corner.CornerRadius = UDim.new(0, 5)
                bar1corner.Name = "bar1corner"
                bar1corner.Parent = bar1

                barcorner.CornerRadius = UDim.new(0, 5)
                barcorner.Name = "barcorner"
                barcorner.Parent = bar

                circlebar.Name = "circlebar"
                circlebar.Parent = bar1
                circlebar.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
                circlebar.Position = UDim2.new(1, -2, 0, -3)
                circlebar.Size = UDim2.new(0, 10, 0, 10)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = circlebar

                slidervalue.Name = "slidervalue"
                slidervalue.Parent = sliderr
                slidervalue.BackgroundColor3 = Color3.fromRGB(255,255,255)
                slidervalue.BackgroundTransparency = 0.500
                slidervalue.Position = UDim2.new(0, 185, 0, 5)
                slidervalue.Size = UDim2.new(0, 65, 0, 18)

                valuecorner.CornerRadius = UDim.new(0, 5)
                valuecorner.Name = "valuecorner"
                valuecorner.Parent = slidervalue

                TextBox.Parent = slidervalue
                TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.Position = UDim2.new(0, 1, 0, 1)
                TextBox.Size = UDim2.new(0, 63, 0, 16)
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextBox.TextSize = 9.000
                TextBox.Text = set
                TextBox.TextTransparency = 0.500

                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBox

                HAHA.MouseEnter:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(225,225,225)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end)

                HAHA.MouseLeave:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(180,180,180)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end)

                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")

                if Value == nil then
                    Value = set
                    pcall(function()
                        callback(Value)
                    end)
                end
                
                AHEHE.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                    circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    moveconnection = mouse.Move:Connect(function()
                        TextBox.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                        circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                            circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                        TextBox.Text = Value
                    end
                end)

                TextBox.FocusLost:Connect(function()
                    if tonumber(TextBox.Text) > max then
                        TextBox.Text  = max
                    end
                    bar1.Size = UDim2.new((tonumber(TextBox.Text) or 0) / max, 0, 0, 5)
                    circlebar.Position = UDim2.new(1, -2, 0, -3)
                    TextBox.Text = tostring(tonumber(TextBox.Text) and math.floor( (tonumber(TextBox.Text) / max) * (max - min) + min) )
                    pcall(callback, TextBox.Text)
                end)
            end

            function main:AddTextbox(text,disappear,callback)
                local Textbox = Instance.new("Frame")
                local TextboxCorner = Instance.new("UICorner")
                local Textboxx = Instance.new("Frame")
                local TextboxxCorner = Instance.new("UICorner")
                local TextboxLabel = Instance.new("TextLabel")
                local txtbtn = Instance.new("TextButton")
                local RealTextbox = Instance.new("TextBox")
                local UICorner = Instance.new("UICorner")

                Textbox.Name = "Textbox"
                Textbox.Parent = ScrollPage
                Textbox.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Textbox.BackgroundTransparency = 0.500
                Textbox.Size = UDim2.new(0, 260, 0, 38)

                TextboxCorner.CornerRadius = UDim.new(0, 5)
                TextboxCorner.Name = "TextboxCorner"
                TextboxCorner.Parent = Textbox

                Textboxx.Name = "Textboxx"
                Textboxx.Parent = Textbox
                Textboxx.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Textboxx.Position = UDim2.new(0, 1, 0, 1)
                Textboxx.Size = UDim2.new(0, 258, 0, 36)

                TextboxxCorner.CornerRadius = UDim.new(0, 5)
                TextboxxCorner.Name = "TextboxxCorner"
                TextboxxCorner.Parent = Textboxx

                TextboxLabel.Name = "TextboxLabel"
                TextboxLabel.Parent = Textbox
                TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxLabel.BackgroundTransparency = 1.000
                TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
                TextboxLabel.Text = text
                TextboxLabel.Size = UDim2.new(0, 145, 0, 38)
                TextboxLabel.Font = Enum.Font.GothamSemibold
                TextboxLabel.TextColor3 = Color3.fromRGB(255,255,255)
                TextboxLabel.TextSize = 16.000
                TextboxLabel.TextTransparency = 0.500
                TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

                txtbtn.Name = "txtbtn"
                txtbtn.Parent = Textbox
                txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                txtbtn.BackgroundTransparency = 1.000
                txtbtn.Position = UDim2.new(0, 1, 0, 1)
                txtbtn.Size = UDim2.new(0, 258, 0, 36)
                txtbtn.Font = Enum.Font.SourceSans
                txtbtn.Text = ""
                txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                txtbtn.TextSize = 14.000

                RealTextbox.Name = "RealTextbox"
                RealTextbox.Parent = Textbox
                RealTextbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                RealTextbox.BackgroundTransparency = 0.500
                RealTextbox.Position = UDim2.new(0, 150, 0, 7)
                RealTextbox.Size = UDim2.new(0, 100, 0, 22)
                RealTextbox.Font = Enum.Font.GothamSemibold
                RealTextbox.Text = ""
                RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                RealTextbox.TextSize = 11.000
                RealTextbox.TextTransparency = 0.500

                txtbtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                txtbtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)

                RealTextbox.FocusLost:Connect(function()
                    callback(RealTextbox.Text)
                    if disappear then
                        RealTextbox.Text = ""
                    end
                end)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = RealTextbox
            end

            function main:AddToggle(text,config,callback)
                local tglb = {}
                local Toggle = Instance.new("Frame")
                local ToggleCorner = Instance.new("UICorner")
                local Tgle = Instance.new("Frame")
                local TgleCorner = Instance.new("UICorner")
                local tglebtn = Instance.new("TextButton")
                local ToggleLabel = Instance.new("TextLabel")
                local ToggleImage = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local Circle = Instance.new("Frame")
                local UICorner_4 = Instance.new("UICorner")
                local Tgim = Instance.new('ImageLabel')

                Toggle.Name = "Toggle"
                Toggle.Parent = ScrollPage
                Toggle.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Toggle.BackgroundTransparency = 0
                Toggle.Size = UDim2.new(0, 260, 0, 38)

                ToggleCorner.CornerRadius = UDim.new(0, 5)
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.Parent = Toggle

                Tgle.Name = "Tgle"
                Tgle.Parent = Toggle
                Tgle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Tgle.Position = UDim2.new(0, 1, 0, 1)
                Tgle.Size = UDim2.new(0, 258, 0, 36)

                TgleCorner.CornerRadius = UDim.new(0, 5)
                TgleCorner.Name = "TgleCorner"
                TgleCorner.Parent = Tgle

                tglebtn.Name = "tglebtn"
                tglebtn.Parent = Tgle
                tglebtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                tglebtn.BackgroundTransparency = 1.000
                tglebtn.Size = UDim2.new(0, 258, 0, 36)
                tglebtn.Font = Enum.Font.SourceSans
                tglebtn.Text = ""
                tglebtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                tglebtn.TextSize = 14.000

                ToggleLabel.Name = "ToggleLabel"
                ToggleLabel.Parent = Tgle
                ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleLabel.BackgroundTransparency = 1.000
                ToggleLabel.Position = UDim2.new(0, 0, 0, 0)
                ToggleLabel.Size = UDim2.new(0, 258, 0, 36)
                ToggleLabel.Font = Enum.Font.GothamSemibold
                ToggleLabel.Text = text
                ToggleLabel.TextColor3 = Color3.fromRGB(255,255,255)
                ToggleLabel.TextSize = 16.000
                ToggleLabel.TextTransparency = 0.500
                ToggleLabel.TextXAlignment = Enum.TextXAlignment.Center

                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Toggle
                ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
                ToggleImage.Position = UDim2.new(0, 205, 0, 9)
                ToggleImage.Size = UDim2.new(0, 45, 0, 20)
    
                UICorner_3.CornerRadius = UDim.new(0, 20)
                UICorner_3.Parent = ToggleImage
    
                Circle.Name = "Circle"
                Circle.Parent = ToggleImage
                Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Circle.Position = UDim2.new(0, 2, 0, 2)
                Circle.Size = UDim2.new(0, 16, 0, 16)
    
                UICorner_4.CornerRadius = UDim.new(0, 10)
                UICorner_4.Parent = Circle

                Tgim.Name = "ToggleLogo"
                Tgim.Parent = Tgle
                Tgim.BackgroundTransparency = 1.000
                Tgim.Position = UDim2.new(0, 5, 0, 3)
                Tgim.Rotation = 0
                Tgim.Size = UDim2.new(0, 30, 0, 30)
                Tgim.Image = 'http://www.roblox.com/asset/?id=16014590522'
                Tgim.ImageTransparency = 0

                tglebtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                end)
                tglebtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                end)
                if config == true then
                    istoggled = true
                    pcall(callback,istoggled)
                    Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(255,255,255)}
				    ):Play()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(255,255,255)}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                end

                local istoggled = config or false
                tglebtn.MouseButton1Click:Connect(function()
                    if istoggled == false then
                        istoggled = true
                        Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                        TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(255,255,255)}
				    ):Play()
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(255,255,255)}
				        ):Play()
                        TweenService:Create(
                            ToggleLabel,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255,255,255)}
                        ):Play()
                    else
                        istoggled = false
                        TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(255,255,255)}
				    ):Play()
                        TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(255,255,255)}
				    ):Play()
                        Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(255,255,255)}
				        ):Play()
                        TweenService:Create(
                            ToggleLabel,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255,255,255)}
                        ):Play()
                    end
                    pcall(callback,istoggled)
                end)
                    function tglb:RefeshToggle(e)
                        ToggleLabel.Text = e
                    end
                return tglb
            end

            function main:AddLabel(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = ScrollPage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 260, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 16.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
    
                PaddingLabel.PaddingLeft = UDim.new(0,15)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end
    
                return labell
            end

            return main
        end
        return uitab
    end
    return Ui
end

-- [Ui End] --

local Windows = library:AddWindow("")
local MainTab = Windows:AddTab("Main")
local MainLeft = MainTab:AddPage()
local MainRight = MainTab:AddPage()

MainLeft:AddSeperator("🏡 Home Menu 🏡")
    
MainLeft:AddToggle("Auto Farm Level", _G.AutoFarmLevel, function(Value)
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
                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Mon) then
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
end)

MainLeft:AddToggle("Enabled Dressrosa Quest", _G.EnabledDressrosaQuest, function(Value)
    _G.EnabledDressrosaQuest = Value
    if Value == false then
        wait(0.3)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.EnabledDressrosaQuest then
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                        _G.AutoFarmLevel = false
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
                                            EquipWeapon()
                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            FastAttack = true
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        until not _G.EnabledDressrosaQuest or v.Humanoid.Health <= 0 or not v.Parent
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        UnEquip()
                                        FastAttack = false
                                    end
                                end
                            else
                                TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        end
                    end
                end
            end)
        end
    end) 
end)

-- [Mastery] --

MainLeft:AddSeperator("Mastery Farm")

MainLeft:AddToggle("Auto Farm Devil Fruit Mastery", _G.AutoFarmDevilFruitMastery, function(Value)
    _G.AutoFarmDevilFruitMastery = Value
	_G.SkillZ = Value
	_G.SkillX = Value
	_G.SkillC = Value
	_G.SkillV = Value
	if Value == false then
		wait(0.3)
		TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoFarmDevilFruitMastery then
					CheckQuest()
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						TP(CFrameQuest)
						if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", Quest, LevelQuest)
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						TP(CFrameMon)
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Mon) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									HealthMon = v.Humanoid.MaxHealth * _G.MobHealth/100
									repeat wait()
										if v.Humanoid.Health <= HealthMon then                                                
											Haki()
											BloxFruit()
											PosMon = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0,10,20))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											BringMob = true
											FastAttack = false
											if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mammoth-Mammoth") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex-T-Rex") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard-Leopard") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune-Kitsune") then
												game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
											else
												game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												wait(.1)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
										else
											Haki()
											EquipWeapon()
											PosMon = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false               
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											BringMob = true
											FastAttack = true
										end
									until not _G.AutoFarmDevilFruitMastery or v.Humanoid.Health <= 0 or not v.Parent
									BringMob = false
									FastAttack = false
									UseSkill = false 
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
end)

MainLeft:AddToggle("Auto Farm Gun Mastery", _G.AutoFarmGunMastery, function(Value)
    _G.AutoFarmGunMastery = Value
	if Value == false then
		wait(0.3)
		TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoFarmGunMastery then
					CheckQuest()
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						TP(CFrameQuest)
						if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", Quest, LevelQuest)
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						TP(CFrameMon)
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Mon) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									HealthMon = v.Humanoid.MaxHealth * _G.MobHealth/100
									repeat wait()
										if v.Humanoid.Health <= HealthMon then                                                
											Haki()
											Gun()
											PosMon = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(2,2,1)
											game:GetService("VirtualUser"):CaptureController()
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))                                            
											game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position,v.HumanoidRootPart)
											BringMob = true
											FastAttack = false
										else
											Haki()
											EquipWeapon()
											PosMon = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false               
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											BringMob = true
											FastAttack = true
										end
									until not _G.AutoFarmGunMastery or v.Humanoid.Health <= 0 or not v.Parent
									BringMob = false
									FastAttack = true
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
end)
_G.MobHealth = 30

-- [Observations] --

MainLeft:AddSeperator("Observations")

MainLeft:AddToggle("Auto Farm Observation EXP", _G.AutoFarmObservation, function(Value)
	_G.AutoFarmObservation = Value
    if Value == false then
	    wait(0.3)
	    TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoFarmObservation then
					repeat wait()
						if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							game:GetService('VirtualUser'):CaptureController()
							game:GetService('VirtualUser'):SetKeyDown('0x65')
							wait(2)
							game:GetService('VirtualUser'):SetKeyUp('0x65')
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoFarmObservation
				end
			end)
		end
	end)
	spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoFarmObservation then
					if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
						require(game:GetService("ReplicatedStorage").Notification).new("<Color=Red> < You Have Max Observation > <Color=/>"):Display()
					else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until not _G.AutoFarmObservation or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoFarmObservationHop then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                    end
                                until not _G.AutoFarmObservation or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            TP(CFrame.new(5533, 89, 4852, 1, 0, 0, 0, 1, 0, 0, 0, 1))
						end
					end
				end
			end
		end)
	end)
end)

MainLeft:AddToggle("Auto Farm Observation HOP", _G.AutoFarmObservationHop, function(Value)
	_G.AutoFarmObservationHop = Value
	if Value == false then
	    wait(0.3)
	    TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)

-- [Chests] --

MainLeft:AddSeperator("Chests")

MainLeft:AddToggle("Auto Farm Chests", _G.AutoFarmChests, function(Value)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
	_G.AutoFarmChests = Value
	if Value == false then
		wait(0.3)
		TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	_G.MagnitudeAdd = 0
	spawn(function()
		while wait() do 
			if _G.AutoFarmChests then
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
					if v.Name:find("Chest") then
						if game:GetService("Workspace"):FindFirstChild(v.Name) then
							if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
								repeat wait()
									if game:GetService("Workspace"):FindFirstChild(v.Name) then
										TP(v.CFrame)
									end
								until not _G.AutoFarmChests or not v.Parent
								TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
								_G.MagnitudeAdd = _G.MagnitudeAdd+1500
								break
							end
						end
					end
				end
			end
		end
	end)
end)

MainLeft:AddSeperator("Aura Functions")

MainLeft:AddToggle("Mob Aura", _G.MobAura, function(Value)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
	_G.MobAura = Value
	if Value == false then
		wait(0.3)
		TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	spawn(function()
		while wait() do
			pcall(function()
				if _G.MobAura then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
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
							until not _G.MobAura or v.Humanoid.Health <= 0 or not v.Parent
							BringMob = false
							FastAttack = false
						end
					end
				end
			end)
		end
	end)
end)

MainRight:AddSeperator("⚙️ Settings ⚙️")

-- [Select Weapons] --

Time = MainRight:AddLabel("Label")
function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Time:Refresh(Hour.." Hour(h) "..Minute.." Minute(s) : "..Second.." Second(s) ")
end
spawn(function()
    while true do
        UpdateTime()
        wait()
    end
end)

Weapons = {
	"Melee",
	"Sword",
	"Blox Fruit"
}

MainRight:AddDropdown("Select Weapon", Weapons, function(Value)
    _G.SelectWeapon = Value
end)

MainRight:AddSeperator("Stats")

-- [Stats] --

Stats = {
	"Melee",
	"Defense",
	"Sword",
    "Gun",
    "Devil Fruit"
}

MainRight:AddDropdown("Select Stats", Stats, function(Value)
    _G.SelectStats = Value
end)

MainRight:AddToggle("Auto Stats", _G.AutoStats, function(Value)
	_G.AutoStats = Value
    if _G.AutoStats and _G.SelectStats == "Melee" then
        _G.Melee = true
    elseif _G.AutoStats and _G.SelectStats == "Defense" then
        _G.Defense = true
    elseif _G.AutoStats and _G.SelectStats == "Sword" then
        _G.Sword = true
    elseif _G.AutoStats and _G.SelectStats == "Gun" then
        _G.Gun = true
    elseif _G.AutoStats and _G.SelectStats == "Devil Fruit" then
        _G.DevilFruit = true
    end
end)

local ItemsTab = Windows:AddTab("Items")
local ItemsLeft = ItemsTab:AddPage()
local ItemsRight = ItemsTab:AddPage()

-- [Item] --

ItemsLeft:AddSeperator("East Blue")

ItemsLeft:AddToggle("Auto Bisento V2", _G.AutoBisentoV2, function(Value)
    _G.AutoBisentoV2 = Value
    if Value == false then
        wait(0.3)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoBisentoV2 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Greybeard" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Haki()
                                    EquipWeapon()
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    FastAttack = true
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoBisentoV2 or v.Humanoid.Health <= 0 or not v.Parent
                                UnEquip()
                                FastAttack = false
                            end
                        end
                    else 
                        TP(CFrame.new(-4907, 81 , 4307))
                    end
                end
            end)
        end
    end)
end)

ItemsLeft:AddToggle("Auto Pole V1", _G.AutoPole, function(Value)
    _G.AutoPole = Value
    if Value == false then
        wait(0.3)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoPole then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Haki()
                                    EquipWeapon()
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    FastAttack = true
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoPole or v.Humanoid.Health <= 0 or not v.Parent
                                UnEquip()
                                FastAttack = false
                            end
                        end
                    else 
                        local Distance = (Vector3.new(-7895, 5547, -380, 1, 0, 0, 0, 1, 0, 0, 0, 1) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 3000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7895, 5547, -380, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                        end
                        TP(CFrame.new(-7779, 5677, -2422, -1, 4e-08, 0, 4.7e-08, 1, 7e-08, -0, 8e-08, -1))
                    end
                end
            end)
        end
    end)
end)

ItemsLeft:AddToggle("Auto Trident", _G.AutoTrident, function(Value)
    _G.AutoTrident = Value
    if Value == false then
        wait(0.3)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoTrident then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Lord" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Haki()
                                    EquipWeapon()
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    FastAttack = true
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoTrident or v.Humanoid.Health <= 0 or not v.Parent
                                UnEquip()
                                FastAttack = false
                            end
                        end
                    else 
                        local Distance = (Vector3.new(61349, 37, 995) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 3000 then
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61164, 8, 1820, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                        end
                        TP(CFrame.new(61353, 70, 1029, -1, 0, -0, 0, 1, 0, 0, 0, -1)) 
                    end
                end
            end)
        end
    end)
end)

ItemsLeft:AddToggle("Auto Saber", _G.AutoSaber, function(Value)
    _G.AutoSaber = Value
    if Value == false then
        wait(0.3)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
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
                                                        EquipWeapon()
                                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        FastAttack = true
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    until not _G.AutoSaber or v.Humanoid.Health <= 0 or not v.Parent
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
                                        EquipWeapon()
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        FastAttack = true
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                    until not _G.AutoSaber or v.Humanoid.Health <= 0 or not v.Parent
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                    UnEquip()
                                    FastAttack = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
end)

ItemsLeft:AddToggle("Auto Shark Saw", _G.AutoSharkSaw, function(Value)
    _G.AutoSharkSaw = Value
    if Value == false then
        wait(0.3)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoSharkSaw then
                    if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "The Saw" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Haki()
                                    EquipWeapon()
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    FastAttack = true
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoSharkSaw or v.Humanoid.Health <= 0 or not v.Parent
                                UnEquip()
                                FastAttack = false
                            end
                        end
                    else 
                        TP(CFrame.new(-754, 51.3, 1597.5, 0.25, -4.86, -1, -5.8e-09, 1, -5e-08, 1, 1.8e-08, 0.25)) 
                    end
                end
            end)
        end
    end)
end)

-- [Materials] --

ItemsRight:AddSeperator("Materials")

Materials = {
    "Magma Ore",
    "Angel Wings",
    "Leather",
    "Scrap Metal",
    "Radioactive Material",
}

function CheckMaterial()
    if _G.SelectMaterials == "Magma Ore" then
        MaterialMon = "Military Spy"
        MaterialCFrame = CFrame.new(-5850, 78, 8849)
    elseif _G.SelectMaterials == "Angel Wings" then
		MaterialMon = "Royal Soldier"
		MaterialCFrame = CFrame.new(-7827, 5607, -1705)
    elseif _G.SelectMaterials == "Leather" then
        MaterialMon = "Pirate"
        MaterialCFrame = CFrame.new(-1212, 5, 3917)
    elseif _G.SelectMaterial == "Scrap Metal" then
        MaterialMon = "Brute"
        MaterialCFrame = CFrame.new(-1132, 15, 4293)
    elseif _G.SelectMaterial == "Radioactive Material" then
        MaterialMon = "Factory Staff"
        MaterialCFrame = CFrame.new(-507, 73, -126)    
	end
end

local SelectMaterials = ItemsRight:AddDropdown("Select Materials", Materials, function(Value)
	_G.SelectMaterials = Value
end)

ItemsRight:AddToggle("Auto Farm Materials", _G.AutoFarmMaterials, function(Value)
	_G.AutoFarmMaterials = Value
	if Value == false then
		wait(0.3)
		TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoFarmMaterials and _G.SelectMaterials then
					CheckMaterial()
					if game.Workspace.Enemies:FindFirstChild(MaterialMon) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MaterialMon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								if v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										Haki()
										EquipWeapon()
										PosMon = v.HumanoidRootPart.CFrame
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										FastAttack = true
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
									until not _G.AutoFarmMaterials or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					else
						TP(MaterialCFrame)
					end
				end
			end)
		end
	end)
end)

local CombatTab = Windows:AddTab("Combat")
local CombatLeft = CombatTab:AddPage()
local CombatRight = CombatTab:AddPage()

-- [Players] --

CombatLeft:AddSeperator("Players")

Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectPlayer = CombatLeft:AddDropdown("Select Player", Playerslist, function(Value)
    _G.SelectPlayers = Value
end)

CombatLeft:AddButton("Refresh Players Dropdown", function()
    Playerslist = {}
    SelectPlayer:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
	        SelectPlayer:Add(v.Name)
		end
    end
end)

CombatLeft:AddToggle("Teleport Player", _G.TeleportPlayers, function(Value)
	_G.TeleportPlayers = Value
	if Value == false then
		wait(0.3)
		TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	pcall(function()
		if _G.TeleportPlayers then
			repeat TP(game:GetService("Players")[_G.SelectPlayers].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPlayers == false
		end
		StopTween(_G.TeleportPlayers)
	end)
end)

CombatLeft:AddToggle("Spectate Player", _G.SpectatePlayers, function(Value)
	_G.SpectatePlayers = Value
	local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
	local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPlayers)
	repeat wait(.1)
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPlayers).Character.Humanoid
	until _G.SpectatePlayers == false 
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

-- [Aimbot] --

CombatLeft:AddSeperator("Aimbot")

local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod()
	local args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if _G.AimbotSkill then
					args[2] = AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end)

CombatLeft:AddToggle("Enabled Aimbot Skill", _G.AimbotSkill, function(Value)
	_G.AimbotSkill = Value
	spawn(function()
		while wait() do
			if _G.AimbotSkill then
				if game.Players:FindFirstChild(_G.SelectPlayers) and game.Players:FindFirstChild(_G.SelectPlayers).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(_G.SelectPlayers).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(_G.SelectPlayers).Character.Humanoid.Health > 0 then
					AimBotSkillPosition = game.Players:FindFirstChild(_G.SelectPlayers).Character:FindFirstChild("HumanoidRootPart").Position
				end
			end
		end
	end)
end)

spawn(function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
	end
end)

CombatLeft:AddToggle("Enabled Aimbot Gun", _G.AimbotGun, function(Value)
	_G.AimbotGun = Value
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if _G.AimbotGun and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(_G.SelectPlayers) then
			tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
			v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(_G.SelectPlayers).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
			game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(_G.SelectPlayers).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
		end 
	end)
end)

-- [Teleport Island] --

CombatLeft:AddSeperator("Teleport Island")

IslandTable = {
    "Pirate Starter",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Frozen Village",
    "Marine Fortless",
    "Skylands 1",
    "Skylands 2",
    "Prison",
    "Colosseum",
    "Magma Village",
    "Whirlpoll",
    "Fountain City"
}

CombatLeft:AddDropdown("Select Island", IslandTable, function(Value)
	SelectIsland = Value
end)

CombatLeft:AddToggle("Teleport Island", _G.TeleportIsland, function(Value)
	_G.TeleportIsland = Value
    if Value == false then
        wait(0.3)
        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    if _G.TeleportIsland and SelectIsland == "Pirate Starter" then
        TP(CFrame.new(1027.58875, 19.3245106, 1367.28564, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Middle Town" then
        TP(CFrame.new(-582.941345, 6.70024586, 1713.93726, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Jungle" then
        TP(CFrame.new(-1255.14795, 11.7000084, 349.906677, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Pirate Village" then
        TP(CFrame.new(-1120.14856, 4.60001373, 3855.31763, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Desert" then
        TP(CFrame.new(1094.14587, 5.28642607, 4192.88721, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Frozen Village" then
        TP(CFrame.new(1185.63379, 7.15136719, -1143.36987, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Marine Fortless" then
        TP(CFrame.new(-4697.32324, 20.1976337, 3975.07129, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Skylands 1" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4608, 873, -1668))
        TP(CFrame.new(-4967.83691, 718.535278, -2623.84326, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Skylands 2" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7947, 5547, -319))
    elseif _G.TeleportIsland and SelectIsland == "Prison" then
        TP(CFrame.new(5032.81885, 2.3914094, 766.972168, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Colosseum" then
        TP(CFrame.new(-1332.94006, 6.35386896, -2896.56055, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Magma Village" then
        TP(CFrame.new(-5193.35498, 5.43863821, 8569.56348, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif _G.TeleportIsland and SelectIsland == "Whirlpoll" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3905, 14, -1941))
    elseif _G.TeleportIsland and SelectIsland == "Fountain City" then
        TP(CFrame.new(5091.09619, 1.06925201, 4033.5708, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end
end)

-- [Teleport Place] --

CombatLeft:AddSeperator("Teleport Place")

CombatLeft:AddButton("Teleport To East Blue", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)
CombatLeft:AddButton("Teleport To Dressrosa", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)
CombatLeft:AddButton("Teleport To Zou", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

-- [Abilities] --

CombatRight:AddSeperator("Abilities")

CombatRight:AddToggle("Semi Mink Race", _G.InfiniteAbility, function(Value)
	_G.InfiniteAbility = Value
	if Value == false then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
	if _G.InfiniteAbility then
		if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local inf = Instance.new("ParticleEmitter")
			inf.Acceleration = Vector3.new(0,0,0)
			inf.Archivable = true
			inf.Drag = 20
			inf.EmissionDirection = Enum.NormalId.Top
			inf.Enabled = true
			inf.Lifetime = NumberRange.new(0,0)
			inf.LightInfluence = 0
			inf.LockedToPart = true
			inf.Name = "Agility"
			inf.Rate = 500
			local numberKeypoints2 = {
				NumberSequenceKeypoint.new(0, 0);
				NumberSequenceKeypoint.new(1, 4); 
			}
			inf.Size = NumberSequence.new(numberKeypoints2)
			inf.RotSpeed = NumberRange.new(9999, 99999)
			inf.Rotation = NumberRange.new(0, 0)
			inf.Speed = NumberRange.new(30, 30)
			inf.SpreadAngle = Vector2.new(0,0,0,0)
			inf.Texture = ""
			inf.VelocityInheritance = 0
			inf.ZOffset = 2
			inf.Transparency = NumberSequence.new(0)
			inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
			inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		end
	else
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
		end
	end
end)

CombatRight:AddToggle("Auto Active Races",_G.AutoActiveRace,function(Value)
	_G.AutoActiveRace = Value
	spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoAgility then
					game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
				end
			end
		end)
	end)
end)

CombatRight:AddToggle("Dash No Cooldown",_G.DashNoCooldown , function(Value)
    _G.DashNoCooldown = Value
    NoDodgeCool()
	function NoDodgeCool()
		if _G.DashNoCooldown  then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.DashNoCooldown 
							end
						end
					end
				end
			end
		end
	end
end)

CombatRight:AddToggle("Sky Jump No Cooldown",_G.SkyJumpNoCooldown , function(Value)
    _G.SkyJumpNoCooldown = Value
    NoJumpCool()
	function NoJumpCool()
		if _G.SkyJumpNoCooldown  then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Skyjump then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Skyjump then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.SkyJumpNoCooldown 
							end
						end
					end
				end
			end
		end
	end
end)

CombatRight:AddToggle("Soru No Cooldown",_G.SoruNoCooldown,function(Value)
	_G.SoruNoCooldown = Value
    spawn(function()
		while wait() do
			pcall(function()
				if _G.SoruNoCooldown and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
					for i,v in next, getgc() do
						if game:GetService("Players").LocalPlayer.Character.Soru then
							if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
								for i2,v2 in next, getupvalues(v) do
									if typeof(v2) == "table" then
										repeat wait(.1)
											v2.LastUse = 0
										until not _G.SoruNoCooldown or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
									end
								end
							end
						end
					end
				end
			end)
		end
	end)
end)

local VisualsTab = Windows:AddTab("Visuals")
local VisualsLeft = VisualsTab:AddPage()
local VisualsRight = VisualsTab:AddPage()

-- [ESP] --

VisualsLeft:AddSeperator("ESP")

VisualsLeft:AddToggle("Players ESP",_G.PlayersESP ,function(Value)
    _G.PlayersESP = Value
	while _G.PlayersESP  do wait()
		UpdatePlayer()
	end
end)
function UpdatePlayer()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if v.Character then
				if _G.PlayersESP then
					if v.Character.Head and not v.Character.Head:FindFirstChild("PlayerESP"..Number) then
						local Bb = Instance.new("BillboardGui", v.Character.Head)
						Bb.Name = "PlayerESP"..Number
						Bb.ExtentsOffset = Vector3.new(0, 1, 0)
						Bb.Size = UDim2.new(1, 200, 1, 30)
						Bb.Adornee = v.Character.Head
						Bb.AlwaysOnTop = true
						local Textlb = Instance.new("TextLabel", Bb)
						Textlb.Font = "GothamBold"
						Textlb.FontSize = "Size14"
						Textlb.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
						Textlb.Size = UDim2.new(1,0,1,0)
						Textlb.BackgroundTransparency = 1
						Textlb.TextStrokeTransparency = 0.5
						if v.Team == game:GetService("Players").LocalPlayer.Team then
							Textlb.TextColor3 = Color3.new(255, 0, 0)
						else
							Textlb.TextColor3 = Color3.new(0, 0, 255)
						end
					else
						v.Character.Head["PlayerESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
					end
				else
					if v.Character.Head:FindFirstChild("PlayerESP"..Number) then
						v.Character.Head:FindFirstChild("PlayerESP"..Number):Destroy()
					end
				end
			end
		end)
	end
end

VisualsLeft:AddToggle("ESP Chest",_G.ChestESP,function(Value)
    _G.ChestESP = Value
	while _G.ChestESP do wait()
        UpdateChest()
    end
end)
Number = math.random(1,1000000)
function UpdateChest()
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
				if _G.ChestESP then
					if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
						if not v:FindFirstChild("ChestESP"..Number) then
							local Bb = Instance.new("BillboardGui", v)
							Bb.Name = "ChestESP"..Number
							Bb.ExtentsOffset = Vector3.new(0, 1, 0)
							Bb.Size = UDim2.new(1, 200, 1, 30)
							Bb.Adornee = v
							Bb.AlwaysOnTop = true
							local Textlb = Instance.new("TextLabel", Bb)
							Textlb.Font = "GothamBold"
							Textlb.FontSize = "Size14"
							Textlb.Size = UDim2.new(1,0,1,0)
							Textlb.BackgroundTransparency = 1
							Textlb.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								Textlb.TextColor3 = Color3.fromRGB(100, 100, 100)
								Textlb.Text = "Bronze Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
							end
							if v.Name == "Chest2" then
								Textlb.TextColor3 = Color3.fromRGB(255, 255, 0)
								Textlb.Text = "Gold Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
							end
							if v.Name == "Chest3" then
								Textlb.Text = "Diamond Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
								Textlb.TextColor3 = Color3.fromRGB(0, 255, 255)
							end
						else
							v["ChestESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
						end
					end
				else
					if v:FindFirstChild("ChestESP"..Number) then
						v:FindFirstChild("ChestESP"..Number):Destroy()
					end
				end
			end
		end)
	end
end

VisualsLeft:AddToggle("Devil Fruits ESP",_G.DevilFruitsESP,function(Value)
    _G.DevilFruitsESP = Value
	while _G.DevilFruitsESP do wait()
		UpdateDevilFruit()
	end
end)
function UpdateDevilFruit()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		pcall(function()
			if string.find(v.Name, "Fruit") then
				if _G.DevilFruitsESP then
					if string.find(v.Name, "Fruit") then
						if not v.Handle:FindFirstChild("DevilESP"..Number) then
							local Bb = Instance.new("BillboardGui", v.Handle)
							Bb.Name = "DevilESP"..Number
							Bb.ExtentsOffset = Vector3.new(0, 1, 0)
							Bb.Size = UDim2.new(1, 200, 1, 30)
							Bb.Adornee = v.Handle
							Bb.AlwaysOnTop = true
							local Textlb = Instance.new("TextLabel", Bb)
							Textlb.Font = "GothamBold"
							Textlb.FontSize = "Size14"
							Textlb.Size = UDim2.new(1,0,1,0)
							Textlb.BackgroundTransparency = 1
							Textlb.TextStrokeTransparency = 0.5
							Textlb.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
							Textlb.TextColor3 = Color3.new(155, 0, 255)
						else
							v.Handle["DevilESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
						end
					end
				else
					if v.Handle:FindFirstChild("DevilESP"..Number) then
						v.Handle:FindFirstChild("DevilESP"..Number):Destroy()
					end
				end
			end
		end)
	end
end

-- [Devil Fruits] --

VisualsLeft:AddSeperator("Devil Fruits")

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

VisualsLeft:AddDropdown("Select Devil Fruits", DevilFruitTable, function(Value)
	SelectDevilFruit = Value
end)

VisualsLeft:AddToggle("Auto Buy Fruits", _G.AutoBuyFruits, function(Value)
    _G.AutoBuyFruits = Value
	spawn(function()
		while wait(.1) do
			if _G.AutoBuyFruits then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", SelectDevilFruit, false)
			end 
		end
	end)
end)

VisualsLeft:AddToggle("Auto Stored Fruits", _G.AutoStoredFruits, function(Value)
	_G.AutoStoredFruits = Value
    spawn(function()
        while wait() do
            if _G.AutoStoredFruits then
                pcall(function()
                    DropFruit()
                    wait()
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
        end
    end)
end)
function DropFruit()
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) -- HideUi
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true -- เปิดไว้ถึงจะเช็คได้
		local invenfruit = game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame
		wait(.3)
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Backpack in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					FruitStoreF = string.split(Backpack.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Backpack.Name):Destroy()
					end												
				end
			end
		end
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Character in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					FruitStoreF = string.split(Character.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild(Character.Name):Destroy()
					end												
				end
			end
		end
	end)
end

VisualsLeft:AddToggle("Auto Random Fruits", _G.AutoRandomFruits, function(Value)
	_G.AutoRandomFruits = Value
    spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoRandomFruits then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
				end
			end)
		end
	end)
end)

VisualsLeft:AddButton("Random Fruits", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
end)

VisualsLeft:AddToggle("Enabled Tween To Fruits", _G.TweenToFruits, function(Value)
	_G.TweenToFruits = Value
    spawn(function()
        while wait(.1) do
            if _G.TweenToFruits then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        TP(v.Handle.CFrame)
                    end
                end
            end
        end
    end)
end)

VisualsLeft:AddButton("Remove Devil Fruit",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RemoveFruit", "Beil")
end)

-- [Shop] --

VisualsRight:AddSeperator("Fighting Styles")

VisualsRight:AddButton("Black Leg", function()
   	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)
VisualsRight:AddButton("Electro", function()
   	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)
VisualsRight:AddButton("Fishman Karate", function()
   	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)
VisualsRight:AddButton("Dragon Claw", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)
VisualsRight:AddButton("Superhuman", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)
VisualsRight:AddButton("Death Step", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)
VisualsRight:AddButton("Sharkman Karate", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)
VisualsRight:AddButton("Electric Claw", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)
VisualsRight:AddButton("Dragon Talon", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
VisualsRight:AddButton("Godhuman", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)
VisualsRight:AddButton("Sanguine Art", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
end)

VisualsRight:AddSeperator("Abilities")

VisualsRight:AddButton("Buy Geppo", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)
VisualsRight:AddButton("Buy Buso Haki", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)
VisualsRight:AddButton("Buy Soru", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)
VisualsRight:AddButton("Buy Observation Haki", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

VisualsRight:AddSeperator("Abilities")

VisualsRight:AddButton("Stats Refund", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)
VisualsRight:AddButton("Rances Reroll", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)

local MiscTab = Windows:AddTab("Misc")
local MiscLeft = MiscTab:AddPage()
local MiscRight = MiscTab:AddPage()

MiscLeft:AddSeperator("Ui")

MiscLeft:AddButton("Open Devil Fruit Shop",function(Value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
	game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
MiscLeft:AddButton("Open Title Inventory", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
MiscLeft:AddButton("Open Haki Color", function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

MiscLeft:AddSeperator("Teams")

MiscLeft:AddButton("Join Pirates Team", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
end)

MiscLeft:AddButton("Join Marines Team",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
end)

MiscRight:AddSeperator("Server")

MiscRight:AddButton("Rejoin Server", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)
MiscRight:AddButton("Server Hop", function()
	Teleport()
end)
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
	local Site;
	if foundAnything == "" then
		Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
	else
		Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
	end
	local ID = ""
	if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
		foundAnything = Site.nextPageCursor
	end
	local num = 0;
	for i,v in pairs(Site.data) do
		local Possible = true
		ID = tostring(v.id)
		if tonumber(v.maxPlayers) > tonumber(v.playing) then
			for _,Existing in pairs(AllIDs) do
				if num ~= 0 then
					if ID == tostring(Existing) then
						Possible = false
					end
				else
					if tonumber(actualHour) ~= tonumber(Existing) then
						local delFile = pcall(function()
							-- delfile("NotSameServers.json")
							AllIDs = {}
							table.insert(AllIDs, actualHour)
						end)
					end
				end
				num = num + 1
			end
			if Possible == true then
				table.insert(AllIDs, ID)
				wait()
				pcall(function()
					-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
					wait()
					game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
				end)
				wait(4)
			end
		end
	end
end
function Teleport()
	while wait() do
		pcall(function()
			TPReturner()
			if foundAnything ~= "" then
				TPReturner()
			end
		end)
	end
end

MiscRight:AddButton("Server Hop Lower Players", function()
	HopLowerServer()
end)
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

-- [Job ID] --

MiscRight:AddSeperator("Job ids")

MiscRight:AddTextbox("Job ids","", true,function(value)
	JoinJobID = Value
end)

MiscRight:AddButton("Join Job ids", function()
	game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", JoinJobID)
end)

-- [FPS Boost] --

MiscRight:AddButton("FPS Boost", function()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end)

-- [Codes] --

MiscRight:AddSeperator("Codes")

MiscRight:AddButton("Redeem All Codes", function()
    function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
    UseCode("NEWTROLL")
    UseCode("KITT_RESET")
    UseCode("Sub2CaptainMaui")
    UseCode("SUB2GAMERROBOT_RESET1")
    UseCode("kittgaming")
    UseCode("Sub2Fer999")
    UseCode("Enyu_is_Pro")
    UseCode("Magicbus")
    UseCode("JCWK")
    UseCode("Starcodeheo")
    UseCode("Bluxxy")
    UseCode("fudd10_v2")
    UseCode("FUDD10")
    UseCode("BIGNEWS") 
    UseCode("THEGREATACE")
	UseCode("SUB2GAMERROBOT_EXP1") 
    UseCode("Sub2OfficialNoobie")
	UseCode("StrawHatMaine") 
    UseCode("SUB2NOOBMASTER123")
	UseCode("Sub2UncleKizaru") 
    UseCode("Sub2Daigrock")
	UseCode("Axiore") 
    UseCode("TantaiGaming")
end)

-- [Abilities Misc] --

MiscRight:AddSeperator("Abilities")

MiscRight:AddToggle("Walk on Water",_G.WalkOnWater, function(Value)
    _G.WalkOnWater = Value
	spawn(function()
		while wait() do
			pcall(function()
				if _G.WalkOnWater then
					game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
				else
					game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
				end
			end)
		end
	end)
end)

MiscRight:AddToggle("Semi No Clip",_G.Clip, function(Value)
    _G.Clip = Value
	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.Clip then
					for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false    
						end
					end
				end
			end)
		end)
	end)
end)

MiscRight:AddToggle("Enabled Fly",_G.Fly, function(Value)
    _G.Fly = Value
    if Fly then
        fly()
    end
end)
function fly()
	local mouse=game:GetService("Players").LocalPlayer:GetMouse''
	localplayer=game:GetService("Players").LocalPlayer
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	local speedSET=25
	local keys={a=false,d=false,w=false,s=false}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		gyro.CFrame = torso.CFrame
		repeat
				wait()
				localplayer.Character.Humanoid.PlatformStand=true
				local new=gyro.CFrame - gyro.CFrame.p + pos.position
				if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=1
				end
				if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+speedSET
				end
				if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+speedSET
				end
				if keys.d then
				new = new * CFrame.new(speed,0,0)
				speed=speed+speedSET
				end
				if keys.a then
				new = new * CFrame.new(-speed,0,0)
				speed=speed+speedSET
				end
				if speed>speedSET then
				speed=speedSET
				end
				pos.position=new.p
				if keys.w then
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
				elseif keys.s then
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
				else
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
				end
		until not Fly
		if gyro then 
				gyro:Destroy() 
		end
		if pos then 
				pos:Destroy() 
		end
		flying=false
		localplayer.Character.Humanoid.PlatformStand=false
		speed=0
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then 
				flying=false e1:disconnect() e2:disconnect() return 
		end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()
end

MiscRight:AddButton("Click TP Tool", function()
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Teleport Tool"
    tool.Activated:connect(function()
    local pos = mouse.Hit+Vector3.new(0,2.5,0)
    pos = CFrame.new(pos.X,pos.Y,pos.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)