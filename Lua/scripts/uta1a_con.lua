--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
--
ScriptCB_DoFile("setup_teams")
-- load the gametype script
ScriptCB_DoFile("ObjectiveConquest")

ScriptCB_DoFile("forceVehicle") 

	local CIS = 1
	local REP = 2
--  These variables do not change
    local ATT = 1
    local DEF = 2
----------------------------------------------------------------------
-- FUNCTION:    ScriptInit
-- PURPOSE:     This function is only run once
-- INPUT:
-- OUTPUT:
-- NOTES:       The name, 'ScriptInit' is a chosen convention, and each
--              mission script must contain a version of this function, as
--              it is called from C to start the mission.
---------------------------------------------------------------------------
function ScriptPostLoad()

    EnableSPHeroRules()
    
    --CP SETUP for CONQUEST

    cp1 = CommandPost:New{name = "CON_CP1"}
    cp2 = CommandPost:New{name = "con_CP1a"}
    cp3 = CommandPost:New{name = "CON_CP2"}
    cp4 = CommandPost:New{name = "CON_CP5"}
    cp5 = CommandPost:New{name = "CON_CP6"}
	cp6 = CommandPost:New{name = "CON_CP7"}

    conquest = ObjectiveConquest:New{teamATT = ATT, teamDEF = DEF, textATT = "game.modes.con", textDEF = "game.modes.con2", multiplayerRules = true}
    
    conquest:AddCommandPost(cp1)
    conquest:AddCommandPost(cp2)
    conquest:AddCommandPost(cp3)
    conquest:AddCommandPost(cp4)
    conquest:AddCommandPost(cp5)
    conquest:AddCommandPost(cp6)
	
	--onfirstspawn = OnCharacterSpawn( 
    --    function(character)
		
	--			forceVehicle(character, "cis_inf_rocketeer", "cis_walk_dwarfspider")
				
    --    end
	--	)
   
    conquest:Start()
    DisableBarriers("Barrier445");
 end
function ScriptInit()
    -- Designers, these two lines *MUST* be first!
    StealArtistHeap(1228*1024)
    SetPS2ModelMemory(4380000)
	ReadDataFile("dc:ingame.lvl")
    ReadDataFile("ingame.lvl")

    --  Republic Attacking (attacker is always #1)
    SetTeamAggressiveness(REP, 0.95)
    SetTeamAggressiveness(CIS, 0.95)

	ReadDataFile("dc:sound\\USM.lvl;USMcw")

    ReadDataFile("sound\\uta.lvl;uta1cw")
	
	SetMemoryPoolSize ("ClothData",80)
    SetMemoryPoolSize ("Combo",80)              -- should be ~ 2x number of jedi classes
    SetMemoryPoolSize ("Combo::State",1600)      -- should be ~12x #Combo
    SetMemoryPoolSize ("Combo::Transition",2000) -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Condition",2000)  -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Attack",1600)     -- should be ~8-12x #Combo
    SetMemoryPoolSize ("Combo::DamageSample",18000)  -- should be ~8-12x #Combo::Attack
    SetMemoryPoolSize ("Combo::Deflect",300)     -- should be ~1x #combo
	
	
	
	ReadDataFile("dc:SIDE\\rep.lvl",
				"rep_walk_oneman_atst",
				"interface_",
                "rep_all")

	ReadDataFile("dc:SIDE\\cis.lvl",
				"cis_all",
				"cis_hero_grievous_mod",
				"cis_hover_aat",
				"cis_destroyer")
				
	ReadDataFile("SIDE\\rep.lvl",
		"rep_hero_obiwan")
	
	ReadDataFile("SIDE\\cis.lvl",
		"cis_hero_darthmaul",
		"cis_hero_grievous")

SetupTeams{
        rep = {
	    team = REP,
	    units = 32,
	    reinforcements = 150,
	    soldier  = { "rep_inf_ep3_rifleman_212",9, 25},
		assault  = { "rep_inf_ep3_rocketeer_212",1, 4},
		engineer = { "rep_inf_ep3_sniper_212",1, 4},
		sniper   = { "rep_inf_ep3_medic_212",1, 4},
		officer = {"rep_inf_ep3_heavy_212",1, 4},
		special = { "rep_inf_spy",1, 4},
            
        },
        cis = {
	    team = CIS,
	    units = 32,
	    reinforcements = 150,
	    soldier  = { "cis_inf_rifleman",7, 25},
        assault  = { "cis_inf_rocketeer",1, 4},
        engineer = { "cis_inf_sniper",1, 4},
        sniper   = { "cis_inf_medic",1, 4},
        officer = {"cis_inf_heavy",1, 4},
        special = { "cis_inf_destroyer",1, 4},
        }
     }
	
	AddUnitClass(REP, "rep_inf_cody",1,2)
	AddUnitClass(REP, "rep_hero_kenobi",1,2)
	
	AddUnitClass(CIS, "cis_inf_magnaguard_ptc",1,2)
	AddUnitClass(CIS, "cis_hero_grievous_mod",1,2)
	--cis_walk_dwarfspider
	
	--EnterVehicle(, "cis_walk_dwarfspider")
	
	--SetHeroClass(REP, "rep_inf_cody")
	--SetHeroClass(REP, "rep_hero_obiwan")
		--SetHeroClass(CIS, "cis_hero_grievous")

    --  Level Stats
    ClearWalkers()
    AddWalkerType(0, 2)     -- droidekas
    AddWalkerType(1, 5) -- ATRTa (special case: 0 leg pairs)
    local weaponCnt = 220
    SetMemoryPoolSize("Aimer", 36)
    SetMemoryPoolSize("AmmoCounter", weaponCnt)
    SetMemoryPoolSize("BaseHint", 200)
    SetMemoryPoolSize("Combo::DamageSample", 2000)
    SetMemoryPoolSize("EnergyBar", weaponCnt)
    SetMemoryPoolSize("EntityHover",6)
    SetMemoryPoolSize("EntityLight", 60)
    SetMemoryPoolSize("EntityFlyer", 8)
    SetMemoryPoolSize("EntitySoundStream", 8)
    SetMemoryPoolSize("EntitySoundStatic", 27)
    SetMemoryPoolSize("MountedTurret", 2)
    SetMemoryPoolSize("Navigator", 40)
    SetMemoryPoolSize("Obstacle", 400)
    SetMemoryPoolSize("PathFollower", 40)
    SetMemoryPoolSize("PathNode", 150)
    SetMemoryPoolSize("TentacleSimulator", 0)
    SetMemoryPoolSize("TreeGridStack", 225)
    SetMemoryPoolSize("UnitAgent", 40)
    SetMemoryPoolSize("UnitController", 40)
    SetMemoryPoolSize("Weapon", weaponCnt)
	SetMemoryPoolSize("SoldierAnimation", 1000)
    
    SetSpawnDelay(10.0, 0.25)
    ReadDataFile("uta\\uta1.lvl", "uta1_Conquest")
    AddDeathRegion("deathregion")
    SetDenseEnvironment("false")
	SetMaxFlyHeight(29.5)
	SetMaxPlayerFlyHeight(29.5)


    --  Sound Stats
    
    voiceSlow = OpenAudioStream("sound\\global.lvl", "rep_unit_vo_slow")
    AudioStreamAppendSegments("sound\\global.lvl", "cis_unit_vo_slow", voiceSlow)
    AudioStreamAppendSegments("sound\\global.lvl", "global_vo_slow", voiceSlow)
    
    voiceQuick = OpenAudioStream("sound\\global.lvl", "rep_unit_vo_quick")
    AudioStreamAppendSegments("sound\\global.lvl", "cis_unit_vo_quick", voiceQuick)   
    
    OpenAudioStream("sound\\global.lvl",  "cw_music")
    OpenAudioStream("sound\\uta.lvl",  "uta1")
    OpenAudioStream("sound\\uta.lvl",  "uta1")
    -- OpenAudioStream("sound\\global.lvl",  "global_vo_quick")
    -- OpenAudioStream("sound\\global.lvl",  "global_vo_slow")
    -- OpenAudioStream("sound\\uta.lvl",  "uta1_emt")

    SetBleedingVoiceOver(REP, REP, "rep_off_com_report_us_overwhelmed", 1)
    SetBleedingVoiceOver(REP, CIS, "rep_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, REP, "cis_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, CIS, "cis_off_com_report_us_overwhelmed", 1)
    
    SetLowReinforcementsVoiceOver(REP, REP, "rep_off_defeat_im", .1, 1)
    SetLowReinforcementsVoiceOver(REP, CIS, "rep_off_victory_im", .1, 1)
    SetLowReinforcementsVoiceOver(CIS, CIS, "cis_off_defeat_im", .1, 1)
    SetLowReinforcementsVoiceOver(CIS, REP, "cis_off_victory_im", .1, 1)    

    SetOutOfBoundsVoiceOver(2, "Repleaving")
    SetOutOfBoundsVoiceOver(1, "Cisleaving")

    SetAmbientMusic(REP, 1.0, "rep_uta_amb_start",  0,1)
    SetAmbientMusic(REP, 0.8, "rep_uta_amb_middle", 1,1)
    SetAmbientMusic(REP, 0.2, "rep_uta_amb_end",    2,1)
    SetAmbientMusic(CIS, 1.0, "cis_uta_amb_start",  0,1)
    SetAmbientMusic(CIS, 0.8, "cis_uta_amb_middle", 1,1)
    SetAmbientMusic(CIS, 0.2, "cis_uta_amb_end",    2,1)

    SetVictoryMusic(REP, "rep_uta_amb_victory")
    SetDefeatMusic (REP, "rep_uta_amb_defeat")
    SetVictoryMusic(CIS, "cis_uta_amb_victory")
    SetDefeatMusic (CIS, "cis_uta_amb_defeat")

    SetSoundEffect("ScopeDisplayZoomIn",  "binocularzoomin")
    SetSoundEffect("ScopeDisplayZoomOut", "binocularzoomout")
    --SetSoundEffect("WeaponUnableSelect",  "com_weap_inf_weaponchange_null")
    --SetSoundEffect("WeaponModeUnableSelect",  "com_weap_inf_modechange_null")
    SetSoundEffect("SpawnDisplayUnitChange",       "shell_select_unit")
    SetSoundEffect("SpawnDisplayUnitAccept",       "shell_menu_enter")
    SetSoundEffect("SpawnDisplaySpawnPointChange", "shell_select_change")
    SetSoundEffect("SpawnDisplaySpawnPointAccept", "shell_menu_enter")
    SetSoundEffect("SpawnDisplayBack",             "shell_menu_exit")

--  Camera Stats - Utapau: Sinkhole
	AddCameraShot(-0.428091, 0.045649, -0.897494, -0.095703, 162.714951, 45.857063, 40.647118)
	AddCameraShot(-0.194861, -0.001600, -0.980796, 0.008055, -126.179787, 16.113789, 70.012894);
	AddCameraShot(-0.462548, -0.020922, -0.885442, 0.040050, -16.947638, 4.561796, 156.926956);
	AddCameraShot(0.995310, 0.024582, -0.093535, 0.002310, 38.288612, 4.561796, 243.298508);
	AddCameraShot(0.827070, 0.017093, 0.561719, -0.011609, -24.457638, 8.834146, 296.544586);
	AddCameraShot(0.998875, 0.004912, -0.047174, 0.000232, -45.868237, 2.978215, 216.217880);


end


