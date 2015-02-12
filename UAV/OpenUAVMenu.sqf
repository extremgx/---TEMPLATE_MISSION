nul = [] execVM "UAV\SetUpUAVForLifeFeed.sqf";
if (isNil "uavsInitialized") then { uavsInitialized = false; };
waitUntil {if(uavsInitialized) exitWith {true};};

if ( side player == west ) then
{
	aUAV = aUAVSideB;
};

if ( side player == east ) then
{
	aUAV = aUAVSideO;
};
if ( side player == resistance ) then
{
	aUAV = aUAVSideI;
};

_handle = createDialog "DialogUAVMenu";
//systemChat "init DialogUAVMenu...";
disableSerialization;
_display = findDisplay 1337;
_listBox = _display displayCtrl 1500;

lbClear _listBox;
{
	_index = _listBox lbAdd (str _x);
	//_selectedItem = _listBox lbText _index;
	//_selectedItemObj = missionNamespace getVariable _x;
	_typeOfUAV = typeOf _x;
	_selectedItemIconPath = getText(configfile >> "CfgVehicles" >> _typeOfUAV >> "icon");
	
	_listBox lbSetPicture [_index, _selectedItemIconPath];
	
	_listBox lbSetPictureColor [_index, [1, 1, 1, 1]];
}forEach aUAV;

lbSort [_listBox, "ASC"];
