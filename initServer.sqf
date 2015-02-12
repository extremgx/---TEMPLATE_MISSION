// Init Array for UAV Menu 
if (isNil "aUAV") then { aUAV = []; publicVariable "aUAV"; };
// Init Bool for Alarm when convoy should start.
if (isNil "alarm") then { alarm = false; publicVariable "alarm"; };

if (isServer) then
{
	cargo1 addItemCargoGlobal ["ACRE_PRC148", 100];
	cargo2 addItemCargoGlobal ["ACRE_PRC148", 100];
};

serverInitialized = true;
publicVariable "serverInitialized";

sleep 10;

if (isNil "HeadlessVariable") then
{
	execVM "script.sqf";
};