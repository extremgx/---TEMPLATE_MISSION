
if ( !isUAVCamActive ) then
{
	isUAVCamActive = true;										// set Bool for recognition in other scripts
	uavCam cameraEffect ["Internal", "Back", "rendertarget1"];	// Set CameraEffect to update rendertraget1 
	"rendertarget1" setPiPEffect [currentPiPEffectIndex];		// set rendertarget with PiP Effect
	//findDisplay 1337 createDisplay "RscUAVDialog";
	cutRsc ["RscUAVDialog","PLAIN"]; 							// show the UAV dialog 
};