
if ( isUAVCamActive ) then
{
	isUAVCamActive = false;							// set Bool for recognition in other scripts
	uavCam cameraEffect ["terminate","back"];		// turn off camera
	sleep 0.3;										
	cutText ["", "PLAIN"]; 							// Removing RSC from HUD			
};