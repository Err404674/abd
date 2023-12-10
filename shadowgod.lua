			for _ = 1,12 do
		wait()
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").Damage3EldritchNEW:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "",1, 1)
		game:GetService("ReplicatedStorage").Damage3EldritchNEW:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "",1, 1)
		game:GetService("ReplicatedStorage").RTZEffect:FireServer()
	    game:GetService("ReplicatedStorage").RTZ:FireServer()
	    game:GetService("ReplicatedStorage").RTZClient:FireServer()
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
--Abilities:
--M1: commit die punch. using the 0.1% of power, you do 10k dmg
--E: everything barrage. with the power of every barrage you do 95 dmg shattering people to pieces
--R: does 1 100k dmg punch with a high knoccback
--T: half developed banish. does 100k dmg with the same knockback as R
--Y: self heal. does a good amount of healing
--H: counter + rtz at the same time. does 100 dmg
--Z: no cd jump
--C: no cd roll
--B: kick.
--F: timestop. not infinite but can kill anyone instantly

--Passives
--god - due to your power, you can one shot almost anything.
--0.1% - you gain alot of health making it hard to kill you
--i can move even for 2 seconds - get the ability to move in timestop for 2 seconds
--code changer - you are so powerful you changed the stands name in the menu to pot platinum omg so real!!!111!1!!

--NOTE: execute this on normal bootleg pot (not true) with your stand out, then press Q, or just do it the way u want idc

--Events
local replicatedstorage = game:GetService("ReplicatedStorage")
local standevent = replicatedstorage.Stand game.ReplicatedStorage.BossUberOni:FireServer()
local healevent = replicatedstorage.Heal
local dieevent = replicatedstorage.Damage
local damageevent = replicatedstorage.jspdamage --Damage3EldritchNEW
local damageevent2 = replicatedstorage.Damage3
local damageevent3 = replicatedstorage.Damage4
local rtzdamageevent = replicatedstorage.RTZDamage
local blockevent = replicatedstorage.Block
local timestopevent = replicatedstorage.Timestop
local untimestopevent = replicatedstorage.Untimestop
local transparencyevent = replicatedstorage.Transparency
local strongpunchevent = replicatedstorage.StrongPunch
local anchorevent = replicatedstorage.Anchor
local trailevent = replicatedstorage.Trail
local jumpevent = replicatedstorage.Jump
local rtzevent = replicatedstorage.RTZ
local rtzclientevent = replicatedstorage.RTZClient
local poseevent = replicatedstorage.Menacing
local tevisionevent = replicatedstorage.TEVision
local knockevent = replicatedstorage.KnockAdvanced
local knockclientevent = replicatedstorage.KnockClient
local knockedevent = replicatedstorage.Knocked
local getupevent = replicatedstorage.GetUp
local berserkclientevent = replicatedstorage.BerserkClient
local dodgeevent = replicatedstorage.Dodge

local plr = game:GetService("Players").LocalPlayer
repeat
	wait()
until plr.Character and plr.Character.Humanoid
local chr = plr.Character
local human = chr.Humanoid
local hrp = chr.HumanoidRootPart
mouse = plr:GetMouse()
cam = workspace.CurrentCamera

standevent:FireServer("PotPlatinumStand", 0, 1000000)

--Values
local activu = false
local appeared = false
local disabled = chr:WaitForChild("Disabled")
local timestopper = false
local length = 10000000
playerservice = game:GetService("Players")

local stand = chr:WaitForChild("Stand")
local rot = stand:WaitForChild("StandHumanoidRootPart")
local hed = stand:WaitForChild("Stand Head")
local tors = stand:WaitForChild("Stand Torso")
local rarm = stand:WaitForChild("Stand Right Arm")
local larm = stand:WaitForChild("Stand Left Arm")
local rleg = stand:WaitForChild("Stand Right Leg"):Destroy()
local lleg = stand:WaitForChild("Stand Left Leg"):Destroy()

local head = chr["Head"]
local ntorso = chr["Torso"]
local rightarm = chr["Right Arm"]
local leftarm = chr["Left Arm"]
local rightleg = chr["Right Leg"]
local leftleg = chr["Left Leg"]
--Animation
local nothinganim = human:LoadAnimation(rot.Nothing)
local idleanim = human:LoadAnimation(rot.Idle)
local barrageanim = human:LoadAnimation(rot.PunchBarrage)
local healbarrageanim = human:LoadAnimation(rot.HealBarrage)
local blockanim = human:LoadAnimation(rot.Block)
local leftpunchanim = human:LoadAnimation(rot.LeftPunch)
local rightpunchanim = human:LoadAnimation(rot.RightPunch)
local strongpunchanim = human:LoadAnimation(rot.StrongPunch)
local kickanim = human:LoadAnimation(rot.Kick)
local rtzanim = human:LoadAnimation(rot.RTZ)
local overwriteanim = human:LoadAnimation(rot.Overwrite)
local timestopanim = human:LoadAnimation(rot.TS)
local standjumpanim = human:LoadAnimation(rot.StandJump)
local pose1 = human:LoadAnimation(rot.Pose1)
local pose2 = human:LoadAnimation(rot.Pose2)
local attackpose = human:LoadAnimation(rot.AttackPose)
local rollanim = human:LoadAnimation(rot.Roll)
--Sound
local blocksfx = rot.Guard
local punchsfx = rot.Punch
local heavypunchsfx = rot.HeavyPunch
local rushsfx = rot.Rush
local standappearsfx = rot.StandAppear
local rtzsfx = rot.Zero
local dodgesfx = rot.Dodge

local standappearcooldown = false
function standappear(stand)
	if activu == true then return end
	if standappearcooldown == true then return end
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
	          end
	        end
	        if n ~= rot then
	          transparencyevent:FireServer(n, 0.2)
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
	          end
	        end
	        if n ~= rot then
	          transparencyevent:FireServer(n, 0.2)
	        end
	      end))
		end			
	end	
	wait(2.5)
	standappearcooldown = false	
end
function barrage()
	if activu == true then return end
	if appeared == true then
		return
	end
	trans0()
	activu = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "e" then
	      bep = false
	    end
	end)
	trailevent:FireServer(rarm.Trail, true)
	trailevent:FireServer(larm.Trail, true)	
	barrageanim:Play(0.1, 2, 2)
	rushsfx:Play()
	attackpose:Play(0.1, 2, 2)
	repeat
		wait(0.025)
		hito(rarm, rarm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)
		hito(larm, larm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)	
		hito(rarm, rarm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)
		hito(larm, larm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)	
		hito(rarm, rarm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)
		hito(larm, larm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)	
		hito(rarm, rarm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)
		hito(larm, larm.CFrame * CFrame.new(0, -5, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 95, 0.025, 0.25, rot.CFrame.lookVector * 5, 0.075,"rbxassetid://9116673678", math.random(9, 11) / 10, math.random(9, 11) / 50)	
	until bep == false
	trans1()
	rushsfx:Stop()
	attackpose:Stop(0.1)
	barrageanim:Stop(0.1)
	trailevent:FireServer(rarm.Trail, false)
	trailevent:FireServer(larm.Trail, false)
	activu = false
end
function healbarrage()
	if activu == true then return end
	if appeared == true then
		return
	end
	trans0()
	activu = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "y" then
	      bep = false
	    end
	end)
	trailevent:FireServer(rarm.Trail, true)
	trailevent:FireServer(larm.Trail, true)	
	healbarrageanim:Play(0.1, 1, 4)
	rushsfx:Play()
	attackpose:Play(0.1, 1, 1)
	repeat
		heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
        heal(ntorso.CFrame * CFrame.new(0, 1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)),65,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
		wait(0.025)
	until bep == false
	trans1()
	attackpose:Stop()
	rushsfx:Stop()
	healbarrageanim:Stop(0.1)
	trailevent:FireServer(rarm.Trail, false)
	trailevent:FireServer(larm.Trail, false)
	activu = false
end
local healbarrageotherscooldown = false
function healbarrageothers()
	if activu == true then return end
	if healbarrageotherscooldown == true then return end
	if appeared == false then
		return
	end
	activu = true
	healbarrageotherscooldown = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "b" then
	      bep = false
	    end
	end)
	trailevent:FireServer(rarm.Trail, true)
	trailevent:FireServer(larm.Trail, true)	
	barrageanim:Play(0.1, 1, 1.75)
	human.JumpPower = 0
	attackpose:Play()
	repeat
		EHMMM = EHMMM + 0.5
		healo(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 50, 0.05, 0.25, rot.CFrame.lookVector * 2.5, 0.075,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
		healo(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 50, 0.05, 0.25, rot.CFrame.lookVector * 2.5, 0.075,"rbxassetid://137579113", math.random(9, 11) / 5, math.random(9, 11) / 50)
		wait(0.05)
	until bep == false or disabled.Value == true or EHMMM >= 40 
	EHMMM = 0
	attackpose:Stop()
	human.JumpPower = 50
	barrageanim:Stop(0.1)
	trailevent:FireServer(rarm.Trail, false)
	trailevent:FireServer(larm.Trail, false)
	activu = false
	wait(30)
	healbarrageotherscooldown = false
end
local kickcooldown = false
function kick()
if activu == true then return end
if kickcooldown == true then return end
	if appeared == false then
		return
	end
	activu = true
	kickcooldown = true
	punchsfx:Play()
	kickanim:Play(0.1, 1, 1.35)
	heavypunchsfx:Play()
	trailevent:FireServer(rleg.Trail, true)
	attackpose:Play()
	human.JumpPower = 0
		wait(0.35)
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait()
		hito20(rleg, rleg.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 93, 0.5, 0.25, Vector3.new(0, 40, 0),  0.075,"rbxassetid://137579113", math.random(9, 11) / 10, math.random(9, 11) / 25)
	end
	end))
	wait(0.475)
	trailevent:FireServer(rleg.Trail, false)
	activu = false
	attackpose:Stop()
	human.JumpPower = 50
	wait(5)
	kickcooldown = false
end
function block()
	if activu == true then return end
	if appeared == false then
		return
	end
	activu = true
	attackpose:Play(0.1, 1, 1)
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "x" then
	      bep = false
	    end
	end)
	blockanim:Play(0.1, 1, 1)
	blockevent:FireServer(true)
	blocksfx:Play()
	repeat
		wait()
	until bep == false
	blockevent:FireServer(false)
	blockanim:Stop(0.1, 1, 1)
	activu = false
	attackpose:Stop(0.1)
end
local leftorright = false
function punch()
if activu == true then return end
	if appeared == false then
		return
	end
	trans0()
	activu = true
	punchsfx:Play()
	attackpose:Play()
	if leftorright == false then
		leftorright = true
		rightpunchanim:Play(0.1, 1, 1)
		trailevent:FireServer(rarm.Trail, true)
		wait(0.2)
		coroutine.resume(coroutine.create(function()
		for _ = 1, 5 do
		wait()
		hito2(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 10000, 0.5, 0.25, rot.CFrame.lookVector * 10, 0.075,"rbxassetid://137579113", math.random(9, 11) / 10, math.random(9, 11) / 25)
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
		hito2(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 10000, 0.5, 0.25, rot.CFrame.lookVector * 10, 0.075,"rbxassetid://137579113", math.random(9, 11) / 10, math.random(9, 11) / 25)
		end
		end))
	end
	wait(0.3)
	trans1()
	attackpose:Stop()
	activu = false
	trailevent:FireServer(rarm.Trail, false)
	trailevent:FireServer(larm.Trail, false)
end
function strongpunch()
if activu == true then return end
	if appeared == true then
		return
	end
	trans0()
	activu = true
	attackpose:Play(0.1, 1, 1)
	heavypunchsfx:Play()
	strongpunchanim:Play(0.1, 1, 2)
	trailevent:FireServer(rarm.Trail, true)
		wait(0.25)
	strongpunchevent:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Institutional white"))
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait()
		hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 100000, 0.75, 0.25, rot.CFrame.lookVector * 300, 0.25,"rbxassetid://5711265448", math.random(9, 11) / 10, math.random(9, 11) / 10)
	end
	end))
	wait(0.325)
	trans1()
	trailevent:FireServer(rarm.Trail, false)
	activu = false
	attackpose:Stop(0.1)
end	
function overwrite()
if activu == true then return end
	if appeared == true then
		return
	end
	trans0()
	attackpose:Play(0.1, 1, 1)
	activu = true
	overwriteanim:Play(0.1, 1, 2)
	trailevent:FireServer(rarm.Trail, true)
	wait(0.65)
	heavypunchsfx:Play()
	strongpunchevent:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Bright blue"))
	strongpunchevent:FireServer(Vector3.new(2, 1, 2), Vector3.new(0.6, 0.2, 0.6), BrickColor.new("Bright blue"))
	strongpunchevent:FireServer(Vector3.new(4, 1.5, 4), Vector3.new(0.9, 0.25, 0.9), BrickColor.new("Bright blue"))
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait()
		hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 100000, 0.75, 0.25, rot.CFrame.lookVector * 300, 0.25,"rbxassetid://5711265448", math.random(9, 11) / 10, math.random(9, 11) / 10)
        hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 100000, 0.75, 0.25, rot.CFrame.lookVector * 300, 0.25,"rbxassetid://5711265448", math.random(9, 11) / 10, math.random(9, 11) / 10)
        hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 100000, 0.75, 0.25, rot.CFrame.lookVector * 300, 0.25,"rbxassetid://5711265448", math.random(9, 11) / 10, math.random(9, 11) / 10)
        hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 100000, 0.75, 0.25, rot.CFrame.lookVector * 300, 0.25,"rbxassetid://5711265448", math.random(9, 11) / 10, math.random(9, 11) / 10)
        hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 100000, 0.75, 0.25, rot.CFrame.lookVector * 300, 0.25,"rbxassetid://5711265448", math.random(9, 11) / 10, math.random(9, 11) / 10)
	end
	end))
	wait(0.35)
	trans1()
	trailevent:FireServer(rarm.Trail, false)
	activu = false
	attackpose:Stop(0.1)
end	
function movement()
	if appeared == true then
		return
	end
	standjumpanim:Play(0.1, 1, 1)
	jumpevent:FireServer(BrickColor.new("Institutional white"))
	local Bod = Instance.new("BodyPosition",hrp)
    Bod.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    Bod.Position = hrp.CFrame*CFrame.new(0,30,-30).p
	game.Debris:AddItem(Bod, 0.25)
end
local timestopping = false
function timestop()
if activu == true then return end
if timestopping == true then return end
if game.Lighting.TS.Value == true then return end
if game.Lighting.TE.Value == true then return end
if game.Lighting.TSing.Value == true then return end
if game.Lighting.TS.Value == true then return end
	if appeared == true then
		return
	end	
	activu = true
	timestopanim:Play(0.1, 1, 1)
	human.WalkSpeed = 0
	human.JumpPower = 0
	timestopping = true
	timestopevent:FireServer(length, "jotaro")
	wait(1.75)
	for i = 1,25 do
    wait()
	end
	human.WalkSpeed = 16
	human.JumpPower = 50
	timestopping = false
	activu = false
end
function untimestop()
	untimestopevent:FireServer()
end
local zerocooldown = false
local rtzmode = false
local rtzcooldown = false
function resettozero()
	if appeared == true then
		return
	end
	trans0()
	if activu == false and rtzmode == false and rtzcooldown == false then
	rtzcooldown = true
	activu = true
	rtzmode = true
	rtzanim:Play(0.3, 1, 1)
	rtzevent:FireServer(true)
	if game.Lighting.TS.Value == true then
		if zerocooldown == false then
		if rtzmode == true then
			rtzsfx:Play()
			zerocooldown = true
			local charr = game.Lighting.TSer.Value
			local humss = charr.Humanoid
			rtzdamageevent:FireServer(humss, 10000000)
			zerocooldown = false
		end
	end
	end
	if game.Lighting.TE.Value == true then
		if zerocooldown == false then
		if rtzmode == true then
			rtzsfx:Play()
			zerocooldown = true
			local charrr = game.Lighting.TEer.Value
			local humsss = charrr.Humanoid
			rtzdamageevent:FireServer(humsss, 10000000)
			zerocooldown = false
		end
		end
	end
	elseif rtzmode == true then
	activu = false
	rtzmode = false
	trans1()
	rtzanim:Stop(0.3)
	rtzevent:FireServer(false)
	rtzcooldown = false
	end
end
local posing = false
function posefunc()
if activu == false and posing == false then
	if appeared == true then
		return
	end
			for _ = 1,12 do
		wait()
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").Damage11Sans:FireServer(game.Players.LocalPlayer.Character.Humanoid, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0, 0, Vector3.new(0, 0, 0), 5, "", 1, 1)
		game:GetService("ReplicatedStorage").RTZEffect:FireServer()
	    game:GetService("ReplicatedStorage").RTZ:FireServer()
	    game:GetService("ReplicatedStorage").RTZClient:FireServer()
		end
	trans0()
	if posing == false then do
	activu = true
	posing = true
	local cp = math.random(1, 2)
	if cp == 1 then
		pose1:Play(0.1, 1, 1)
	elseif cp == 2 then
		pose2:Play(0.1, 1, 1)
	end
	human.WalkSpeed = 0
	human.JumpPower = 0
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
	poseevent:FireServer(false)
	trans1()
	end
end
dodgecooldown = false
function dodge()
	rollanim:Play()
	dodgesfx:Play()
	dodgeevent:FireServer()
	local boopyve = Instance.new("BodyVelocity")
    boopyve.MaxForce = Vector3.new(100000, 0, 100000)
    boopyve.P = math.huge
    boopyve.Velocity = hrp.CFrame.lookVector * 50
    boopyve.Parent = chr.HumanoidRootPart
	game.Debris:AddItem(boopyve, 0.25)
end
mouse.Button1Down:connect(function()
if ntorso.Anchored == true then return end
if disabled.Value == true then return end
	punch()
end)
mouse.KeyDown:connect(function(key)
if ntorso.Anchored == true then return end
if disabled.Value == true then return end
	if key == "q" then
		standappear(stand)
	end
	if key == "e" then
		barrage()
	end
	if key == "r" then
		strongpunch()
	end
	if key == "t" then
		overwrite()
	end
	if key == "y" then
		healbarrage()
	end
	if key == "x" then
		block()
	end
	if key == "f" then
		if game.Lighting.TS.Value == false then
		timestop()		
		elseif game.Lighting.TS.Value == true then
		untimestop()	
		end	
	end
	if key == "k" then
		resettozero()
	end
	if key == "z" then
		movement()
	end
	if key == "g" then
		posefunc()
	end
	if key == "c" then
		dodge()
	end
end)
function hito(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
  for _, guy in pairs(workspace:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
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

	if guy:FindFirstChild("Stand") and guy["Stand"]:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy["Stand"]:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
		do 
		if partoz.Anchored then return end
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

function hito2(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
  for _, guy in pairs(workspace:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

	if guy:FindFirstChild("Stand") and guy["Stand"]:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy["Stand"]:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
		do 
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
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
  for _, guy in pairs(workspace:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        knockevent:FireServer(humz)
		local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

	if guy:FindFirstChild("Stand") and guy["Stand"]:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy["Stand"]:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
		do 
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
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

function hito4(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
  for _, guy in pairs(workspace:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent3:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume, BrickColor.new("Institutional white"))
        local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
      end
    end

	if guy:FindFirstChild("Stand") and guy["Stand"]:FindFirstChild("Stand Torso") and guy ~= chr and guy ~= chr[stand.Name] and magn > (guy["Stand"]:FindFirstChild("Stand Torso").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
		do   
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent3:FireServer(humz, partcfr, dmg, effect, grow, color, sound, pitch, volume, "Institutional white")
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
function heal(partcfr, heal, sound, pitch, volume)
       healevent:FireServer(partcfr, heal, sound, pitch, volume)
end

rtzclientevent.OnClientEvent:connect(function(enemyplr)
	if zerocooldown == false then
	rtzsfx:Play()
	zerocooldown = true
	local char = enemyplr.Character
	local hums = char.Humanoid
	rtzdamageevent:FireServer(hums, 10000000)
	zerocooldown = false
	end
end)

game.Lighting.TS.Changed:Connect(function()
	if game.Lighting.TS.Value == true then
		if zerocooldown == false then
		if rtzmode == true then
			rtzsfx:Play()
			zerocooldown = true
			local charr = game.Lighting.TSer.Value
			local humss = charr.Humanoid
			rtzdamageevent:FireServer(humss, 10000000)
			zerocooldown = false
		end
	end
	end
end)

game.Lighting.TE.Changed:Connect(function()
	if game.Lighting.TE.Value == true then
		if zerocooldown == false then
		if rtzmode == true then
			rtzsfx:Play()
			zerocooldown = true
			local charrr = game.Lighting.TEer.Value
			local humsss = charrr.Humanoid
			rtzdamageevent:FireServer(humsss, 10000000)
			zerocooldown = false
		end
		end
	end
end)

tevisionevent.OnClientEvent:connect(function(techar)
	for _, child in pairs(techar:GetChildren()) do
		if child.ClassName == "Part" and child ~= techar.HumanoidRootPart and child ~= techar.EyeParticle and child ~= techar.EyeParticle2 then
			child.Transparency = 0
		end
	for _, child in pairs(techar.Stand:GetChildren()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" or child.ClassName == "UnionOperation" and child ~= techar.Stand.StandHumanoidRootPart then
			child.Transparency = 0
		end
		techar.Stand.Face.face.Transparency = 0
		techar.Stand.EpitaphFace.face.Transparency = 0
	for _, child in pairs(techar:GetChildren()) do
		if child.ClassName == "Accessory" then
			child.Handle.Transparency = 0
		end
	for _, child in pairs(techar:GetChildren()) do
		if child.ClassName == "Humanoid" then
			child.Name = "Humanoid"
		end
		end
	end
	end
	end
end)

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
	if chr.Block.Value == true then return end
	knockedevent:FireServer()
	human:SetStateEnabled(3, false)
	wait(1.25)
	if human.Health >= 1 then
	getupevent:FireServer()
	human:SetStateEnabled(3, true)
	end
end)
