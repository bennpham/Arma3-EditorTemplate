call compile preProcessFileLineNumbers "scripts\briefing.sqf";

_PsychoRevive = "PsychoRevive" call BIS_fnc_getParamValue;
if (_PsychoRevive == 1) then {
	if (!isDedicated) then {
		[] spawn {
			TCB_AIS_PATH = "ais_injury\";
			{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});
		};
	};
};

call compile preProcessFileLineNumbers "scripts\infotext.sqf";
// call compile preProcessFileLineNumbers "scripts\infotext_alt.sqf";