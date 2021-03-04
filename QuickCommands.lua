function AudioRestart() --Restart the audio process if you've changed your audio device in Windows
	AudioOptionsFrame_AudioRestart()
end

function GreatVault() --Show the great vault UI anywhere
	LoadAddOn("Blizzard_WeeklyRewards")
	WeeklyRewardsFrame:Show()
end

SLASH_AR1 = '/ar'
SLASH_GV1 = '/gv'
SlashCmdList["AR"] = AudioRestart
SlashCmdList["GV"] = GreatVault
