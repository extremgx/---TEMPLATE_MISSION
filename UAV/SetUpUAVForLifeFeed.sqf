aUAVSideB = [];
aUAVSideO = [];
aUAVSideI = [];

{
	if ( side _x == west ) then
	{
		_arrayLength = count aUAVSideB;
		aUAVSideB set [_arrayLength, _x];
	};
	
	if ( side _x == east ) then
	{
		_arrayLength = count aUAVSideO;
		aUAVSideO set [_arrayLength, _x];
	};
	
	if ( side _x == resistance ) then
	{
		_arrayLength = count aUAVSideI;
		aUAVSideI set [_arrayLength, _x];
	};
} forEach allUnitsUAV;

uavsInitialized = true;