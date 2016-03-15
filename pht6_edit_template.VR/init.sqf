call compile preProcessFileLineNumbers "library\fhqtt.sqf";
call compile preProcessFileLineNumbers "scripts\briefing.sqf";

if (!isDedicated) then {
	[] spawn {
		TCB_AIS_PATH = "ais_injury\";
		{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});
	};
};

call compile preProcessFileLineNumbers "scripts\infotext.sqf";
// call compile preProcessFileLineNumbers "scripts\infotext_alt.sqf";