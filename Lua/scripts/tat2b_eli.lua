--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
--

ScriptCB_DoFile("setup_teams")
ScriptCB_DoFile("ObjectiveConquest")

function ScriptPostLoad()
    --This defines the CPs.  These need to happen first
    SetProperty("FDL-2", "IsLocked", 1)
    cp1 = CommandPost:New{name = "cp1"}
    cp2 = CommandPost:New{name = "cp2"}
    cp3 = CommandPost:New{name = "cp3"}
	cp6 = CommandPost:New{name = "cp6"}
	cp7 = CommandPost:New{name = "cp7"}
	cp8 = CommandPost:New{name = "cp8"}

    
    --This sets up the actual objective.  This needs to happen after cp's are defined
    conquest = ObjectiveConquest:New{teamATT = ATT, teamDEF = DEF, textATT = "game.modes.con", textDEF = "game.modes.con2", multiplayerRules = true}
    
    --This adds the CPs to the objective.  This needs to happen after the objective is set up
	conquest:AddCommandPost(cp1)
	conquest:AddCommandPost(cp2)
	conquest:AddCommandPost(cp3)

	conquest:AddCommandPost(cp6)
	conquest:AddCommandPost(cp7)
	conquest:AddCommandPost(cp8)


	conquest:Start()
	 AddAIGoal(1, "conquest", 1000)
	 AddAIGoal(2, "conquest", 1000)
	 AddAIGoal(3, "conquest", 1000)
	EnableSPHeroRules()
end

---------------------------------------------------------------------------
-- FUNCTION:    ScriptInit
-- PURPOSE:     This function is only run once
-- INPUT:
-- OUTPUT:
-- NOTES:       The name, 'ScriptInit' is a chosen convention, and each
--              mission script must contain a version of this function, as
--              it is called from C to start the mission.
---------------------------------------------------------------------------

function ScriptInit()
    -- Designers, these two lines *MUST* be first!
    StealArtistHeap(1024 * 1024)
    SetPS2ModelMemory(2097152 + 65536 * 10)
	ReadDataFile("dc:ingame.lvl")
    ReadDataFile("ingame.lvl")

    --  Empire Attacking (attacker is always #1)
    local ALL = 2
    local IMP = 1
    --  These variables do not change
    local ATT = 1
    local DEF = 2

    AddMissionObjective(IMP, "red", "level.tat2.objectives.1")
    --  AddMissionObjective(IMP, "orange", "level.tat2.objectives.2")
    AddMissionObjective(ALL, "green", "level.tat2.objectives.1b")
    --  AddMissionObjective(ALL, "orange", "level.tat2.objectives.3")


    SetMaxFlyHeight(40)
	SetMaxPlayerFlyHeight(40)
	
	SetMemoryPoolSize ("ClothData",20)
    SetMemoryPoolSize ("Combo",30)              -- should be ~ 2x number of jedi classes
    SetMemoryPoolSize ("Combo::State",500)      -- should be ~12x #Combo
    SetMemoryPoolSize ("Combo::Transition",500) -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Condition",500)  -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Attack",400)     -- should be ~8-12x #Combo
    SetMemoryPoolSize ("Combo::DamageSample",4000)  -- should be ~8-12x #Combo::Attack
    SetMemoryPoolSize ("Combo::Deflect",88)     -- should be ~1x #combo
	
	ReadDataFile("dc:sound\\USM.lvl;USMcw")
	ReadDataFile("sound\\fel.lvl;fel1cw")
    ReadDataFile("sound\\tat.lvl;tat2gcw")
                    
    ReadDataFile("SIDE\\imp.lvl",
                    "imp_fly_destroyer_dome" )
					
	ReadDataFile("dc:SIDE\\imp.lvl",
				"interface_",
                "imp_eli")
				
	ReadDataFile("dc:SIDE\\rep.lvl",
                "rep_gcw_eli")
					
	ReadDataFile("dc:SIDE\\all.lvl",
				"all_eli")
		
	ReadDataFile("SIDE\\imp.lvl",
				"imp_hero_emperor",
				"imp_hero_darthvader")
				
	ReadDataFile("SIDE\\rep.lvl",
		"rep_hero_yoda")

    ReadDataFile("SIDE\\des.lvl",
                             "tat_inf_jawa")

    -- Jawas --------------------------
    SetTeamName (3, "locals")
    AddUnitClass (3, "tat_inf_jawa", 7)
    SetUnitCount (3, 7)
    SetTeamAsFriend(3,ATT)
    SetTeamAsFriend(3,DEF)
    SetTeamAsFriend(ATT,3)
    SetTeamAsFriend(DEF,3)
	-----------------------------------

	ReadDataFile("dc:SIDE\\tur.lvl",
						"tur_bldg_tat_barge",	
						"tur_bldg_laser")	
 
	SetupTeams{
		all = {
			team = ALL,
			units = 28,
			reinforcements = 150,
			soldier  = { "all_hero_han_np",4, 10},
            assault  = { "all_inf_chewie_np",4, 10},
            engineer = { "all_hero_wedge_np",4, 10},
            sniper   = { "all_hero_nien_np",4, 10},
            officer = {"all_hero_leia_np",4, 10},
            special = { "all_hero_luke_jedi_np",4, 10},

		},
		imp = {
			team = IMP,
			units = 28,
			reinforcements = 150,
			soldier  = { "imp_hero_boba_np",4, 10},
            assault  = { "imp_hero_greedo_np",4, 10},
            engineer = { "imp_hero_darthvader_np",4, 10},
            sniper   = { "rep_hero_palp_np",4, 10},
            officer = {"imp_hero_iden_np",4, 10},
            special = { "imp_hero_bossc_np",4, 10},
		},
	}
    
	AddUnitClass(ALL, "rep_hero_masteryoda_np",4,10)
	--AddUnitClass(ALL, "rep_hero_jinn_np",4,10)
	--AddUnitClass(ALL, "rep_inf_padme_np",4,10)
	--AddUnitClass(ALL, "rep_hero_masteryoda_np",4,10)
	 
	AddUnitClass(IMP, "imp_hero_dengar_np",1,2)
	-- AddUnitClass(IMP, "imp_hero_boba",1,2)


    --  Level Stats
    ClearWalkers()
    AddWalkerType(0, 0) -- special -> droidekas
    AddWalkerType(1, 0) -- 1x2 (1 pair of legs)
    AddWalkerType(2, 0) -- 2x2 (2 pairs of legs)
    AddWalkerType(3, 0) -- 3x2 (3 pairs of legs)
    SetMemoryPoolSize("Aimer", 14)
	SetMemoryPoolSize("EntityCloth", 25)
	SetMemoryPoolSize("EntityFlyer", 6) -- to account for rocket upgrade
    SetMemoryPoolSize("MountedTurret", 14)
    SetMemoryPoolSize("Obstacle", 664)
    SetMemoryPoolSize("PathNode", 384)
    SetMemoryPoolSize("TreeGridStack", 500)

    SetSpawnDelay(10.0, 0.25)
    ReadDataFile("TAT\\tat2.lvl", "tat2_con")
    SetDenseEnvironment("false")


    --  Sound Stats
    
    voiceSlow = OpenAudioStream("sound\\global.lvl", "all_unit_vo_slow")
    AudioStreamAppendSegments("sound\\global.lvl", "imp_unit_vo_slow", voiceSlow)
    AudioStreamAppendSegments("sound\\global.lvl", "des_unit_vo_slow", voiceSlow)
    AudioStreamAppendSegments("sound\\global.lvl", "global_vo_slow", voiceSlow)
    
    voiceQuick = OpenAudioStream("sound\\global.lvl",  "all_unit_vo_quick")
    AudioStreamAppendSegments("sound\\global.lvl",  "imp_unit_vo_quick", voiceQuick)    
    
    OpenAudioStream("sound\\global.lvl",  "gcw_music")
    OpenAudioStream("sound\\tat.lvl",  "tat2")
    OpenAudioStream("sound\\tat.lvl",  "tat2")
    -- OpenAudioStream("sound\\global.lvl",  "global_vo_quick")
    -- OpenAudioStream("sound\\global.lvl",  "global_vo_slow")

    SetBleedingVoiceOver(ALL, ALL, "all_off_com_report_us_overwhelmed", 1)
    SetBleedingVoiceOver(ALL, IMP, "all_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(IMP, ALL, "imp_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(IMP, IMP, "imp_off_com_report_us_overwhelmed", 1)

    SetLowReinforcementsVoiceOver(ALL, ALL, "all_off_defeat_im", .1, 1)
    SetLowReinforcementsVoiceOver(ALL, IMP, "all_off_victory_im", .1, 1)
    SetLowReinforcementsVoiceOver(IMP, IMP, "imp_off_defeat_im", .1, 1)
    SetLowReinforcementsVoiceOver(IMP, ALL, "imp_off_victory_im", .1, 1)

    SetOutOfBoundsVoiceOver(2, "Allleaving")
    SetOutOfBoundsVoiceOver(1, "Impleaving")

    SetAmbientMusic(ALL, 1.0, "all_tat_amb_start",  0,1)
    SetAmbientMusic(ALL, 0.8, "all_tat_amb_middle", 1,1)
    SetAmbientMusic(ALL, 0.2, "all_tat_amb_end",    2,1)
    SetAmbientMusic(IMP, 1.0, "imp_tat_amb_start",  0,1)
    SetAmbientMusic(IMP, 0.8, "imp_tat_amb_middle", 1,1)
    SetAmbientMusic(IMP, 0.2, "imp_tat_amb_end",    2,1)

    SetVictoryMusic(ALL, "all_tat_amb_victory")
    SetDefeatMusic (ALL, "all_tat_amb_defeat")
    SetVictoryMusic(IMP, "imp_tat_amb_victory")
    SetDefeatMusic (IMP, "imp_tat_amb_defeat")

    SetSoundEffect("ScopeDisplayZoomIn",  "binocularzoomin")
    SetSoundEffect("ScopeDisplayZoomOut", "binocularzoomout")
    --SetSoundEffect("WeaponUnableSelect",  "com_weap_inf_weaponchange_null")
    --SetSoundEffect("WeaponModeUnableSelect",  "com_weap_inf_modechange_null")
    SetSoundEffect("SpawnDisplayUnitChange",       "shell_select_unit")
    SetSoundEffect("SpawnDisplayUnitAccept",       "shell_menu_enter")
    SetSoundEffect("SpawnDisplaySpawnPointChange", "shell_select_change")
    SetSoundEffect("SpawnDisplaySpawnPointAccept", "shell_menu_enter")
    SetSoundEffect("SpawnDisplayBack",             "shell_menu_exit")



    SetAttackingTeam(ATT)

    --  Camera Stats
    --Tat2 Mos Eisley
	AddCameraShot(0.974338, -0.222180, 0.035172, 0.008020, -82.664650, 23.668301, 43.955681);
	AddCameraShot(0.390197, -0.089729, -0.893040, -0.205362, 23.563562, 12.914885, -101.465561);
	AddCameraShot(0.169759, 0.002225, -0.985398, 0.012916, 126.972809, 4.039628, -22.020613);
	AddCameraShot(0.677453, -0.041535, 0.733016, 0.044942, 97.517807, 4.039628, 36.853477);
	AddCameraShot(0.866029, -0.156506, 0.467299, 0.084449, 7.685640, 7.130688, -10.895234);
end
