main()
{
	// needs to be first for CreateFX
	maps\mp\mp_stalingrad_fx::main();
	maps\mp\createart\mp_stalingrad_art::main();

	maps\mp\_load::main();

 	// maps\mp\mp_stalingrad_amb::main();
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_stalingrad");
	
	//setExpFog(300, 1400, 0.5, 0.5, 0.5, 0);
	VisionSetNaked( "mp_stalingrad" );
	//ambientPlay("ambient_cargoshipmp_ext");

	// If the team nationalites change in this file,
	// you must update the team nationality in the level's csc file as well!
	game["allies"] = "russian";
	game["axis"] = "german";
	game["attackers"] = "allies";
	game["defenders"] = "axis";
	game["allies_soldiertype"] = "german";
	game["axis_soldiertype"] = "german";
	
	game["strings"]["war_callsign_a"] = &"PATCH_CALLSIGN_STALINGRAD_A";
	game["strings"]["war_callsign_b"] = &"PATCH_CALLSIGN_STALINGRAD_B";
	game["strings"]["war_callsign_c"] = &"PATCH_CALLSIGN_STALINGRAD_C";
	game["strings"]["war_callsign_d"] = &"PATCH_CALLSIGN_STALINGRAD_D";
	game["strings"]["war_callsign_e"] = &"PATCH_CALLSIGN_STALINGRAD_E";

	game["strings_menu"]["war_callsign_a"] = "@PATCH_CALLSIGN_STALINGRAD_A";
	game["strings_menu"]["war_callsign_b"] = "@PATCH_CALLSIGN_STALINGRAD_B";
	game["strings_menu"]["war_callsign_c"] = "@PATCH_CALLSIGN_STALINGRAD_C";
	game["strings_menu"]["war_callsign_d"] = "@PATCH_CALLSIGN_STALINGRAD_D";
	game["strings_menu"]["war_callsign_e"] = "@PATCH_CALLSIGN_STALINGRAD_E";

	setdvar( "r_specularcolorscale", "1" );

	setdvar("compassmaxrange","2100");
	
	// enable new spawning system
	maps\mp\gametypes\_spawning::level_use_unified_spawning(true);
	

}
