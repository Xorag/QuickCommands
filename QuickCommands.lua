function AudioRestart() --Restart the audio process if you've change your audio device in Windows
	AudioOptionsFrame_AudioRestart()
end

function GreatVault() --Show the great vault UI anywhere
	LoadAddOn("Blizzard_WeeklyRewards")
	WeeklyRewardsFrame:Show()
end

function Mount() --Handy mount function for the maw and a favorite everywhere else in non-flying areas
	in_instance, _ = IsInInstance()

	if IsMounted() then
		Dismount()
	elseif GetZoneText() == "The Maw" then
		C_MountJournal.SummonByID(1442) --Corridor Creeper
	elseif IsFlyableArea() and not in_instance then
		C_MountJournal.SummonByID(0) --Random Favorite
	else
		if math.random(1,100) <= 50 then
			C_MountJournal.SummonByID(111) --Summon Zulian Tiger
		else
			C_MountJournal.SummonByID(1419) --Sintouched Deathwalker
		end
	end
end

SLASH_AR1 = '/ar'
SLASH_GV1 = '/gv'
SLASH_MNT1 = '/mnt'
SlashCmdList["AR"] = AudioRestart
SlashCmdList["GV"] = GreatVault
SlashCmdList["MNT"] = Mount
