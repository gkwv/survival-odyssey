local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, IntroEnabled = false})
local Player = game.Players.LocalPlayer

_G.Key = "7X3V9KLDQPW2MHTY48N5ZJCF"
_G.KeyInput = "string"

function MakeScriptHub()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ZapList/survival-odyssey/refs/heads/main/so.lua'))()
end

function CorrectKeyNotification()
	OrionLib:MakeNotification({
		Name = "Success!",
		Content = "You have entered the correct key",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
end

function IncorrectKeyNotification()
	OrionLib:MakeNotification({
		Name = "Success!",
		Content = "You have entered the correct key",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
end

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name.."!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local KeyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Enter Key",
	Default = "Enter Key",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

KeyTab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
			MakeScriptHub()
			CorrectKeyNotification()
		else
			IncorrectKeyNotification()
		end
  	end    
})