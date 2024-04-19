			for _ = 1,5 do
		wait()
		game:GetService("ReplicatedStorage").Slam:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").KCRSlam:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
                end
function trans1()
    for i,v in pairs(game.Players.LocalPlayer.Character.Stand:GetDescendants()) do
        if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Texture") or v:IsA("Decal") then
        if v.Name == "StandHumanoidRootPart" then
        game.ReplicatedStorage.Transparency:FireServer(v,1)
        else
        game.ReplicatedStorage.Transparency:FireServer(v,1)
        end
        end
    end
end

function trans0()
    for i,v in pairs(game.Players.LocalPlayer.Character.Stand:GetDescendants()) do
        if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Texture") or v:IsA("Decal") then
        if v.Name == "StandHumanoidRootPart" then
        game.ReplicatedStorage.Transparency:FireServer(v,1)
        else
        game.ReplicatedStorage.Transparency:FireServer(v,0)
        end
        end
    end
end


--Events
local replicatedstorage = game:GetService("ReplicatedStorage")
local standevent = replicatedstorage.Stand
local damageevent = replicatedstorage.Damage
local damageevent2 = replicatedstorage.Damage16
local healevent = replicatedstorage.Heal5
local blockevent = replicatedstorage.Block
local transparencyevent = replicatedstorage.Transparency
local strongpunchevent = replicatedstorage.StrongPunch
local dodgeevent = replicatedstorage.Dodge
local anchorevent = replicatedstorage.Anchor
local trailevent = replicatedstorage.Trail
local jumpevent = replicatedstorage.Jump
local tauntevent = replicatedstorage.Taunt
local bearingshotevent = replicatedstorage.BearingShot
local bearingshotevent2 = replicatedstorage.BearingShot2
local fixevent = replicatedstorage.Fix
local wallevent = replicatedstorage.Wall
local velocityevent = replicatedstorage.Velocity
local poseevent = replicatedstorage.Menacing
local knockevent = replicatedstorage.Knock
local knockclientevent = replicatedstorage.KnockClient
local knockedevent = replicatedstorage.Knocked
local getupevent = replicatedstorage.GetUp
local berserkclientevent = replicatedstorage.BerserkClient
local plr = game:GetService("Players").LocalPlayer
repeat
	wait()
until plr.Character and plr.Character.Humanoid
local chr = plr.Character
local human = chr.Humanoid
local hrp = chr.HumanoidRootPart
mouse = plr:GetMouse()
cam = workspace.CurrentCamera
standevent:FireServer("CrazyDiamondStand", 25, 200)
local activu = false
local appeared = false
local timestopper = false
local disabled = chr:WaitForChild("Disabled")
local pt = 0
local stand = chr:WaitForChild("Stand")
local rot = stand:WaitForChild("StandHumanoidRootPart")
local hed = stand:WaitForChild("Stand Head")
local face = hed:WaitForChild("face")
local tors = stand:WaitForChild("Stand Torso")
local rarm = stand:WaitForChild("Stand Right Arm")
local larm = stand:WaitForChild("Stand Left Arm")
local rleg = stand:WaitForChild("Stand Right Leg"):Destroy()
local lleg = stand:WaitForChild("Stand Left Leg"):Destroy()
local llleg = stand:WaitForChild("LegArmorLeft"):Destroy()
local ldleg = stand:WaitForChild("LegArmorDown"):Destroy()
local luleg = stand:WaitForChild("LegArmorUpper"):Destroy()
local head = chr.Head
local ntorso = chr.Torso
local rightarm = chr["Right Arm"]
local leftarm = chr["Left Arm"]
local rightleg = chr["Right Leg"]
local leftleg = chr["Left Leg"]
local nothinganim = human:LoadAnimation(rot.Nothing)
local idleanim = human:LoadAnimation(rot.Idle)
local barrageanim = human:LoadAnimation(rot.PunchBarrage)
local groundbarrageanim = human:LoadAnimation(rot.GroundBarrage)
local blockanim = human:LoadAnimation(rot.Block)
local leftpunchanim = human:LoadAnimation(rot.LeftPunch)
local rightpunchanim = human:LoadAnimation(rot.RightPunch)
local strongpunchanim = human:LoadAnimation(rot.StrongPunch)
local shootanim = human:LoadAnimation(rot.Shoot)
local standjumpanim = human:LoadAnimation(rot.StandJump)
local pose1 = human:LoadAnimation(rot.Pose1)
local pose2 = human:LoadAnimation(rot.Pose2)
local attackpose = human:LoadAnimation(rot.AttackPose)
local rollanim = human:LoadAnimation(rot.Roll)
local dodgesfx = rot.Dodge
local blocksfx = rot.Guard
local punchsfx = rot.Punch
local heavypunchsfx = rot.HeavyPunch
local shootsfx = rot.Fire
local rushsfx = rot.Rush
local standappearsfx = rot.StandAppear
local healsfx = rot.Heal
local jumpsfx = rot.StandJumpSFX
local standappearcooldown = false
function standappear(stand)
	if activu == true then
		return
	end
	if standappearcooldown == true then
		return
	end
	standappearcooldown = true
	if appeared == false then
		appeared = true
		nothinganim:Stop()
		idleanim:Play(0.2, 1, 1)
		standappearsfx:Play()
		for _, n in pairs(stand:GetChildren()) do
			coroutine.resume(coroutine.create(function()
				for _ = 1, 5 do
					if n ~= rot and n.ClassName ~= "Sound" then
						wait()
						transparencyevent:FireServer(n, n.Transparency - 0.2)
						transparencyevent:FireServer(face, n.Transparency - 0.2)
					end
				end
				if n ~= rot then
					transparencyevent:FireServer(n, 0)
					transparencyevent:FireServer(face, 0)
				end
			end))
		end
	elseif appeared == true then
		appeared = false
		idleanim:Stop()
		nothinganim:Play(0.2, 1, 1)
		for _, n in pairs(stand:GetChildren()) do
			coroutine.resume(coroutine.create(function()
				for _ = 1, 5 do
					if n ~= rot and n.ClassName ~= "Sound" then
						wait()
						transparencyevent:FireServer(n, n.Transparency + 0.2)
						transparencyevent:FireServer(face, n.Transparency + 0.2)
					end
				end
				if n ~= rot then
					transparencyevent:FireServer(n, 1)
					transparencyevent:FireServer(face, 1)
				end
			end))
		end
	end
end
local healmode = false
function heal()
	if activu == true then
		return
	end
	if appeared == false then
		return
	end
	if healmode == false then
		fixevent:FireServer(true)
		healmode = true
		healsfx:Play()
	elseif healmode == true then
		fixevent:FireServer(false)
		healmode = false
	end
end
local tauntcd = false
function taunt()
	if tauntcd == true then return end
	tauntcd = true
	local randomline = math.random(1)
	if randomline == 1 then
		tauntevent:FireServer(head, "rbxassetid://3516844345", 3, 1, 0)
		wait (5)
		tauntcd = false
	end
end
local EHMMM = 0
local barragecooldown = false
function barrage()
	if activu == true then
		return
	end
	if barragecooldown == true then
		return
	end
	if appeared == false then
		return
	end
  trans0()
	activu = true
	barragecooldown = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
		if key == "e" then
			bep = false
		end
	end)
	trailevent:FireServer(rarm.Trail, true)
	trailevent:FireServer(larm.Trail, true)
	barrageanim:Play(0.1, 1, 1.5)
	rushsfx:Play()
	attackpose:Play()
	human.JumpPower = 0
	repeat
		EHMMM = EHMMM + 1
		if healmode == false then
			hito(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 25, 0.1, 0.25, rot.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50)
			hito(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 25, 0.1, 0.25, rot.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50)
		elseif healmode == true then
			healo(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 50, 0.1, 0, nil, "rbxassetid://245751634", 0.075, Color3.new(255, 255, 0), "rbxassetid://2914074987", math.random(9, 11) / 5, math.random(9, 11) / 50)
			healo(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 50, 0.1, 0, nil, "rbxassetid://245751634", 0.075, Color3.new(255, 255, 0), "rbxassetid://2914074987", math.random(9, 11) / 5, math.random(9, 11) / 50)
		end
		wait(0.1)
	until bep == false or disabled.Value == true or EHMMM >= 40
  trans1()
	EHMMM = 0
	rushsfx:Stop()
	attackpose:Stop()
	human.JumpPower = 50
	barrageanim:Stop(0.1)
	trailevent:FireServer(rarm.Trail, false)
	trailevent:FireServer(larm.Trail, false)
	activu = false
	wait(1)
	barragecooldown = false
	wait(2.5)
	standappearcooldown = false
end
function block()
	if activu == true then
		return
	end
	if appeared == false then
		return
	end
  trans0()
	activu = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
		if key == "x" then
			bep = false
		end
	end)
	blockanim:Play(0.1, 1, 1)
	blockevent:FireServer(true)
	blocksfx:Play()
	attackpose:Play()
	human.JumpPower = 0
	repeat
		wait()
	until bep == false
  trans1()
	blockevent:FireServer(false)
	blockanim:Stop(0.1)
	attackpose:Stop()
	human.JumpPower = 50
	activu = false
end
local leftorright = false
function punch()
	if activu == true then
		return
	end
	if appeared == false then
		return
	end
  trans0()
	activu = true
	punchsfx:Play()
	attackpose:Play()
	human.JumpPower = 0
	if leftorright == false then
		leftorright = true
		rightpunchanim:Play(0.1, 1, 1)
		trailevent:FireServer(rarm.Trail, true)
		wait(0.2)
		coroutine.resume(coroutine.create(function()
			for _ = 1, 5 do
				wait()
				if healmode == false then
					hito(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 20, 0.5, 0.25, rot.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25)
				elseif healmode == true then
					healo(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 20, 0.5, 0, nil, "rbxassetid://245751634", 0.075, Color3.new(255, 255, 0), "rbxassetid://2914074987", math.random(9, 11) / 5, math.random(9, 11) / 25)
				end
			end
		end))
	elseif leftorright == true then
		leftorright = false
		leftpunchanim:Play(0.1, 1, 1)
		trailevent:FireServer(larm.Trail, true)
		wait(0.2)
		coroutine.resume(coroutine.create(function()
			for _ = 1, 5 do
				wait()
				if healmode == false then
					hito(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 40, 0.5, 0.25, rot.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25)
				elseif healmode == true then
					healo(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 40, 0.5, 0, nil, "rbxassetid://245751634", 0.075, Color3.new(255, 255, 0), "rbxassetid://2914074987", math.random(9, 11) / 5, math.random(9, 11) / 25)
				end
			end
		end))
	end
	wait(0.3)
  trans1()
	attackpose:Stop()
	human.JumpPower = 50
	activu = false
	trailevent:FireServer(rarm.Trail, false)
	trailevent:FireServer(larm.Trail, false)
end
local strongpunchcooldown = false
function strongpunch()
	if activu == true then
		return
	end
	if strongpunchcooldown == true then
		return
	end
	if appeared == false then
		return
	end
  trans0()
	activu = true
	strongpunchcooldown = true
	attackpose:Play()
	human.JumpPower = 0
	strongpunchanim:Play(0.1, 1, 1)
	trailevent:FireServer(rarm.Trail, true)
	wait(0.5)
	heavypunchsfx:Play()
	if healmode == false then
		strongpunchevent:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Institutional white"))
	elseif healmode == true then
		strongpunchevent:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("New Yeller"))
	end
	coroutine.resume(coroutine.create(function()
		for _ = 1, 15 do
			wait()
			if healmode == false then
				hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 70, 0.75, 0.25, rot.CFrame.lookVector * 50, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 10)
			elseif healmode == true then
				healo(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 100, 0.75, 0, nil, "rbxassetid://245751634", 0.075, Color3.new(255, 255, 0), "rbxassetid://2914074987", math.random(9, 11) / 5, math.random(9, 11) / 10)
			end
		end
	end))
	wait(0.65)
  trans1()
	trailevent:FireServer(rarm.Trail, false)
	attackpose:Stop()
	human.JumpPower = 50
	activu = false
	wait(7.5)
	strongpunchcooldown = false
end
local bearingcooldown = false
function bearingshot()
	if activu == true then
		return
	end
	if bearingcooldown == true then
		return
	end
	if appeared == false then
		return
	end
  trans0()
	bearingcooldown = true
	activu = true
	shootanim:Play(0.1, 1, 1)
	human.JumpPower = 0
	if healmode == false then
		bearingshotevent:FireServer()
	elseif healmode == true then
		bearingshotevent2:FireServer()
	end
	wait(0.5)
	shootsfx:Play()
	wait(0.5)
	activu = false
  trans1()
	human.JumpPower = 50
	wait(4)
	bearingcooldown = false
end
local movementcooldown = false
function movement()
	if activu == true then
		return
	end
	if movementcooldown == true then
		return
	end
	if appeared == false then
		return
	end
	movementcooldown = true
	activu = true
	standjumpanim:Play(0.1, 1, 1)
	jumpsfx:Play()
	jumpevent:FireServer(BrickColor.new("Institutional white"))
	local Bod = Instance.new("BodyPosition", hrp)
	Bod.maxForce = Vector3.new(100000, 100000, 100000)
	Bod.Position = hrp.CFrame * CFrame.new(0, 50, -75).p
	game.Debris:AddItem(Bod, 1)
	wait(1)
	activu = false
	wait(14)
	movementcooldown = false
end
local posing = false
function posefunc()
	if activu == false and posing == false then
	if appeared == false then
		return
	end
  trans0()
	if posing == false then do
	activu = true
    pose1:Play(0.1, 1, 1)
spawn(function()
        wait(1.5)
        pose1:Stop()
        pose2:Play()
    end)
	human.WalkSpeed = 0
	human.JumpPower = 0
	wait(1.5)
	posing = true
	poseevent:FireServer(true)
	end
	end
	elseif posing == true then
	pose1:Stop(0.3)
	pose2:Stop(0.3)
	if disabled.Value == false then
	human.WalkSpeed = 16
	human.JumpPower = 50
	elseif disabled.Value == true then
	human.WalkSpeed = 4
	human.JumpPower = 10	
	end
	activu = false
	posing = false
  trans1()
	poseevent:FireServer(false)
	end
end
local barriercooldown = false
function barrier()
	if activu == true then
		return
	end
	if barriercooldown == true then
		return
	end
	if appeared == false then
		return
	end
  trans0()
	barriercooldown = true
	activu = true
	human.WalkSpeed = 0
	human.JumpPower = 0
	wallevent:FireServer()
	groundbarrageanim:Play()
	rushsfx:Play()
	wait(1)
  trans1()
	groundbarrageanim:Stop()
	rushsfx:Stop()
	activu = false
	if disabled.Value == false then
		human.WalkSpeed = 16
		human.JumpPower = 50
	elseif disabled.Value == true then
		human.WalkSpeed = 4
		human.JumpPower = 10
	end
	wait(1)
	barriercooldown = false
end
local reversestrongpunchcooldown = false
function reversestrongpunch()
	if activu == true then
		return
	end
	if reversestrongpunchcooldown == true then
		return
	end
	if appeared == false then
		return
	end
  trans0()
	activu = true
	reversestrongpunchcooldown = true
	attackpose:Play()
	human.JumpPower = 0
	strongpunchanim:Play(0.1, 1, 1)
	trailevent:FireServer(rarm.Trail, true)
	wait(0.5)
	heavypunchsfx:Play()
	strongpunchevent:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Institutional white"))
	coroutine.resume(coroutine.create(function()
		for _ = 1, 15 do
			wait()
			hito2(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 60, 0.75, 0.5, rot.CFrame.lookVector * 50, rot.CFrame.lookVector * -50)
		end
	end))
	wait(0.65)
  trans1()
	trailevent:FireServer(rarm.Trail, false)
	attackpose:Stop()
	human.JumpPower = 50
	activu = false
	wait(2)
	reversestrongpunchcooldown = false
end
dodgecooldown = false
function dodge()
	if activu == true then
		return
	end
	if dodgecooldown == true then
		return
	end
	activu = true
	dodgecooldown = true
	rollanim:Play()
	dodgesfx:Play()
	dodgeevent:FireServer()
	local boopyve = Instance.new("BodyVelocity")
	boopyve.MaxForce = Vector3.new(100000, 0, 100000)
	boopyve.P = math.huge
	boopyve.Velocity = hrp.CFrame.lookVector * 50
	boopyve.Parent = chr.HumanoidRootPart
	game.Debris:AddItem(boopyve, 0.25)
	wait(0.4)
	activu = false
	wait(3)
	dodgecooldown = false
end
mouse.Button1Down:connect(function()
	if ntorso.Anchored == true then
		return
	end
	if disabled.Value == true then
		return
	end
	punch()
end)
mouse.KeyDown:connect(function(key)
	if ntorso.Anchored == true then
		return
	end
	if disabled.Value == true then
		return
	end
	if key == "q" then
		standappear(stand)
	end
	if key == "e" then
		barrage()
	end
	if key == "r" then
		strongpunch()
	end

	if key == "y" then
		if healmode == false then
			reversestrongpunch()
		else
			barrier()
		end
	end
	if key == "f" then
		heal()
	end
	if key == "x" then
		block()
	end
	if key == "z" then
		movement()
	end
	if key == "t" then
		bearingshot()
	end
	if key == "c" then
		dodge()
	end
	if key == "n" then
		taunt()
	end
	if key == "g" then
		posefunc()
	end
end)
function hito(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
	if disabled.Value == true then
		return
	end
	for _, guy in pairs(workspace:GetChildren()) do
		if partoz.Anchored == true then
			return
		end
		if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
		if guy:FindFirstChild("Stand") and guy.Stand:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy.Stand:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
	end
end
function hito2(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, bodyfdire2)
	if disabled.Value == true then
		return
	end
	for _, guy in pairs(workspace:GetChildren()) do
		if partoz.Anchored == true then
			return
		end
		if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, bodyfdire2)
				knockevent:FireServer(humz)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
		if guy:FindFirstChild("Stand") and guy.Stand:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy.Stand:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, bodyfdire2)
				knockevent:FireServer(humz)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
	end
end
function hito3(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
	if disabled.Value == true then
		return
	end
	for _, guy in pairs(workspace:GetChildren()) do
		if partoz.Anchored == true then
			return
		end
		if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
				knockevent:FireServer(humz)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
		if guy:FindFirstChild("Stand") and guy.Stand:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy.Stand:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
				knockevent:FireServer(humz)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
	end
end
function healo(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
	if disabled.Value == true then
		return
	end
	for _, guy in pairs(workspace:GetChildren()) do
		if partoz.Anchored == true then
			return
		end
		if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				healevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
		if guy:FindFirstChild("Stand") and guy.Stand:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy.Stand:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			if partoz.Anchored then
				return
			end
			do
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				healevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			end
		end
	end
end
game.Lighting.TS.Changed:Connect(function()
	if game.Lighting.TS.Value == true then
		anchorevent:FireServer(tors, true)
		anchorevent:FireServer(rarm, true)
		anchorevent:FireServer(larm, true)
		anchorevent:FireServer(rleg, true)
		anchorevent:FireServer(lleg, true)
		anchorevent:FireServer(hed, true)
		anchorevent:FireServer(ntorso, true)
		anchorevent:FireServer(rightarm, true)
		anchorevent:FireServer(leftarm, true)
		anchorevent:FireServer(rightleg, true)
		anchorevent:FireServer(leftleg, true)
		anchorevent:FireServer(head, true)
	elseif game.Lighting.TS.Value == false then
		anchorevent:FireServer(tors, false)
		anchorevent:FireServer(rarm, false)
		anchorevent:FireServer(larm, false)
		anchorevent:FireServer(rleg, false)
		anchorevent:FireServer(lleg, false)
		anchorevent:FireServer(hed, false)
		anchorevent:FireServer(ntorso, false)
		anchorevent:FireServer(rightarm, false)
		anchorevent:FireServer(leftarm, false)
		anchorevent:FireServer(rightleg, false)
		anchorevent:FireServer(leftleg, false)
		anchorevent:FireServer(head, false)
	end
end)
if game.Lighting.TS.Value == true then
	anchorevent:FireServer(tors, true)
	anchorevent:FireServer(rarm, true)
	anchorevent:FireServer(larm, true)
	anchorevent:FireServer(rleg, true)
	anchorevent:FireServer(lleg, true)
	anchorevent:FireServer(hed, true)
	anchorevent:FireServer(ntorso, true)
	anchorevent:FireServer(rightarm, true)
	anchorevent:FireServer(leftarm, true)
	anchorevent:FireServer(rightleg, true)
	anchorevent:FireServer(leftleg, true)
	anchorevent:FireServer(head, true)
end
berserkclientevent.OnClientEvent:connect(function()
	game.Lighting.Ambient = Color3.fromRGB(0, 0, 122)
	game.Lighting.Berserk.Enabled = true
	human.WalkSpeed = 4
	human:SetStateEnabled(3, false)
	wait(2.5)
	human.WalkSpeed = 16
	human:SetStateEnabled(3, true)
	game.Lighting.Ambient = Color3.fromRGB(150, 150, 150)
	game.Lighting.Berserk.Enabled = false
end)
local deathevent = replicatedstorage.Death
human.HealthChanged:connect(function()
	if human.Health < 1 then
		human:SetStateEnabled(3, false)
		human:SetStateEnabled(15, false)
		deathevent:FireServer(true)
	end
end)
knockclientevent.OnClientEvent:connect(function(enemyplr)
	if chr.Block.Value == true then
		return
	end
	
	tauntevent.OnClientEvent:Connect(function()
	tauntcd = false
end)
	
	
	
	
	
	knockedevent:FireServer()
	human:SetStateEnabled(3, false)
	wait(1.25)
	if human.Health >= 1 then
		getupevent:FireServer()
		human:SetStateEnabled(3, true)
	end
end)
