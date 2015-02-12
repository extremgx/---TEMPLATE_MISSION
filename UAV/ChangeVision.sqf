if ( isUAVCamActive ) then							// check if UAVCam is active
{
	_index = currentPiPEffectIndex;					// Current PiP Effect as int. 
	_visionThermalEnabled = if (("ThermalVision" call BIS_fnc_getParamValue) == 0) then {true;} else {false};
	
	// There are 8 different PiP effects but only 0,1,2 and 7 are working as the wiki says, 
	//
	switch (_index) do 
	{
		case 0: { _index = _index + 1; };
		case 1: { _index = _index + 1; if (!_visionThermalEnabled) then {_index = 0};};
		case 2: { _index = 7; if (!_visionThermalEnabled) then {_index = 0};};
		case 7: { _index = 0;};
		default {_index = 0; hint "There was an error in UAV\ChangeVision.sqf. _index was set to default 0, because it had a bad value."};
	};

	currentPiPEffectIndex = _index;					// Update the global variable for the next use
	"rendertarget1" setPiPEffect [_index];			// Update the PiP Effekt with the next index
};