--Hamon Requiem 
--Hamon Required
local mystand = nil
for i,v in pairs(game:GetService("Lighting"):GetChildren())do
for i,v2 in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren())do
if v:IsA("LocalScript") and v2:IsA("LocalScript") then
if v.Name == v2.Name then
mystand = v2.Name
end
end
end
end
 
game.Players.LocalPlayer.Character[mystand]:Destroy()
 
--Events
local replicatedstorage = game:GetService("ReplicatedStorage")
local damageevent = replicatedstorage.Damage
local damageevent2 = replicatedstorage.BurnDamage
local damageevent3 = replicatedstorage.Damage3
local damageevent12 = replicatedstorage.Damage12
local blockevent = replicatedstorage.Block
local blockevent2 = replicatedstorage.SuperArmor
local donutevent = replicatedstorage.FOTPSDamageTeleport
local timestopevent = replicatedstorage.Timestop
local transparencyevent = replicatedstorage.Transparency
local strongpunchevent = replicatedstorage.PlayerStrongPunch
local strongpunchevent2 = replicatedstorage.PlayerStrongPunch2
local jumpevent = replicatedstorage.Jump
local jumpevent2 = replicatedstorage.Jump2
local jumpevent3 = replicatedstorage.ReversedJump
local dodgeevent = replicatedstorage.Dodge
local anchorevent = replicatedstorage.Anchor
local trailevent = replicatedstorage.Trail
local starfingerevent = replicatedstorage.StarFinger
local iggyevent = replicatedstorage.Iggy
local jumpevent = replicatedstorage.Jump
local velocityevent = replicatedstorage.Velocity
local poseevent = replicatedstorage.Menacing
local knockevent = replicatedstorage.Knock
local knockclientevent = replicatedstorage.KnockClient
local knockedevent = replicatedstorage.Knocked
local getupevent = replicatedstorage.GetUp
local berserkclientevent = replicatedstorage.BerserkClient
local tauntevent = replicatedstorage.Taunt
local yellevent = replicatedstorage.Yell
local berserkevent = replicatedstorage.Berserk
local slamevent = replicatedstorage.DoppioSlam
local dashevent = replicatedstorage.VampireDash
 
local plr = game:GetService("Players").LocalPlayer
repeat
	wait()
until plr.Character and plr.Character.Humanoid
local chr = plr.Character
local human = chr.Humanoid
local hrp = chr.HumanoidRootPart
mouse = plr:GetMouse()
cam = workspace.CurrentCamera
 
--standevent:FireServer()
 
--Values
local activu = false
	human.WalkSpeed = 20
	human.JumpPower = 50 
 
local head = chr["Head"]
local ntorso = chr["Torso"]
local rightarm = chr["Right Arm"]
local leftarm = chr["Left Arm"]
local rightleg = chr["Right Leg"]
local leftleg = chr["Left Leg"]
local rot = chr["HumanoidRootPart"]
 
function makemotor(parent, p0, p1, c0, c1)
  local wel = Instance.new("Motor6D")
  wel.Part0 = p0
  wel.Part1 = p1
  if c0 ~= nil then
    wel.C0 = c0
  end
  if c1 ~= nil then
    wel.C1 = c1
  end
  wel.Parent = parent
  return wel
end
 
local stand = chr:WaitForChild("Stand")
local disabled = Instance.new("BoolValue",chr)
disabled.Value = false
 
--Animation
local anim0 = Instance.new("Animation") -- idle
anim0.AnimationId = "rbxassetid://5166116703"
 
local anim1 = Instance.new("Animation") -- dash
anim1.AnimationId = "rbxassetid://5482300918"
 
local anim7 = Instance.new("Animation") -- barrage
anim7.AnimationId = "rbxassetid://3445788051"
 
local anim4 = Instance.new("Animation") -- right punch
anim4.AnimationId = "rbxassetid://3445791481"
 
local anim5 = Instance.new("Animation") -- left punch
anim5.AnimationId = "rbxassetid://3445790486"
 
local anim3 = Instance.new("Animation") -- strong punch
anim3.AnimationId = "rbxassetid://3579946634"
 
local anim2 = Instance.new("Animation") -- block
anim2.AnimationId = "rbxassetid://3445910629"
 
local Pose1 = Instance.new("Animation") -- pose
Pose1.AnimationId = "rbxassetid://4659107695"
 
local Pose2 = Instance.new("Animation") -- pose
Pose2.AnimationId = "rbxassetid://4659108997"
 
local anim6 = Instance.new("Animation") -- third attack
anim6.AnimationId = "rbxassetid://3451299398"
 
local anim8 = Instance.new("Animation")
anim8.AnimationId = "rbxassetid://3445806846" -- lunge
 
local anim9 = Instance.new("Animation")
anim9.AnimationId = "rbxassetid://5590359425"-- tornado kick
 
local anim10 = Instance.new("Animation")
anim10.AnimationId = "rbxassetid://3445985341" -- omt drill
 
local anim11 = Instance.new("Animation") -- yell
anim11.AnimationId = "rbxassetid://5242641804"
 
local anim12 = Instance.new("Animation") -- strong punch
anim12.AnimationId = "rbxassetid://3445806846"
 
local anim13 = Instance.new("Animation") --strong punch
anim13.AnimationId = "rbxassetid://3445806846"
 
local anim14 = Instance.new("Animation") --strongpunch
anim14.AnimationId = "rbxassetid://3445806846"

local anim15 = Instance.new("Animation") 
anim15.AnimationId = "rbxassetid://3820688897"

local anim16 = Instance.new("Animation") 
anim16.AnimationId = "rbxassetid://3579947542"

local anim17 = Instance.new("Animation") 
anim17.AnimationId = "rbxassetid://3445806846"
 
 
local idleanim = human:LoadAnimation(anim0)
local barrageanim = human:LoadAnimation(anim7)
local strongpunchanim = human:LoadAnimation(anim3)
local rightpunchanim = human:LoadAnimation(anim4)
local leftpunchanim = human:LoadAnimation(anim5)
local rollanim = human:LoadAnimation(anim1)
local blockanim = human:LoadAnimation(anim2)
local pose1 = human:LoadAnimation(Pose1)
local pose2 = human:LoadAnimation(Pose2)
local yellanim = human:LoadAnimation(anim6)
local slashanim = human:LoadAnimation(anim8)
local drillanim2 = human:LoadAnimation(anim9)
local drillanim = human:LoadAnimation(anim10)
local shinybladeanim = human:LoadAnimation(anim11)
local anim = human:LoadAnimation(anim12)
local anim = human:LoadAnimation(anim13)
local anim = human:LoadAnimation(anim14)
local flyanim = human:LoadAnimation(anim15)
local zoomanim = human:LoadAnimation(anim16)
local ranim = human:LoadAnimation(anim17)
function godmode()
    replicatedstorage.Block:FireServer(true)
    replicatedstorage.BurnDamage:FireServer(human, CFrame.new(0, -50, 0), -0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
    wait()
    replicatedstorage.BurnDamage:FireServer(human, CFrame.new(0, -50, 0), 0 * math.huge, 0, Vector3.new(0, 0, 0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255), "rbxassetid://260430079", 0, 0)
end
godmode()

for i,v in pairs(chr.HumanoidRootPart:GetChildren()) do
                if v:IsA("BodyVelocity") or v:IsA("BodyPosition") or v:IsA("BodyAngularVelocity") or v:IsA("BodyForce") or v:IsA("BodyGyro") or v:IsA("BodyThrust") then
                    v:Destroy()
                end
            end
 
pose1.Looped = true
pose1.Priority = "Idle"
pose2.Looped = true
pose2.Priority = "Idle"
 
--Sound
local dodgesfx
 
if ntorso:FindFirstChild"Dodge" then
	dodgesfx = ntorso.Dodge
	dodgesfx.SoundId = "rbxassetid://1145251796"
else
	dodgesfx = Instance.new("Sound",chr)
	dodgesfx.SoundId = "rbxassetid://1145251796"
	dodgesfx.Volume = 5
end
 
local punchsfx
if ntorso:FindFirstChild"Swing" then
	punchsfx = ntorso.Swing
	punchsfx.SoundId = "rbxassetid://200632136"
else
	punchsfx = Instance.new("Sound",chr)
	punchsfx.SoundId = "rbxassetid://200632136"
	punchsfx.Volume = 2.5
end
local heavypunchsfx
if ntorso:FindFirstChild"HeavyPunch" then
	heavypunchsfx = ntorso.HeavyPunch
	heavypunchsfx.SoundId = "rbxassetid://2440670891"
else
	heavypunchsfx = Instance.new("Sound",chr)
	heavypunchsfx.SoundId = "rbxassetid://2440670891"
	heavypunchsfx.Volume = 5
end

local hamonsfx
if ntorso:FindFirstChild"HeavyPunch" then
	hamonsfx = ntorso.Hamon
	hamonsfx.SoundId = "rbxassetid://3579947542"
else
	hamonsfx = Instance.new("Sound",chr)
	hamonsfx.SoundId = "rbxassetid://3579947542"
	hamonsfx.Volume = 5
end
 
local rushsfx
if ntorso:FindFirstChild"Rush" then
	rushsfx = ntorso.Rush
	rushsfx.SoundId = "rbxassetid://130767866"
else
	rushsfx = Instance.new("Sound",chr)
	rushsfx.SoundId = "rbxassetid://130767866"
	rushsfx.Volume = 5
end
 
local blocksfx = dodgesfx
 
function block()
	if activu == true then return end
	activu = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "x" then
	      bep = false
	    end
	end)
	blockanim:Play(0.1, 1,1)
	game.ReplicatedStorage.Deflect:FireServer(true)
	blockevent:FireServer(true)
	--blocksfx:Play()
	human.WalkSpeed = 0
	human.JumpPower = 0
	transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
        repeat
		wait()
	until bep == false
	   game.ReplicatedStorage.Deflect:FireServer(false)
	blockevent:FireServer(false)
	blockanim:Stop(0.1)
	human.WalkSpeed = 20
	human.JumpPower = 50
	transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	activu = false
end
 
local posing = false
function posefunc()
if activu == false and posing == false then
	if appeared == false then
		return
	end
	if posing == false then do
	activu = true
    pose1:Play(0.1, 1, 1)
	spawn(function()
        wait()
        pose1:Stop()
        pose2:Play()
    end)
	human.WalkSpeed = 0
	human.JumpPower = 0
	wait()
	posing = true
	poseevent:FireServer(true)
	end
	end
	elseif posing == true then
	pose1:Stop(0.3)
	pose2:Stop(0.3)
	if disabled.Value == false then
	human.WalkSpeed = 20
	human.JumpPower = 50
	elseif disabled.Value == true then
	human.WalkSpeed = 4
	human.JumpPower = 10	
	end
	activu = false
	posing = false
	poseevent:FireServer(false)
	end
end
 
local tauntcd = false
function taunt()
	if tauntcd == true then return end
	tauntcd = true
	local randomline = math.random(1, 4)
	if randomline == 1 then -- only one taunt atm
tauntevent:FireServer(head, "rbxassetid://3072040984", 10000, 0, 0)
	elseif randomline == 2 then
tauntevent:FireServer(head, "rbxassetid://3072042204", 10000, 0, 0)
	elseif randomline == 3 then
tauntevent:FireServer(head, "rbxassetid://3072042975", 10000, 0, 0)
	elseif randomline == 4 then
tauntevent:FireServer(head, "rbxassetid://3062479927", 10000, 0, 0)
		end
	tauntcd = false
end
 
local leftorright = false
function punch()
if activu == true then return end
	activu = true
	punchsfx:Play()
	if leftorright == false then
		leftorright = true
		leftpunchanim:Play(0.1, 1, 1)
		trailevent:FireServer(stand.StandRarm.Trail, true)
		wait(0.2)
		coroutine.resume(coroutine.create(function()
		for _ = 1, 5 do
		wait()
		hito(rightarm, rightarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 20.5, 0.5, 0.25, hrp.CFrame.lookVector * 20, "rbxassetid://3370684035", 0.035, Color3.new(170, 85, 255),"rbxassetid://260430079", math.random(9, 11) / 10, 2)
		end
		end))
	elseif leftorright == true then
		leftorright = false
		rightpunchanim:Play(0.1, 1, 1)
		trailevent:FireServer(stand.StandLarm.Trail, true)
		wait(0.2)
		coroutine.resume(coroutine.create(function()
		for _ = 1, 5 do
		wait()
		hito(leftarm, leftarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 20.5, 0.5, 0.25, hrp.CFrame.lookVector * 20, "rbxassetid://3370684035", 0.035, Color3.new(170, 85, 255),"rbxassetid://260430079", math.random(9, 11) / 10, 2)
		end
		end))
	end
	wait(0.3)
	activu = false
	trailevent:FireServer(stand.StandRarm.Trail, false)
	trailevent:FireServer(stand.StandLarm.Trail, false)
end
 
local EHMMM = 0
local barragecooldown = false
function barrage()
	if activu == true then return end
	if barragecooldown == true then return end
	activu = true
	barragecooldown = true
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "e" then
	      bep = false
	    end
	end)
	transparencyevent:FireServer(stand.StandRarm, 0.625)
	transparencyevent:FireServer(stand.StandLarm, 0.625)
	trailevent:FireServer(stand.StandLarm.Energy, true)
	trailevent:FireServer(stand.StandRarm.Energy, true)
	trailevent:FireServer(stand.StandRarm.Trail, true)
	trailevent:FireServer(stand.StandLarm.Trail, true)
	trailevent:FireServer(rot.HamonLight, true)
	transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	barrageanim:Play(0.1, 1, 1.5)
	blockevent:FireServer(true)
	human.JumpPower = 0
	human.WalkSpeed = 6
	--rushsfx:Play()
	repeat
		EHMMM = EHMMM + 1
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)	   
		hito(rightarm, rightarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 100, 0.1, 0.25, hrp.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255),"rbxassetid://1693499499", math.random(9, 11) / 10, math.random(9, 11) / 50)
		hito(leftarm, leftarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2, 100, 0.1, 0.25, hrp.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255),"rbxassetid://1693499499", math.random(9, 11) / 10, math.random(9, 11) / 50)		
		wait(0.1)
	until bep == false or disabled.Value == true or EHMMM >= 60
	--rushsfx:Stop()
	barrageanim:Stop(0.1)
	human.JumpPower = 50
	human.WalkSpeed = 20
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	transparencyevent:FireServer(stand.StandRarm, 1)
	transparencyevent:FireServer(stand.StandLarm, 1)
	trailevent:FireServer(stand.StandRarm.Trail, false)
	trailevent:FireServer(stand.StandLarm.Trail, false)
	trailevent:FireServer(stand.StandLarm.Energy, false)
	trailevent:FireServer(stand.StandRarm.Energy, false)
	trailevent:FireServer(rot.HamonLight, false)
	transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	blockevent:FireServer(false)
	activu = false
	EHMMM = 
	0
	wait(0.1) -- cooldown
	barragecooldown = false
end
 
local strongpunchcooldown = false
function strongpunch()
	if activu == true then return end
	if strongpunchcooldown == true then return end
	activu = true
	strongpunchcooldown = true
	trailevent:FireServer(stand.StandRarm.Trail, true)
	transparencyevent:FireServer(stand.StandRarm, 0.25)
	trailevent:FireServer(rot.HamonLight, true)
	transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	trailevent:FireServer(stand.StandRarm.Energy, true)
	slashanim:Play(0.1, 1, 1)
	heavypunchsfx:Play()
	human.JumpPower = 0
	blockevent:FireServer(true)
	wait(0.5)
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	trailevent:FireServer(rot.HamonLight, false)
	trailevent:FireServer(stand.StandRarm.Energy, false)
	trailevent:FireServer(stand.StandRarm.Trail, false)
	punchsfx:Play()
	local boopyve = Instance.new("BodyVelocity")
    boopyve.MaxForce = Vector3.new(100000, 100000, 100000)
    boopyve.P = math.huge
    boopyve.Velocity = hrp.CFrame.lookVector * 30
    boopyve.Parent = chr.HumanoidRootPart
	game.Debris:AddItem(boopyve, .3)
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait()
hito2(rightarm, rightarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,8, 140, 1.25, 0.25, hrp.CFrame.lookVector * 37.5, "rbxassetid://241837157", 0.0825, Color3.fromRGB(245, 205, 48),"rbxassetid://1693499499", math.random(9, 11) / 10, math.random(9, 11) / 2)
	end
	end))
	wait(0.65)
	--trailevent:FireServer(stand.StandRarm.Trail, false)
	human.JumpPower = 50
	trailevent:FireServer(stand.LuckandPluck.Blade.Trail, false)
	trailevent:FireServer(rot.HamonLight, false)
	trailevent:FireServer(stand.StandRarm.Energy, false)
	trailevent:FireServer(stand.StandRarm.Trail, false)
	transparencyevent:FireServer(stand.StandRarm, 1)
	blockevent:FireServer(false)
	activu = false
	wait(0.1)
	strongpunchcooldown = false
end

function R_Damage()
    pcall(function()
        ranim:Play()
        heavypunchsfx:Play()
        local hitbox1 = Instance.new("Part",game.Players.LocalPlayer.Character)
        hitbox1.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
        hitbox1.Name = "hitbox"
        hitbox1.Anchored = false
        hitbox1.CanCollide = false
        local weld = Instance.new("WeldConstraint",hitbox1)
        weld.Part0 = hitbox1
        weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
        hitbox1.Size = game.Players.LocalPlayer.Character["Right Arm"].Size*1.5
        hitbox1.Massless = true
        hitbox1.Transparency = 1
        hitbox1.Color = Color3.new(0,0,0)
        hitbox1.Touched:Connect(function(hit)
            if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
                if hit.Parent:FindFirstChild("HumanoidRootPart") then
                    if not PunchDeb then
                        PunchDeb = true
                        local A_1 = hit.Parent.Humanoid
                        local A_2 = hit.Parent.HumanoidRootPart.CFrame
                        local A_3 = 0
                        local A_4 = 0
                        local A_5 = Vector3.new(0, 0, 0)
                        local A_6 = "rbxassetid://"
                        local A_7 = 0.075
                        local A_8 = Color3.new(255, 0, 255)
                        local A_9 = "rbxassetid://260430079"
                        local A_10 = 0.9
                        local A_11 = 0.44
                        local Event = game:GetService("ReplicatedStorage").Damage
                        Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7, A_8, A_9, A_10, A_11)
                        damageevent12:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 50, 0, Vector3.new(0, 0, 0), 1, "rbxassetid://410417720", 1, 20)
                        wait(1)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        damageevent3:FireServer(hit.Parent.Humanoid, hit.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(9e999, 9e999, 0), 1, "rbxassetid://606138807", 1, 20)
                        PunchDeb = false
                    end
                end
            end
            wait(0.1)
            if hitbox1 then
            hitbox1:Destroy() 
            end
        end)
    end)
end

local zoompunchcd = false
function zoompunch()
	if activu == true then return end
	if zoompunchcd == true then return end
	activu = true
	zoompunchcd = true
	zoomanim:Play(0.1, 1, 1)
	hamonsfx:Play()
	wait(0.5)
	transparencyevent:FireServer(stand.ZoomArm, 0)
	punchsfx:Play()
	coroutine.resume(coroutine.create(function()
		for _ = 1, 15 do
			wait()
			hito(stand.ZoomPunchHitbox1, stand.ZoomPunchHitbox1.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 69 , 1, 0.1, rot.CFrame.lookVector * -55, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 0),"rbxassetid://565207203", math.random(9, 11) / 7, math.random(9, 11) / 5)
			hito(stand.ZoomPunchHitbox2, stand.ZoomPunchHitbox2.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 69 , 1, 0.1, rot.CFrame.lookVector * -55, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 0),"rbxassetid://565207203", math.random(9, 11) / 7, math.random(9, 11) / 5)
			hito(stand.ZoomPunchHitbox3, stand.ZoomPunchHitbox3.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 3, 69 , 1, 0.1, rot.CFrame.lookVector * -55, "rbxassetid://241837157", 0.075, Color3.fromRGB(255, 255, 0),"rbxassetid://565207203", math.random(9, 11) / 7, math.random(9, 11) / 5)
		end
	end))
	wait(0.65)
	transparencyevent:FireServer(stand.ZoomArm, 1)
	activu = false
	wait(0)
	zoompunchcd = false
end
 
local donutcooldown = false
function donut()
	if activu == true then return end
	if donutcooldown == true then return end
	if mouse.Target and mouse.Target.Parent:FindFirstChild("Humanoid") then
		local horp = mouse.Target.Parent:FindFirstChild("HumanoidRootPart")
		local magnitude = (horp.Position - hrp.Position).magnitude
		donutcooldown = true
		local char = mouse.Target.Parent
		donutevent:FireServer(char, math.huge)
                donutevent:FireServer(char, math.huge)
                donutevent:FireServer(char, math.huge)
                donutevent:FireServer(char, math.huge)
                donutevent:FireServer(char, math.huge)
		   wait()
		wait(0.1) -- cooldown
		donutcooldown = false
	end
end 

local healingdonutcooldown = false
function healingdonut()
	if activu == true then return end
	if donutcooldown == true then return end
	if mouse.Target and mouse.Target.Parent:FindFirstChild("Humanoid") then
		local horp = mouse.Target.Parent:FindFirstChild("HumanoidRootPart")
		local magnitude = (horp.Position - hrp.Position).magnitude
		donutcooldown = true
		local char = mouse.Target.Parent
		donutevent:FireServer(char, -1000)
                donutevent:FireServer(char, -1000)
                donutevent:FireServer(char, -1000)
                donutevent:FireServer(char, -1000)
                donutevent:FireServer(char, -1000)
		   wait()
		wait(0.1) -- cooldown
		donutcooldown = false
	end
end 


dodgecooldown = false
function dodge()
if activu == true then return end
if dodgecooldown == true then return end
	activu = true
	dodgecooldown = true
	rollanim:Play(0.1, 1,1)
	--dodgesfx:Play()
	dodgeevent:FireServer()
	local boopyve = Instance.new("BodyVelocity")
    boopyve.MaxForce = Vector3.new(100000, 0, 100000)
    boopyve.P = math.huge
    boopyve.Velocity = hrp.CFrame.lookVector * 125
    boopyve.Parent = chr.HumanoidRootPart
	game.Debris:AddItem(boopyve, 0.25)
	wait(0.1)
	activu = false
	rollanim:Stop()
	wait(0.1) -- cooldown
	dodgecooldown = false	
end	
 
local yellcooldown = false
function yell()
if activu == true then return end
if yellcooldown == true then return end
	activu = true
	yellcooldown = true
	yellanim:Play(0.1, 1, 1)
	human.WalkSpeed = 0
	transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 0)
	blockevent:FireServer(true)
	wait(0.1)
	coroutine.resume(coroutine.create(function()
	for i=1,20 do
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("Bright Red"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("Bright violet"))
	jumpevent:FireServer( BrickColor.new("Really black"))
	game:GetService("RunService").Stepped:Wait()
	end	
	end))
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait()
		hito2(rot, rot .CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,20, 150, 0.75, 0.25, hrp.CFrame.lookVector *  0 + Vector3.new(0,75,0), "rbxassetid://241837157", 0, Color3.new(255, 255, 255),"rbxassetid://1973317014", math.random(9, 11) / 10, math.random(9, 11) / 10)
	end
	end))
	wait(0.6)
	yellanim:Stop()
	transparencyevent:FireServer(stand.LuckandPluck.HamonBlade, 1)
	blockevent:FireServer(false)
	activu = false
	human.WalkSpeed = 20
	wait(0.1)
	yellcooldown = false
end
 
local scarletoverdricecd = false
function scarletoverdrive()
	if activu == true then return end
	if scarletoverdricecd == true then return end
	activu = true
	scarletoverdricecd = true
	trailevent:FireServer(stand.StandLarm.RedTrail, true)
	transparencyevent:FireServer(stand.StandLarm, 0.5)
	strongpunchanim:Play(0.1, 1, 1)
	blockevent:FireServer(true)
	wait(0.5)
	coroutine.resume(coroutine.create(function()
	for _ = 1, 15 do
		wait()
                hito3(leftarm, leftarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3.5, 100, 2, 0.25, hrp.CFrame.lookVector * 50, "rbxassetid://663514083", 0.1, Color3.new(255, 0, 0),"rbxassetid://663514083", math.random(9, 11) / 10, math.random(9, 11) / 2)
	end
	end))
	wait(0.65)
	trailevent:FireServer(stand.StandLarm.RedTrail, false)
	transparencyevent:FireServer(stand.StandLarm, 1)
	blockevent:FireServer(false)
	activu = false
	wait(0.1)
	scarletoverdricecd = false
end
 
local shinybladecooldown = false
function shinyblade()
	if activu == true then return end
	if shinybladecooldown == true then return end
	shinybladecooldown = true
	shinybladeanim:Play(0.1, 1, 1.5)
	human.WalkSpeed = 0
	human.JumpPower = 0
	wait(1.325)
	human.WalkSpeed = 70
	human.JumpPower = 70
    dashevent:FireServer(BrickColor.new("New Yeller"))
    strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
    strongpunchevent2:FireServer(Vector3.new(2, -0.5, 2), Vector3.new(2, -0.5, 2), BrickColor.new("New Yeller"))
    strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
    strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
    strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	jumpevent:FireServer( BrickColor.new("Really black"))
	jumpevent2:FireServer( BrickColor.new("White"))
	jumpevent3:FireServer( BrickColor.new("Really black"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
		wait (0.1)
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(4, -1, 4), Vector3.new(4, -1, 4), BrickColor.new("New Yeller"))
	strongpunchevent2:FireServer(Vector3.new(3, -0.7, 3), Vector3.new(3, -0.7, 3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(3,1,3), Vector3.new(3,40,3), BrickColor.new("White"))
	strongpunchevent2:FireServer(Vector3.new(1, -0.3, 1), Vector3.new(1, -0.3, 1), BrickColor.new("White"))
	
	
	game:GetService("RunService").Stepped:Wait()
    wait(0.25)
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    wait(0.1)
    dashevent:FireServer(BrickColor.new("New Yeller")) -- AURA
    
    slamevent:FireServer()
	wait(15)
	human.WalkSpeed = 20
	human.JumpPower = 50
	wait(0.1)
	shinybladecooldown = false
end
 
local movementcooldown = false
local EHMM = 0
function movement()
if disabled.Value == true then return end
if disabled == true then return end
if activu == true then return end
if movementcooldown == true then return end
	activu = true
	movementcooldown = true
	flyanim:Play()
	local bep = true
	local de = mouse.KeyUp:connect(function(key)
	    if key == "z" then
	      bep = false
	    end
	end)
	local boopyve = Instance.new("BodyVelocity")
    boopyve.MaxForce = Vector3.new(100000, 100000, 100000)
    boopyve.P = math.huge
    boopyve.Velocity = hrp.CFrame.lookVector * 200
    boopyve.Parent = chr.HumanoidRootPart
	repeat
		wait(0.1)
		EHMM = EHMM + 1
		boopyve.Velocity = hrp.CFrame.lookVector * 200
	until bep == false or EHMM >= 50000000000
	boopyve:Destroy()
	flyanim:Stop()
	activu = false	
	EHMM = 0
	wait(0.1)
	movementcooldown = false
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
		shinyblade()
	end
	if key == "e" then
		barrage()
	end
	if key == "r" then
		R_Damage()
	end
	if key == "j" then
	    strongpunch()
	end
	if key == "t" then
		scarletoverdrive()
	end
	if key == "y" then
	    zoompunch()
	end
	if key == "f" then
		yell()
	end
	if key == "x" then
		block()
	end
	if key == "h" then
		donut()
	end
	if key == "z" then
		movement()
	end
	if key == "v" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.hit.p.X, mouse.hit.p.Y + 2, mouse.hit.p.Z)
    end
    if key == "c" then
        plr.Character.HumanoidRootPart.CFrame =  plr.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-20)
        game.ReplicatedStorage.FOTPSTeleport:FireServer()
    end 
	if key == "g" then
		posefunc()
	end
	if key == "n" then
		taunt()
	end
if key == "b" then
		healingdonut()
	end
end)
 
 
function hito(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
  for _, guy in pairs(workspace.Entities:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        berserkevent:FireServer(humz)
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
        local humz = chr.Humanoid
        damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        berserkevent:FireServer(humz)
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
  for _, guy in pairs(workspace.Entities:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        for a =1,1 do
        damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        end
        knockevent:FireServer(humz)
        berserkevent:FireServer(humz)
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
		knockevent:FireServer(humz)        
        berserkevent:FireServer(humz)
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
  for _, guy in pairs(workspace.Entities:GetChildren()) do
	if partoz.Anchored == true then return end
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
		if partoz.Anchored then return end
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        for a =1,1 do
        damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
        end
        knockevent:FireServer(humz)
        berserkevent:FireServer(humz)
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
        berserkevent:FireServer(humz)
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
	   wait()
	anchorevent:FireServer(ntorso ,false)
	anchorevent:FireServer(rightarm ,false)
	anchorevent:FireServer(leftarm ,false)
	anchorevent:FireServer(rightleg ,false)
	anchorevent:FireServer(leftleg ,false)
	anchorevent:FireServer(head ,false)
 
	elseif game.Lighting.TS.Value == false then
	anchorevent:FireServer(ntorso ,false)
	anchorevent:FireServer(rightarm ,false)
	anchorevent:FireServer(leftarm ,false)
	anchorevent:FireServer(rightleg ,false)
	anchorevent:FireServer(leftleg ,false)
	anchorevent:FireServer(head ,false)
	end
end)
 
if game.Lighting.TS.Value == true then
	anchorevent:FireServer(ntorso ,false)
	anchorevent:FireServer(rightarm ,false)
	anchorevent:FireServer(leftarm ,false)
	anchorevent:FireServer(rightleg ,false)
	anchorevent:FireServer(leftleg ,false)
	anchorevent:FireServer(head ,false)
end
 
berserkclientevent.OnClientEvent:connect(function()
	game.Lighting.Ambient = Color3.fromRGB(0, 0, 122)
	game.Lighting.Berserk.Enabled = true
	human.WalkSpeed = 16
	human:SetStateEnabled(3, false)
	wait(0.1)
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
		   disabled.Value = true
		deathevent:FireServer(false)
	end
end)
 
knockclientevent.OnClientEvent:connect(function(enemyplr)
	if chr.Block.Value == false then return end
	getupevent:FireServer()
	human:SetStateEnabled(3, false)
	wait(1.25)
	if human.Health >= 1 then
	getupevent:FireServer()
	human:SetStateEnabled(3, true)
	end
end)
 
	for _, n in pairs(stand.LuckandPluck:GetChildren()) do
		if n ~= stand.LuckandPluck.HamonBlade then
			transparencyevent:FireServer(n, 1)
		end
	end
		idleanim:Play(0.1, 1, 0.1)

