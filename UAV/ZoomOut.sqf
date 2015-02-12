
if ( isUAVCamActive ) then
{
	_fov = currentCamFov;
	_fov = _fov + 0.1;
	if ( _fov >= 2 ) then {_fov = 2}; 

	currentCamFov = _fov;
	uavCam camSetFov _fov;
};