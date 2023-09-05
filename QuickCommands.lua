function AudioRestart() --Restart the audio process if you've changed your audio device in Windows
	Sound_GameSystem_RestartSoundSystem()
end

function GreatVault() --Show the great vault UI anywhere
	LoadAddOn("Blizzard_WeeklyRewards")
	WeeklyRewardsFrame:Show()
end

function Reload() --Reload the UI
	ReloadUI()
end

SLASH_AR1 = '/ar'
SLASH_GV1 = '/gv'
SLASH_RL1 = '/rl'
SlashCmdList["RL"] = Reload
SlashCmdList["AR"] = AudioRestart
SlashCmdList["GV"] = GreatVault
