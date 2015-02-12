private ["_uav"];

//_uav = _this select 0;
_display = findDisplay 1337;
_listBox = _display displayCtrl 1500;
_index = lbCurSel _listBox;
//systemChat str _index;
// If nothing isSelected, then select the first item in listbox
if ( _index == -1 ) then 
{
	_listBox lbSetSelected [0, true];
	_index = 0;	
};

_selectedItem = _listBox lbText _index;
//systemChat str _selectedItem;
// lbClear _listBox;
if ( !isNil "_selectedItem") then
{
	{
		if ( (str _x) == _selectedItem ) then
		{
			_uav = _x;
		};
	} forEach aUAV;

	currentUAV = _uav;

	if ( !isNil "uavCam") then 												// Checking if a uavCam already exists and destroying it, to prevent unused cams.
	{
		detach uavCam;
		uavCam cameraEffect ["terminate","back"];
		camDestroy uavCam;
	};

	/* create camera and stream to render surface */
	uavCam = "camera" camCreate [0,0,0];
	uavCam cameraEffect ["Internal", "Back", "rendertarget1"];

	/* attach cam to gunner cam position */
	uavCam attachTo [currentUAV, [0,0,0], "PiP0_pos"];

	/* make it zoom in a little */
	uavCam camSetFov currentCamFov;

	/* switch cam to thermal */
	"rendertarget1" setPiPEffect [currentPiPEffectIndex];

	waitUntil {uavCam != ObjNull};

	/* adjust cam orientation: For each of the different classes of UAVs/UGVs there are often different pos/dir names .... -.- ...  */ 
	_typeOfUAV = typeOf currentUAV;
	//B_UAV_01_F - AR-2 Darter
	if ((_typeOfUAV == "B_UAV_01_F") || (_typeOfUAV == "O_UAV_01_F") || (_typeOfUAV == "I_UAV_01_F") )then
	{
		addMissionEventHandler ["Draw3D",
		{
			_dir = (currentUAV selectionPosition "PiP0_pos") vectorFromTo (currentUAV selectionPosition "PiP0_dir");
			uavCam setVectorDirAndUp [_dir, _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]];
		}
		];
	};

	//B_UAV_02_F - MQ4A Greyhawk
	if ((_typeOfUAV == "B_UAV_02_F") || (_typeOfUAV == "O_UAV_02_F") || (_typeOfUAV == "I_UAV_02_F") || 
		(_typeOfUAV == "B_UAV_02_CAS_F") || (_typeOfUAV == "O_UAV_02_CAS_F") || (_typeOfUAV == "I_UAV_02_CAS_F")	)then
	{
		addMissionEventHandler ["Draw3D",
		{
			_dir = (currentUAV selectionPosition "laserstart") vectorFromTo (currentUAV selectionPosition "commanderview");
			uavCam setVectorDirAndUp [_dir, _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]];
		}
		];
	};

	//B_UGV_01_F - UGV Stomper
	if ((_typeOfUAV == "B_UGV_01_F") || (_typeOfUAV == "O_UGV_01_F") || (_typeOfUAV == "I_UGV_01_F"))then
	{
		addMissionEventHandler ["Draw3D",
		{
			_dir = (currentUAV selectionPosition "PiP0_pos") vectorFromTo (currentUAV selectionPosition "PiP0_dir");
			uavCam setVectorDirAndUp [_dir, _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]];
		}
		];
	};

	//B_UGV_01_rcws_F - UGV Stomper RCWS
	if ((_typeOfUAV == "B_UGV_01_rcws_F") || (_typeOfUAV == "O_UGV_01_rcws_F") || (_typeOfUAV == "I_UGV_01_rcws_F"))then
	{
		addMissionEventHandler ["Draw3D",
		{
			_dir = (currentUAV selectionPosition "PiP1_pos") vectorFromTo (currentUAV selectionPosition "PiP1_dir");
			uavCam setVectorDirAndUp [_dir, _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]];
		}
		];
	};

};
