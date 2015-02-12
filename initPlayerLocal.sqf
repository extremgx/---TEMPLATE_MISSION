// This script "initPlayerLocal.sqf" gets automatically executed. 
// Executed locally when player joins mission (includes both mission start and JIP).

// Wait Until server has initialized completely.
if (isNil "serverInitialized") then { serverInitialized = false; };
waitUntil {if(serverInitialized) exitWith {true};};

//Load Briefing
[] execVM "briefing.sqf"; 

waitUntil {time > 0};

//////////////////////////////////////////////////////////////////////////////////
//UAV Life Feed by extrem-gx BEGIN:
// The UAV Menu is a custom menu, which can show every life feed from the two UAV types and the one UGV type. All UAVs/UGVs that have a name and in the init 
// this: 
// null = [this] execVM "UAV\SetUpUAVForLifeFeed.sqf"; 
// will be able to send their camera feed to any player.
// In this mission only BLUFOR units can use the uav life feed.

player addAction["<t color='#1292E2'>UAV Menu</t>", "UAV\OpenUAVMenu.sqf"];			// Adds the UAV Menu to all players

if ( hasInterface ) then
{
	currentPiPEffectIndex = 0;
	currentCamFov = 0.7;
	isUAVCamActive = false;
};

onRscUAVLoad = {
    private ["_display","_idc","_ctrl"];
    _display = _this select 0;
    _idc = 0;
    _ctrl = _display displayCtrl _idc;
	_ctrl ctrlSetText "#(argb,256,256,1)r2t(rendertarget1,1.0)";
	//systemChat str _display;
	//systemChat str _ctrl;
    _ctrl ctrlCommit 0;
};
//UAV shizzel by extrem-gx END
//////////////////////////////////////////////////////////////////////////////////

#define BUL_UAVintro_Text "Atomic Fox"
private ["_colorWest", "_colorEast"];
_colorWest = [west] call BIS_fnc_sideColor;
_colorEast = [east] call BIS_fnc_sidecolor;
//starts the UAV orbiting above
[
    getmarkerpos "BIS_establishingShot_center",//need to create a marker called BIS_establishingShot_center
    BUL_UAVintro_Text,//spawns the text
    300,//height
    250,//radius
    190,//angle
    (random 1),//clockwise\anit-clock
    [
        ["\A3\ui_f\data\map\markers\nato\b_inf.paa", _colorWest, getpos player, 1, 1, 0, "", 0],
        ["\A3\ui_f\data\map\markers\nato\o_hq.paa", _colorEast, getmarkerpos "OPFORHQ", 1, 1, 0, "OPFOR Nuclear Facility", 0],
        ["\A3\ui_f\data\map\mapcontrol\Transmitter_CA.paa", _colorWest, getmarkerpos "BIS_establishingShot_center",  1, 1, 0, "Tarkistan - BLUFOR HQ", 0]
    ],
    0
] call BIS_fnc_establishingShot;

/////////////////////////////////////////////////////////////////////////////////////////
// NUKE RELATED STUFF
/////////////////////////////////////////////////////////////////////////////////////////
mdh_nuke_destruction_zone	= 2000;	// DESTRUCTION ZONE OF NUKE IN METERS, USE 0 TO DEACTIVATE
mdh_nuke_camshake			= 1;	// CAEMRASHAKE AT NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_ash				= 1;	// ASH AFTER NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_colorcorrection	= 1;	// COLLORCORRECTION AFTER NUKEDETONATION 1=ON, 0=OFF
/////////////////////////////////////////////////////////////////////////////////////////