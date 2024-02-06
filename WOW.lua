-- This is Sun X 

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
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CheckQuest()
        local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
            if Lv == 1 or Lv <= 9 then
                Mon = "Bandit [Lv. 5]"
                NameMon = "Bandit"
                LvQuest = 1
                NameQuest = "BanditQuest1"
                CFrameMon = CFrame.new(1040, 40, 1575)
                CFrameQuest = CFrame.new(1060, 15, 1545)
            elseif Lv == 10 or Lv <= 14 then
                Mon = "Monkey [Lv. 14]"
                NameMon = "Monkey"
                LvQuest = 1
                NameQuest = "JungleQuest"
                CFrameMon = CFrame.new(-1445, 60, -20)
                CFrameQuest = CFrame.new(-1600, 35, 155)
            elseif Lv == 15 or Lv <= 29 then
                Mon = "Gorilla [Lv. 20]"
                NameMon = "Gorilla"
                LvQuest = 2
                NameQuest = "JungleQuest"
                CFrameMon = CFrame.new(-1200, 5, -550)
                CFrameQuest = CFrame.new(-1600, 35, 155) 
            elseif Lv == 30 or Lv <=39 then
                Mon = "Pirate [Lv. 35]"
                NameMon = "Pirate"
                LvQuest = 1
                NameQuest = "BuggyQuest1"
                CFrameMon = CFrame.new(-1200, 40, 3860)
                CFrameQuest = CFrame.new(-1140, 5, 3825) 
            elseif Lv == 40 or Lv <=59 then
                Mon = "Brute [Lv. 45]"
                NameMon = "Brute"
                LvQuest = 2
                NameQuest = "BuggyQuest1"
                CFrameMon = CFrame.new(-1135, 95, 4305)
                CFrameQuest = CFrame.new(-1140, 5, 3825)
            elseif Lv == 60 or Lv <=74 then
                Mon = "Desert Bandit [Lv. 60]"
                NameMon = "Desert Bandit"
                LvQuest = 1
                NameQuest = "DesertQuest"
                CFrameMon = CFrame.new(985, 15, 4415)
                CFrameQuest = CFrame.new(895, 5, 4390)
            elseif Lv == 75 or Lv <=89 then
                Mon = "Desert Officer [Lv. 70]"
                NameMon = "Desert Officer"
                LvQuest = 2
                NameQuest = "DesertQuest"
                CFrameMon = CFrame.new(1560, 15, 4280)
                CFrameQuest = CFrame.new(895, 5, 4390)
            elseif Lv == 90 or Lv <=99 then
                Mon = "Snow Bandit [Lv. 90]"
                NameMon = "Snow Bandit"
                LvQuest = 1
                NameQuest = "SnowQuest"
                CFrameMon = CFrame.new(1410, 55, -1275)
                CFrameQuest = CFrame.new(1385, 85, -1230)
            elseif Lv == 100 or Lv <=119 then
                Mon = "Snowman [Lv. 100]"
                NameMon = "Snowman"
                LvQuest = 2
                NameQuest = "SnowQuest"
                CFrameMon = CFrame.new(1410, 55, -1270)
                CFrameQuest = CFrame.new(1385, 85, -123)
            elseif Lv == 120 or Lv <=149 then 
                Mon = "Chief Petty Officer [Lv. 120]"
                NameMon = "Chief Petty Officer"
                LvQuest = 1
                NameQuest = "MarineQuest2"
                CFrameMon = CFrame.new(-4815, 55, 4430)
                CFrameQuest = CFrame.new(-5035, 30, 4325)
            elseif Lv == 150 or Lv <=174 then 
                Mon = "Sky Bandit [Lv. 150]"
                NameMon = "Sky Bandit"
                LvQuest = 1
                NameQuest = "SkyQuest"
                CFrameMon = CFrame.new(-4955, 365, -2910)
                CFrameQuest = CFrame.new(-4840, 715, -2625)
            elseif Lv == 175 or Lv <=189 then 
                Mon = "Dark Master [Lv. 175]"
                NameMon = "Dark Master"
                LvQuest = 2
                NameQuest = "SkyQuest"
                CFrameMon = CFrame.new(-5150, 440, -2330)
                CFrameQuest = CFrame.new(-4840, 715, -2625)
            elseif Lv == 190 or Lv <=209 then 
                Mon = "Prisoner [Lv. 190]"
                NameMon = "Prisoner"
                LvQuest = 1
                NameQuest = "PrisonerQuest"
                CFrameMon = CFrame.new(5030, 65, 430)
                CFrameQuest = CFrame.new(5310, 0, 470)
            elseif Lv == 210 or Lv <=249 then 
                Mon = "Dangerous Prisoner [Lv. 210]"
                NameMon = "Dangerous Prisoner"
                LvQuest = 2
                NameQuest = "PrisonerQuest"
                CFrameMon = CFrame.new(5525, 15, 655)
                CFrameQuest = CFrame.new(5310, 0, 470)
            elseif Lv == 250 or Lv <=299 then 
                Mon = "Toga Warrior [Lv. 250]"
                NameMon = "Toga Warrior"
                LvQuest = 1
                NameQuest = "ColosseumQuest"
                CFrameMon = CFrame.new(-1820, 50, -2745)
                CFrameQuest = CFrame.new(-1575, 5, -2985)
            elseif Lv == 300 or Lv <=324 then 
                Mon = "Military Soldier [Lv. 300]"
                NameMon = "Military Soldier"
                LvQuest = 1
                NameQuest = "MagmaQuest"
                CFrameMon = CFrame.new(-5465, 110, 8675)
                CFrameQuest = CFrame.new(-5315, 10, 8515)
            elseif Lv == 325 or Lv <=374 then 
                Mon = "Military Spy [Lv. 325]"
                NameMon = "Military Spy"
                LvQuest = 2
                NameQuest = "MagmaQuest"
                CFrameMon = CFrame.new(-5785, 120, 8760)
                CFrameQuest = CFrame.new(-5315, 10, 8515)
            elseif Lv == 375 or Lv <=399 then 
                Mon = "Fishman Warrior [Lv. 375]"
                NameMon = "Fishman Warrior"
                LvQuest = 1
                NameQuest = "FishmanQuest"
                CFrameMon = CFrame.new(60945, 50, 1525)
                CFrameQuest = CFrame.new(61120, 20, 1570)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61165, 10, 1820))
                end
            elseif Lv == 400 or Lv <=449 then 
                Mon = "Fishman Commando [Lv. 400]"
                NameMon = "Fishman Commando"
                LvQuest = 2
                NameQuest = "FishmanQuest"
                CFrameMon = CFrame.new(61865, 75, 1385)
                CFrameQuest = CFrame.new(61120, 20, 1570)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61165, 10, 1820))
                end
            elseif Lv == 450 or Lv <=474 then 
                Mon = "God's Guard [Lv. 450]"
                NameMon = "God's Guard"
                LvQuest = 1
                NameQuest = "SkyExp1Quest"
                CFrameMon = CFrame.new(-4580, 915, -1880)
                CFrameQuest = CFrame.new(-4720, 845, -1955)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4625, 850, -1705))
                end
            elseif Lv == 475 or Lv <=524 then
                Mon = "Shanda [Lv. 475]"
                NameMon = "Shanda"
                LvQuest = 2
                NameQuest = "SkyExp1Quest"
                CFrameMon = CFrame.new(-7690, 5600, -440)
                CFrameQuest = CFrame.new(-7860, 5545, -380)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380))
                end
            elseif Lv == 525 or Lv <=549 then 
                Mon = "Royal Squad [Lv. 525]"
                NameMon = "Royal Squad"
                LvQuest = 1
                NameQuest = "SkyExp2Quest"
                CFrameMon = CFrame.new(-7925, 6060, -1495)
                CFrameQuest = CFrame.new(-7905, 5635, -1410)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380))
                end
            elseif Lv == 550 or Lv <=624 then 
                Mon = "Royal Soldier [Lv. 550]"
                NameMon = "Royal Soldier"
                LvQuest = 2
                NameQuest = "SkyExp2Quest"
                CFrameMon = CFrame.new(-7925, 6060, -1495)
                CFrameQuest = CFrame.new(-7905, 5635, -1410)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380))
                end
            elseif Lv == 625 or Lv <=649 then 
                Mon = "Galley Pirate [Lv. 625]"
                NameMon = "Galley Pirate"
                LvQuest = 1
                NameQuest = "FountainQuest"
                CFrameMon = CFrame.new(5560, 150, 4000)
                CFrameQuest = CFrame.new(5260, 35, 4050)
            elseif Lv == 650 or Lv <=700 then 
                Mon = "Galley Captain [Lv. 650]"
                NameMon = "Galley Captain"
                LvQuest = 2
                NameQuest = "FountainQuest"
                CFrameMon = CFrame.new(5690, 10, 4950)
                CFrameQuest = CFrame.new(5260, 35, 4050)
            elseif Lv == 700 or Lv <=724 then
				Mon = "Raider [Lv. 700]"
				NameMon = "Raider"
				LvQuest = 1
				NameQuest = "Area1Quest"
				CFrameMon = CFrame.new(-495, 90, 2315)
				CFrameQuest = CFrame.new(-425, 70, 1835)
			elseif Lv == 725 or Lv <=774 then
				Mon = "Mercenary [Lv. 725]"
				NameMon = "Mercenary"
				LvQuest = 2
				NameQuest = "Area1Quest"
				CFrameMon = CFrame.new(-1440, 315, 1360)
				CFrameQuest = CFrame.new(-425, 70, 1835)
			elseif Lv == 775 or Lv <=799 then
				Mon = "Swan Pirate [Lv. 775]"
				NameMon = "Swan Pirate"
				LvQuest = 1
				NameQuest = "Area2Quest"
				CFrameMon = CFrame.new(935, 145, 1260)
				CFrameQuest = CFrame.new(635, 75, 915)
			elseif Lv == 800 or Lv <=874 then
				Mon = "Factory Staff [Lv. 800]"
				NameMon = "Factory Staff"
				LvQuest = 2
				NameQuest = "Area2Quest"
				CFrameMon = CFrame.new(-145, 70, -245)
				CFrameQuest = CFrame.new(635, 75, 915)
			elseif Lv == 875 or Lv <=899 then
				Mon = "Marine Lieutenant [Lv. 875]"
				NameMon = "Marine Lieutenant"
				LvQuest = 1
				NameQuest = "MarineQuest3"
				CFrameMon = CFrame.new(-2590, 250, -2925)
				CFrameQuest = CFrame.new(-2440, 70, -3215)
			elseif Lv == 900 or Lv <=949 then
			    Mon = "Marine Captain [Lv. 900]"
			    NameMon = "Marine Captain"
			    LvQuest = 2
			    NameQuest = "MarineQuest3"
			    CFrameMon = CFrame.new(-1750, 225, -3100)
			    CFrameQuest = CFrame.new(-2440, 70, -3215)
			elseif Lv == 950 or Lv <=974 then
				Mon = "Zombie [Lv. 950]"
				NameMon = "Zombie"
				LvQuest = 1
				NameQuest = "ZombieQuest"
				CFrameMon = CFrame.new(-5620, 490, -775)
				CFrameQuest = CFrame.new(-5495, 50, -795)
			elseif Lv == 975 or Lv <=999 then
				Mon = "Vampire [Lv. 975]"
				NameMon = "Vampire"
				LvQuest = 2
				NameQuest = "ZombieQuest"
				CFrameMon = CFrame.new(-6245, 10, -1485)
				CFrameQuest = CFrame.new(-5495, 50, -795)
			elseif Lv == 1000 or Lv <=1049 then
			    Mon = "Snow Trooper [Lv. 1000]"
			    NameMon = "Snow Trooper"
			    LvQuest = 1
			    NameQuest = "SnowMountainQuest"
			    CFrameMon = CFrame.new(530, 430, -5545)
			    CFrameQuest = CFrame.new(610, 405, -5375)
			elseif Lv == 1050 or Lv <=1099 then
			    Mon = "Winter Warrior [Lv. 1050]"
			    NameMon = "Winter Warrior"
			    LvQuest = 2
			    NameQuest = "SnowMountainQuest"
			    CFrameMon = CFrame.new(1405, 465, -5200)
			    CFrameQuest = CFrame.new(610, 405, -5375)
			elseif Lv == 1100 or Lv <=1124 then
			    Mon = "Lab Subordinate [Lv. 1100]"
			    NameMon = "Lab Subordinate"
			    LvQuest = 1
			    NameQuest = "IceSideQuest"
			    CFrameMon = CFrame.new(-5720, 65, -4785)
			    CFrameQuest = CFrame.new(-6060, 15, -4900)
			elseif Lv == 1125 or Lv <=1174 then
			    Mon = "Horned Warrior [Lv. 1125]"
			    NameMon = "Horned Warrior"
			    LvQuest = 2
			    NameQuest = "IceSideQuest"
			    CFrameMon = CFrame.new(-6295, 90, -5500)
			    CFrameQuest = CFrame.new(-6060, 15, -4900)
			elseif Lv == 1175 or Lv <=1199 then
			    Mon = "Magma Ninja [Lv. 1175]"
			    NameMon = "Magma Ninja"
			    LvQuest = 1
			    NameQuest = "FireSideQuest"
			    CFrameMon = CFrame.new(-5460, 130, -5835)
			    CFrameQuest = CFrame.new(-5430, 15, -5300)
			elseif Lv == 1200 or Lv <=1249 then
			    Mon = "Lava Pirate [Lv. 1200]"
			    NameMon = "Lava Pirate"
			    LvQuest = 2
			    NameQuest = "FireSideQuest"
			    CFrameMon = CFrame.new(-5250, 55, -4775)
			    CFrameQuest = CFrame.new(-5430, 15, -5300)
			elseif Lv == 1250 or Lv <=1274 then
			    Mon = "Ship Deckhand [Lv. 1250]"
			    NameMon = "Ship Deckhand"
			    LvQuest = 1
			    NameQuest = "ShipQuest1"
			    CFrameMon = CFrame.new(915, 180, 33245)
			    CFrameQuest = CFrame.new(1040, 125, 32910)
			    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(925, 125, 32850))
			    end
			elseif Lv == 1275 or Lv <=1299 then
			    Mon = "Ship Engineer [Lv. 1275]"
			    NameMon = "Ship Engineer"
			    LvQuest = 2
			    NameQuest = "ShipQuest1"
			    CFrameMon = CFrame.new(945, 45, 32795)
			    CFrameQuest = CFrame.new(1040, 125, 32910)
			    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(925, 125, 32850))
			    end
			elseif Lv == 1300 or Lv <=1324 then
			    Mon = "Ship Steward [Lv. 1300]"
			    NameMon = "Ship Steward"
			    LvQuest = 1
			    NameQuest = "ShipQuest2"
			    CFrameMon = CFrame.new(915, 135, 33535)
			    CFrameQuest = CFrame.new(970, 125, 33245)
			    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(925, 125, 32850))
			    end
			elseif Lv == 1325 or Lv <=1349 then
			    Mon = "Ship Officer [Lv. 1325]"
			    NameMon = "Ship Officer"
			    LvQuest = 2
			    NameQuest = "ShipQuest2"
			    CFrameMon = CFrame.new(1180, 33295, 0)
			    CFrameQuest = CFrame.new(970, 125, 33245)
			    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(925, 125, 32850))
			    end
			elseif Lv == 1350 or Lv <=1374 then
			    Mon = "Arctic Warrior [Lv. 1350]"
			    NameMon = "Arctic Warrior"
			    LvQuest = 1
			    NameQuest = "FrostQuest"
			    CFrameMon = CFrame.new(5935, 75, -64705)
			    CFrameQuest = CFrame.new(5670, 30, -6485)
			    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6510, 90, -130))
			    end
			elseif Lv == 1375 or Lv <=1424 then
			    Mon = "Snow Lurker [Lv. 1375]"
			    NameMon = "Snow Lurker"
			    LvQuest = 2
			    NameQuest = "FrostQuest"
			    CFrameMon = CFrame.new(5630, 60, -6620)
			    CFrameQuest = CFrame.new(5670, 30, -6485)
			elseif Lv == 1425 or Lv <=1449 then
			    Mon = "Sea Soldier [Lv. 1425]"
			    NameMon = "Sea Soldier"
			    LvQuest = 1
			    NameQuest = "ForgottenQuest"
			    CFrameMon = CFrame.new(-3185, 60, -9665)
			    CFrameQuest = CFrame.new(-3055, 235, -10145)
			elseif Lv == 1450 or Lv <=1500 then
			    Mon = "Water Fighter [Lv. 1450]"
			    NameMon = "Water Fighter"
			    LvQuest = 2
			    NameQuest = "ForgottenQuest"
			    CFrameMon = CFrame.new(-3260, 300, -10550)
			    CFrameQuest = CFrame.new(-3055, 235, -10145)
			end
		end


function click()
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function TP(P)
    local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 50 then
        Speed = 50000
    elseif Distance < 100 then
        Speed = 25000
    elseif Distance < 150 then 
        Speed = 15000
    elseif Distance < 175 then
        Speed = 10000
    elseif Distance < 200 then
        Speed = 2500
    elseif Distance < 250 then
        Speed = 2000
    elseif Distance < 300 then
        Speed = 1000
    elseif Distance < 400 then
        Speed = 500
    elseif Distance < 425 then
        Speed = 450
    elseif Distance < 450 then
        Speed = 400
    elseif Distance < 475 then
        Speed = 375
    elseif Distance < 500 then
        Speed = 365
    elseif Distance < 1000 then
        Speed = 300
    elseif Distance >= 1000 then
        Speed = 300 
    end
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
   tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
   tween:Play()
end

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AutoFarm or _G.AutoNewWorld or _G.Noclip then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                setfflag("HumanoidParallelRemoveNoPhysics", "False")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end
    end)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Bring Mob
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

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 450 then 
			return true
		end
		return false
	end
end

spawn(function()
	while wait() do
		pcall(function()
			if _G.Bringmob then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Transparency = 1
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
						end
					end
				end
			end
		end)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Fast Attack
_G.FastAttackType = "Fast"

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

coroutine.wrap(function()
   while wait() do
       local ac = CombatFrameworkR.activeController
         if ac and ac.equipped then
            if _G.FastAttack then
                AttackFunction()
                if _G.FastAttackType == "Fast" then
                    if tick() - cooldownfastattack < wait() then wait() cooldownfastattack = tick() end
                elseif _G.FastAttackType == "Normal" then
                    if tick() - cooldownfastattack > 1.5 then wait(1) cooldownfastattack = tick() end
                elseif _G.FastAttackType == "Safety" then
                    if tick() - cooldownfastattack > 2.3 then wait(2.5) cooldownfastattack = tick() end
                end
            elseif _G.FastAttack == false then
              else
                 CombatFrameworkR.activeController:Destroy()
                  if ac.hitboxMagnitude ~= 55 then
                     ac.hitboxMagnitude = 55
                  end
                 ac:attack()
             end
         end
     end
end)()

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Auto Haki

function Haki()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- // Only allow to be executed once
assert(not getgenv().AntiKickExecuted, "Anti Kick is already running!")

-- // Services
local Players = game:GetService("Players")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local KickAttemptFormat = "Kick attempted for: %s"
local BlockedMethods = {"Kick", "kick"}

-- // What to do when Kick detected
local function kickDetected(Player, Reason)
    warn(KickAttemptFormat:format(Reason))
end

-- // Index hook
hookfunction(LocalPlayer.Kick, kickDetected)

-- // Namecall hook
local __namecall
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    -- // Vars
    local args = {...}
    local method = getnamecallmethod()
    
    -- // Check if kick attempt
    if (self == LocalPlayer and table.find(BlockedMethods, method)) then
        -- // Alert
        kickDetected(self, args[1])
        
        -- // Cancel it
        return
    end
    
    -- // Return - so everything else that uses namecall does not break
    return __namecall(self, ...)
end)

getgenv().AntiKickExecuted = true
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local Window = Library:CreateWindow({

    Title = 'Sun X Hub',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Main')
LeftGroupBox:AddToggle('Auto Farm', { Text = 'Auto Farm', Default = false, Callback = function(t) 
    _G.AutoFarm = t
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarm then
                    CheckQuest()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        TP(CFrameQuest)
                        if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest,LvQuest)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        TP(CFrameMon)
                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == NameMon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        Haki()
                                        EquipWeapon()
                                        PosMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        _G.Bringmob = true
                                        _G.FastAttack = true
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                    until not _G.AutoFarmLevel or v.Humanoid.Health <= 0 or not v.Parent
                                    _G.Bringmob = false
                                    _G.FastAttack = false
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
end})

LeftGroupBox:AddToggle('Auto New World', {Text = 'Auto New World',Default = false, Callback = function(t)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoNewWorld then
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                        if _G.AutoFarm then
                            _G.AutoFarm = false
                        end
                        if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                            Equip("Key")
                            repeat wait() 
                            TP(CFrame.new(1350, 35, -1325)) until (CFrame.new(1345, 35, -1325).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNewWorld
                            wait(3)
                        elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            if _G.SelectWeapon == "Melee" then
                                                Melee()
                                            elseif _G.SelectWeapon == "Sword" then
                                                Sword()
                                            end
                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            _G.AutoHaki = true
                                            _G.FastAttack = true
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        until v.Humanoid.Health <= 0 or not v.Parent
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                end
                            else
                                TP(CFrame.new(1345, 35, -1325))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                end
            end)
        end
    end)
end})

local TabBox = Tabs.Main:AddRightTabbox('Setting')

local Tab1 = TabBox:AddTab('Settings')

Weapon = {
	"Melee",
	"Sword",
	"Blox Fruit"
}

Tab1:AddDropdown('MyDropdown', {
    Values = { 'Melee', 'Sword', 'Blox Fruit' },
    Item = Weapon,
    Default = 1,
    Multi = false,
    Text = 'Select Combat / Weapons',
    Callback = function(Value)
    _G.SelectWeapon = Value
    end
})

-- Equip
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

function Fruit()
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

local Tab2 = TabBox:AddTab('Stats')

Tab2:AddToggle('Tab2Toggle', { Text = 'Melee',Default = false,Callback = function(t) 
    _G.Melee = t
    while _G.Melee do wait(.1)
    pcall(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",Point)
    end)
    end
    end
});

Tab2:AddToggle('Tab2Toggle', { Text = 'Defense',Default = false,Callback = function(t) 
    _G.Defense = t
    while _G.Defense do wait(.1)
    pcall(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",Point)
    end)
    end
    end
});

Tab2:AddToggle('Tab2Toggle', { Text = 'Sword',Default = false,Callback = function(t) 
    _G.Sword = t
    while _G.Sword do wait(.1)
    pcall(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",Point)
    end)
    end
    end
});

Tab2:AddToggle('Tab2Toggle', { Text = 'Gun',Default = false,Callback = function(t) 
    _G.Gun = t
    while _G.Gun do wait(.1)
    pcall(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",Point)
    end)
    end
    end
});

Tab2:AddToggle('Tab2Toggle', { Text = 'Blox Fruit',Default = false,Callback = function(t) 
    _G.Fruit = t
    while _G.Fruit do wait(.1)
    pcall(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",Point)
    end)
    end
    end
});

-- UI Settings

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RigCtrl', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()
