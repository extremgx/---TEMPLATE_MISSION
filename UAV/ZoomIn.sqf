
if ( isUAVCamActive ) then
{
	_fov = currentCamFov;
	_fov = _fov - 0.1;

	if ( _fov <= 0.01 ) then {_fov = 0.01};

	currentCamFov = _fov;
	uavCam camSetFov _fov;
};