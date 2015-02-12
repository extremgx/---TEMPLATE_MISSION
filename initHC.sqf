if !(hasInterface or isServer) then
{
	HeadlessVariable = true;
	publicVariable "HeadlessVariable";
	execVM "script.sqf";
};