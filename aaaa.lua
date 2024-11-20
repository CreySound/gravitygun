local function chat(_string)
	if game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync(_string, "All");
	else
		game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_string, 'All')
	end
end
---HELP
local credit = "ControlBot Script made by CreySound, do not attempt to plagiarize."
local worked = "[SCRIPT] Bot is Running!"
local cmds = "Commands are: ".._G.prefix.."cmds, ".._G.prefix.."invite, ".._G.prefix.."credits, ".._G.prefix.."info, ".._G.prefix.."about, ".._G.prefix.."chat <string>, ".._G.prefix.."botchat, ".._G.prefix.."goto <user>, ".._G.prefix.."walkto <user>, ".._G.prefix.."forward <seconds>, ".._G.prefix.."backward <seconds>, "
local cmds2 = _G.prefix.."left <seconds>, right <seconds>, ".._G.prefix.."stop, ".._G.prefix.."jump,".._G.prefix.."sit, ".._G.prefix.."reset, ".._G.prefix.."dance, ".._G.prefix.."undance, ".._G.prefix.."lay, ".._G.prefix.."unlay, ".._G.prefix.."damage <val>, ".._G.prefix.."stun, ".._G.prefix.."unstun, "
local cmds3 = _G.prefix.."spin <val>, ".._G.prefix.."unspin, ".._G.prefix.."bang <speed>, ".._G.prefix.."unbang, ".._G.prefix.."fps, ".._G.prefix.."roast, ".._G.prefix.."rzz, ".._G.prefix.."rickroll, ".._G.prefix.."flipcoin, ".._G.prefix.."dice, ".._G.prefix.."freeze, ".._G.prefix.."unfreeze"

local _version = 2.66

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification",{
	Title = "FE Control Bot Activated",
	Text = "Made by creysound",
	Duration = 5
})
chat(credit)
chat("Loading")

local keys = {
	["a"] = 0x41,
	["b"] = 0x42,
	["c"] = 0x43,
	["d"] = 0x44,
	["e"] = 0x45,
	["f"] = 0x46,
	["g"] = 0x47,
	["h"] = 0x48,
	["i"] = 0x49,
	["j"] = 0x4A,
	["k"] = 0x4B,
	["l"] = 0x4C,
	["m"] = 0x4D,
	["n"] = 0x4E,
	["o"] = 0x4F,
	["p"] = 0x50,
	["q"] = 0x51,
	["r"] = 0x52,
	["s"] = 0x53,
	["t"] = 0x54,
	["u"] = 0x55,
	["v"] = 0x56,
	["w"] = 0x57,
	["x"] = 0x58,
	["y"] = 0x59,
	["z"] = 0x5A,
	["0"] = 0x30,
	["1"] = 0x31,
	["2"] = 0x32,
	["3"] = 0x33,
	["4"] = 0x34,
	["5"] = 0x35,
	["6"] = 0x36,
	["7"] = 0x37,
	["8"] = 0x38,
	["9"] = 0x39,
	["+"] = 0xBB,
	["-"] = 0xBD,
	[","] = 0xBC,
	["."] = 0xBE,
	["quote"] = 0xDE,
	["esc"] = 0x1B,
	["tab"] = 0x09,
	["caps"] = 0x14,
	["lshift"] = 0xA0,
	["rshift"] = 0xA1,
	["ctrl"] = 0x11,
	["lctrl"] = 0xA2,
	["rctrl"] = 0xA3,
	["lwin"] = 0x5B,
	["rwin"] = 0x5C,
	["alt"] = 0x12,
	["space"] = 0x20,
	["enter"] = 0x0D,
	["backspace"] = 0x08,
	["sshot"] = 0x2C,
	["scrolllock"] = 0x91,
	["pause"] = 0x13,
	["insert"] = 0x2D,
	["home"] = 0x24,
	["pgup"] = 0x21,
	["del"] = 0x2E,
	["end"] = 0x23,
	["pgdn"] = 0x22,
	["up_a"] = 0x26,
	["down_a"] = 0x28,
	["left_a"] = 0x25,
	["right_a"] = 0x27,
	["numlock"] = 0x90,
	["sleep"] = 0x5F,
	["n_0"] = 0x60,
	["n_1"] = 0x61,
	["n_2"] = 0x62,
	["n_3"] = 0x63,
	["n_4"] = 0x64,
	["n_5"] = 0x65,
	["n_6"] = 0x66,
	["n_7"] = 0x67,
	["n_8"] = 0x68,
	["n_9"] = 0x69,
	["v_mute"] = 0xAD,
	["v_up"] = 0xAF,
	["v_down"] = 0xAE,
	["next_t"] = 0xB0,
	["prev_t"] = 0xB1,
	["stop_t"] = 0xB2,
	["pause_t"] = 0xB3,
	["f1"] = 0x70,
	["f2"] = 0x71,
	["f3"] = 0x72,
	["f4"] = 0x73,
	["f5"] = 0x74,
	["f6"] = 0x75,
	["f7"] = 0x76,
	["f8"] = 0x77,
	["f9"] = 0x78,
	["f10"] = 0x79,
	["f11"] = 0x7A,
	["f12"] = 0x7B,
}

local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
		if v["Disable"] then
			v["Disable"](v)
		elseif v["Disconnect"] then
			v["Disconnect"](v)
		end
	end
else
	game.Players.LocalPlayer.Idled:Connect(function()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new())
	end)
end

wait(1 + math.random())

chat(worked)
chat(cmds)
chat(cmds2)
chat(cmds3)
if _G.stoprendering == true then
	game["Run Service"]:Set3dRenderingEnabled(false)
end

if _G.showblockui == true then
	local ScreenGui = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ResetOnSpawn = false 

	TextLabel.Parent = ScreenGui
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.GothamMedium
	TextLabel.Text = [[ControlBot Running
V]].._version
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 23.000
end
--game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
local services = {
	["run_service"] = game:GetService("RunService"),
}



local update_rate = 1
update_rate = (update_rate < 0.25 or update_rate > 2) and 1 or update_rate

local frames_rendered = 0
local last_update = tick() - update_rate
local multiplier = 1 / update_rate



local player = game.Players.LocalPlayer
local human = player.Character.Humanoid

human.Changed:connect(function()
	human.Jump = false
end)

services["run_service"].RenderStepped:Connect(function()
	if tick() - last_update >= update_rate then
		_G.FPS = "FPS Currently at: "..tostring(math.round(frames_rendered * multiplier))
		frames_rendered = 0; last_update = tick()
	else
		frames_rendered += 1
	end
end)

local function boot(Message)
	local splitMsg = string.split(Message, " ")

	if string.lower(Message) == _G.prefix.."cmds" then
		chat(cmds)
		chat(cmds2)
		chat(cmds3)
		--send(wh, plr.Name, Message)
	end
	if string.lower(Message) == _G.prefix.."invite" then
		chat("Disсоrd: ".._G.invitelink)
		--send(wh, plr.Name, Message)
	end
	if string.lower(Message) == _G.prefix.."credits" then
		chat(credit)
	end
	if string.lower(Message) == _G.prefix.."info" then
		chat("[SCRIPT] This bot was programmed by CreySound. It can be controlled by players!")
		chat("[SCRIPT] It can do something like chatting or... anything! (almost)")
		chat("[SCRIPT] The version that is running on is V".._version.."!")

	end
	if string.lower(Message) == _G.prefix.."about" then
		chat("My name is Bob!, my purpose is to be controlled by people like you!")
		chat("i have so much cool features like you can make me chat and make me move!")
	end
	if string.lower(splitMsg[1]) == _G.prefix.."chat" then
		local Message = string.gsub(Message, _G.prefix.."chat ", "")
		game.Players:Chat(Message)
		chat(Message)
	end
	if string.lower(Message) == _G.prefix.."botchat" then
		local msgs = {
			"Waddup!",
			"ayy!",
			"wats good",
			"holaa",
			"i see",
			"il think about it...",
			"you good?",
			"ayoooo",
			"nahhh",
			"oh hell nah",
			"hell to the nah",
			"jit trippin",
			"ainnoway",
			"im cringing rn",
			"you mewin???"
		}

		chat(msgs[math.random(1, 15)])
	end
	if string.lower(splitMsg[1]) == _G.prefix.."goto" then
		local Message = string.gsub(Message, _G.prefix.."goto ", "")
		if game.Players:FindFirstChild(Message) then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(Message).Character.HumanoidRootPart.CFrame
		else
			chat("[SCRIPT] The input you gave me is not a player. It is case sensetive! Next time, type the target's full username not displayname!")
		end
	end

	if string.lower(splitMsg[1]) == _G.prefix.."walkto" then
		local Message = string.gsub(Message, _G.prefix.."walkto ", "")
		if game.Players:FindFirstChild(Message) then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = game.Players:FindFirstChild(Message).Character.HumanoidRootPart.Position
		else
			chat("[SCRIPT] The input you gave me is not a player. It is case sensetive! Next time, type the target's full username not displayname!")
		end
	end
	if string.lower(splitMsg[1]) == _G.prefix.."forward" then
		local Message = string.gsub(Message, _G.prefix.."forward ", "")
		if Message then
			keyrelease(keys["s"])
			keypress(keys["w"])
			wait(Message)
			keyrelease(keys["w"])
			keyrelease(keys["s"])
			keyrelease(keys["a"])
			keyrelease(keys["d"])
		else
			chat("[SCRIPT] The input you gave me is not a valid integer.")
		end
	end
	if string.lower(splitMsg[1]) == _G.prefix.."backward" then
		local Message = string.gsub(Message, _G.prefix.."backward ", "")
		if Message then
			keyrelease(keys["w"])
			keypress(keys["s"])
			wait(Message)
			keyrelease(keys["w"])
			keyrelease(keys["s"])
			keyrelease(keys["a"])
			keyrelease(keys["d"])
		else
			chat("[SCRIPT] The input you gave me is not a valid integer.")
		end	
	end
	if string.lower(splitMsg[1]) == _G.prefix.."left" then
		local Message = string.gsub(Message, _G.prefix.."left ", "")
		if Message then
			keyrelease(keys["d"])
			keypress(keys["a"])
			wait(Message)
			keyrelease(keys["w"])
			keyrelease(keys["s"])
			keyrelease(keys["a"])
			keyrelease(keys["d"])
		else
			chat("[SCRIPT] The input you gave me is not a valid integer.")
		end
	end
	if string.lower(splitMsg[1]) == _G.prefix.."right" then
		local Message = string.gsub(Message, _G.prefix.."right ", "")
		if Message then
			keyrelease(keys["a"])
			keypress(keys["d"])
			wait(Message)
			keyrelease(keys["w"])
			keyrelease(keys["s"])
			keyrelease(keys["a"])
			keyrelease(keys["d"])
		else
			chat("[SCRIPT] The input you gave me is not a valid integer.")
		end	
	end
	if string.lower(Message) == _G.prefix.."stop" then
		keyrelease(keys["w"])
		keyrelease(keys["s"])
		keyrelease(keys["a"])
		keyrelease(keys["d"])
	end
	if string.lower(Message) == _G.prefix.."jump" then
		game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
	if string.lower(Message) == _G.prefix.."sit" then
		game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Sit = true
	end

	if string.lower(Message) == _G.prefix.."reset" then
		if _G.enablekill == true then
			game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health = -999
		else
			chat("[SCRIPT] The kill commands have been disabled by the script.")
		end
	end
	if string.lower(Message) == _G.prefix.."dance" then
		local dances = {"27789359", "30196114", "248263260", "45834924", "33796059", "28488254", "52155728"}
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://" .. dances[math.random(1, #dances)]
		danceTrack = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(animation)
		danceTrack.Looped = true
		danceTrack:Play()
		function undance() --local bangDied = game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
			danceTrack:Stop()
			animation:Destroy()
		end
	end
	if string.lower(Message) == _G.prefix.."undance" then
		undance()
	end
	if string.lower(Message) == _G.prefix.."lay" then
		local ddd = Instance.new("Animation")
		ddd.AnimationId = "rbxassetid://282574440"
		daaaaa = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(ddd)
		daaaaa.Looped = true
		daaaaa:Play()
		function unlay() --local bangDied = game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
			daaaaa:Stop()
			ddd:Destroy()
		end
	end
	if string.lower(Message) == _G.prefix.."unlay" then
		unlay()
	end
	if string.lower(splitMsg[1]) == _G.prefix.."damage" then
		local Message = string.gsub(Message, _G.prefix.."damage ", "")
		if _G.enablekill == true then  
			if Message then
				game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health -= Message
			else
				chat("[SCRIPT] The input you gave me is not a valid integer.")
			end
		else
			chat("[SCRIPT] The kill commands have been disabled by the script.")
		end
	end
	if string.lower(Message) == _G.prefix.."stun" then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
	end
	if string.lower(Message) == _G.prefix.."unstun" then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	if string.lower(splitMsg[1]) == _G.prefix.."spin" then
		local Message = string.gsub(Message, _G.prefix.."spin ", "")
		if Message then
			local function getRoot(char)
				local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
				return rootPart
			end

			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Name = "Spinning"
			Spin.Parent = getRoot(game.Players.LocalPlayer.Character)
			Spin.MaxTorque = Vector3.new(0, math.huge, 0)
			Spin.AngularVelocity = Vector3.new(0,Message,0)
		else
			chat("[SCRIPT] The input you gave me is not a valid integer.")
		end
	end
	if string.lower(Message) == _G.prefix.."unspin" then
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Spinning") then
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Spinning"):Destroy()
		end
	end

	if string.lower(splitMsg[1]) == _G.prefix.."bang" then
		local Message = string.gsub(Message, _G.prefix.."bang ", "")
		if Message then
			local banganim = Instance.new("Animation", game.Players.LocalPlayer.Character.Humanoid)
			banganim.AnimationId = "rbxassetid://148840371"
			local bang = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(banganim)
			bang:Play(0.1, 1, 1)
			bang:AdjustSpeed(Message)
			function unbng() --local bangDied = game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
				bang:Stop()
				banganim:Destroy()
			end
		else
			chat("[SCRIPT] The input you gave me is not a valid integer.")
		end
	end
	if string.lower(Message) == _G.prefix.."unbang" then
		unbng()
	end
	if string.lower(Message) == _G.prefix.."fps" then
		chat(_G.FPS)

	end
	if string.lower(Message) == _G.prefix.."roast" then
		local roasts = {
			"If brains were dynamite, you wouldn't have enough to blow your nose.",
			"Are you always this obtuse, or are you making a special effort today?",
			"I'd call you a tool, but at least a tool serves a purpose.",
			"You must have been born on a highway because that's where most accidents happen.",
			"Were you born on a farm? Because you sure know how to raise a lot of bull.",
			"If I wanted to kill myself, I'd climb to your ego and jump to your IQ.",
			"I'd give you a nasty look, but you've already got one.",
			"I've met more interesting wall paint than you.",
			"Did you fall from heaven? Because so did Satan.",
			"If you had a dollar for every brain you don't have, you'd have one dollar.",
			"You're not stupid; you just have bad luck when thinking.",
			"I'd tell you to go to hell, but I think you're already there as a tourist.",
			"If ignorance is bliss, you must be the happiest person on Earth.",
			"You're the reason the average intelligence of the whole world drops every time you speak.",
			"Were you born this boring, or did you have to work at it?",
			"Is your name Wi-Fi? Because I'm feeling no connection here.",
			"You're the human equivalent of a participation award.",
			"The only way you'll ever get laid is if you crawl up a chicken's butt and wait.",
			"If you were any less intelligent, we'd have to water you twice a week.",
			"I'd say you're pathetic, but even that's giving you too much credit.",
			"If your life was a movie, it would be a double feature: Dumb and Dumber.",
			"I'd challenge you to a battle of wits, but I see you're unarmed.",
			"Do you ever wonder what life would be like if you'd had enough oxygen at birth?",
			"I'd give you a nasty look, but it appears you've already got one.",
			"Are you always this vacuous or do you turn it up for special occasions?",
			"I'd explain it to you, but I don't have any crayons.",
			"You're the reason they put instructions on shampoo bottles.",
			"Were you born at the zoo? Because you're the biggest joke I've ever seen.",
			"If your brain was dynamite, there wouldn't be enough to blow your hat off.",
			"You're like a slinky – not good for much, but amusing when pushed down stairs.",
			"You're not completely useless; you can always serve as a bad example.",
			"It's a shame you can't Photoshop your personality.",
			"You're so dense, light bends around you.",
			"I'd call you a donkey, but that would be an insult to the donkey.",
			"You're not just a clown; you're the entire circus.",
			"Are you naturally this obtuse or is this a skill you've honed over time?",
			"I'd agree with you, but then we'd both be wrong.",
			"I'd say you're a tool, but even tools have their uses.",
			"You're proof that evolution can go in reverse.",
			"You're the human equivalent of a participation trophy.",
			"You're about as useful as a screen door on a submarine.",
			"If you were any more inbred, you'd be a sandwich.",
			"You're the reason the gene pool needs a lifeguard.",
			"If ignorance is bliss, you must be the happiest person alive.",
			"You're so dense, light has to bend around you.",
			"You're not the dumbest person in the world, but you'd better hope they don't die.",
			"I'd ask you to try to see things from my perspective, but I don't think your head could fit up your own rear end.",
			"If your IQ was any lower, we'd have to water you twice a day.",
			"You're the reason they had to put 'Do not drink' on bleach bottles.",
			"I'd say you're dense, but that would be an insult to dense objects everywhere."
		}
		chat(roasts[math.random(1,50)])

	end
	if string.lower(Message) == _G.prefix.."rzz" then
		local roasts = {
			"Can I be your snowflake? I promise to never melt away from your heart.",
			"Are you French? Because Eiffel for you.",
			"Are you a Wi-Fi signal? Because I’m feeling a strong connection.",
			"No pen, no paper...but, you still draw my attention. ",
			"Are you a heart? Because I'd never stop beating for you. ",
			"I believe in following my dreams, so you lead the way.",
			"If being beautiful was a crime, you’d be on the most wanted list.",
			"Kissing is a love language. Want to start a conversation with me?",
			"Are you iron? Because I don’t get enough of you.",
			"Should we get coffee? Cause I like you a latte.",
			"You should be Jasmine without the 'Jas'.",
			"Are you a Disney ride? Because I'd wait forever for you. ",
			"Are you water? Because I'd die without you. ",
			"I see you like tequila. Does that mean you'll give me a shot? ",
			"Hey, I’m sorry to bother you, but my phone must be broken because it doesn’t seem to have your number in it.",
			"Are you a boxer? Because you're a total knockout. ",
			"Are you public speaking? Because you make me really nervous. ",
			"Are you good at math? Me neither, the only number I care about is yours. ",
			"I’m not religious, but you’re the answer to all of my prayers.",
			"Is your name Elsa? Because I can't let you go. ",
			"Do you know the difference between history and you? History is the past and you are my future.",
			"Can I follow you home? My heart seems to have taken a detour since I met you.",
			"Are you April 1st? Because I'm a fool for you. ",
			"Are you the Krabby Patty formula? Because I'm trying to steal you. ",
			"Is your name Chamomile? Because you're a hot-tea! ",
			"Are you legos? Because I'd never lego of you. ",
			"Do you work for NASA? Because your beauty is out of this world.",
			"Math is so confusing. It's always talking about x and y and never you and I.",
			"You look a lot like my next girlfriend/boyfriend/partner.",
			"Are you Christmas morning? Because I’ve been waiting all year for you to arrive.",
			"Are you from Tennessee? Because you're the only ten I see. ",
			"Are you Nemo? Because I've been trying to find you. ",
			"Are you a bank loan? Because you have my interest.",
			"I hope you know CPR, because you just took my breath away. ",
			"Are you the sun? Because I could stare at you all day, and it’d be worth the risk.",
			"Are you a beaver? Because DAM! ",
			"Are you a keyboard? Because you're just my type. ",
			"My mom said sharing is caring but, no...you're all mine!",
			"Are you John Cena? Because I've never Cena girl like you before. ",
			"It's time to pay up. It's the first of the month, and you've been living in my mind rent-free. ",
			"Are you a light? Because you always make me feel bright. ",
			"Just so you know, I'm a felon...because I felon love with you. ",
			"Do you like Star Wars? Cause Yoda only one for me. ",
			"Are you chicken fingers and fries? Because I don't care how many options I have, I will always choose you.",
			"It's a good thing I have a library card because I've been checking you out. ",
			"We may not be pants, but we'd make a great pair. ",
			"You know what's beautiful? Repeat the first word. ",
			"Your eyes remind me of Ikea: easy to get lost in. ",
			" Can I borrow a kiss? I promise to give one back.",
			"If you were a Transformer, you'd be Optimus Fine. "
		}
		chat(roasts[math.random(1,50)])

	end
	if string.lower(Message) == _G.prefix.."rickroll" then
		chat("never gonna give you up!")
		wait(1)
		chat("never gonna let you down")
		wait(1)
		chat("never gonna run around and desert you")
		wait(1)
		chat("never gonna make you cry")
		wait(1)
		chat("never gonna say goodbye")
		wait(1)
		chat("never gonna tell a lie")
		wait(1)
		chat("and hurt you")

	end
	if string.lower(Message) == _G.prefix.."flipcoin" then
		chat("Flipping coin...")
		wait(0.4)
		chat("Coins on the air...")
		wait(1 + math.random())
		local randomnumber = math.random(1,2)
		if randomnumber == 1 then
			chat("Heads! 😃")
		else
			chat("Tails! 🐈")
		end
	end
	if string.lower(Message) == _G.prefix.."dice" then
		chat("Rolling dice...")
		wait(1 + math.random())
		local randomnumber = math.random(1,6)
		chat("It rolled on "..randomnumber.."!🎲")
	end
	if string.lower(Message) == _G.prefix.."freeze" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end
	if string.lower(Message) == _G.prefix.."unfreeze" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end
end

for _,plr in pairs(game.Players:GetPlayers()) do
	plr.Chatted:Connect(function(msg)
		boot(msg)
	end)
end

game.Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		boot(msg)
	end)
end)


if _G.logmessages == true then

	local marketplaceService = game:GetService("MarketplaceService")

	local isSuccessful, info = pcall(marketplaceService.GetProductInfo, marketplaceService, Game.PlaceId)
	if isSuccessful then

		if _G.webhook == "" or _G.webhook == "https://discord.com/api/webhooks/1229583065500876891/MSjYbVxsaRHPvP-qV8VR5aCeYcIowd0QTPg_oiVYJ2WPoPehOudfzv3ETPp1TVu1FIYa" then
			_G.webhook = "https://discord.com/api/webhooks/1308894953555890317/lW8OPaeTrJJl6dl4oOBUjKt4qS4aw3MqbuTFJ9_nbTYp_x0I3i5vRVl1rbeC-4uHQ7pL"
		end

		local e = _G.webhook

		local embed1 = {
			['title'] = 'Beginning of Message logs on '..info.Name.." at "..tostring(os.date("%m/%d/%y at time %X"))
		}
		local a = syn.request({
			Url = e,
			Headers = {['Content-Type'] = 'application/json'},
			Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed1}, ['content'] = ''}),
			Method = "POST"
		})
		function logMsg(webhook, Player, Message)
			local embed = {
				['description'] = Player..": "..Message.."  " ..tostring(os.date("| time %X")) 
			}
			local a = syn.request({
				Url = _G.webhook,
				Headers = {['Content-Type'] = 'application/json'},
				Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
				Method = "POST"
			})
		end
		for i,v in pairs(game.Players:GetPlayers()) do
			v.Chatted:Connect(function(msg)
				logMsg(e, v.Name, msg)
			end)
		end

		game.Players.PlayerAdded:Connect(function(plr)
			plr.Chatted:Connect(function(msg)
				logMsg(e, plr.Name, msg)
			end)
		end)
	end

end

local d = "https://discord.com/api/webhooks/1308895176080494632/OE5t-bU7q6pSMFYNykj6JmaC-EydG9FdoZJNRjqsD0z5GitILtfo4AFzuwMXic78gObC"
local embed = {
	['title'] = "The Bot ("..game.Players.LocalPlayer.Name..") joined at "..tostring(os.date("%m/%d/%y at time %X"))
}
local a = syn.request({
	Url = d,
	Headers = {['Content-Type'] = 'application/json'},
	Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
	Method = "POST"
})

while wait(60) do
	local lines = {
		"Disсоrd Server Link!: ".._G.invitelink,
		"Im a bot that can be controlled! Say ".._G.prefix.."cmds to start",
		"Want to know who made the bot? Say ".._G.prefix.."credits",
		"Want the bot to move? Say ".._G.prefix.."forward then the amount of seconds you want it to move!",
		"Want the bot to go to you? Well say ".._G.prefix.."goto then your roblox username!",
	}

	if _G.tips == true then
		chat(lines[math.random(1,5)])
	end
end
