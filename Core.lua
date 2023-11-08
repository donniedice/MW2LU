-- v1.0.8

-- Event function level up

-- Frame A: Play sound on player level up
local frame_a = CreateFrame("Frame")
frame_a:RegisterEvent("PLAYER_LEVEL_UP")
frame_a:SetScript("OnEvent", function(self, event, ...)
	PlaySoundFile("Interface\\Addons\\MW2LU\\MW2LU.ogg", "Master") -- Play sound file when player levels up
end)

-- Frame B: Mute default level up sound
local frame_b = CreateFrame("Frame")
frame_b:RegisterEvent("ADDON_LOADED")
frame_b:SetScript("OnEvent", function(self, event, ...)
	MuteSoundFile(569593) -- Mute default level up sound
end)

-- Frame C: Display chat message on player login
local frame_c = CreateFrame("Frame")
frame_c:RegisterEvent("PLAYER_LOGIN")
frame_c:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		print("|cff4f4f4fMW2LU - Modern Warfare 2 Level Up!|r Will no longer be receiving updates. Functionality has been merged into |c2d4b92ffBLU - Better Level Up!|r. If you're a fan of my sound addons, |c2d4b92ffBLU - Better Level Up!|r is available from all addon provider websites. Thank you!") -- Display chat message on player login
	end
end)
