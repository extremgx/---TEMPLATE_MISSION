Version 1.1.1 by extrem-gx

CHANGELOG:

1.1.1 
- Added: check if thermalVision is enabled.
- Fixed: when button pressed "Set" and no Item was seleceted an error came. Now it just ignores it.


1.1 

- Added: Now also works with assembled and spawned UAVs during mission.
- Added: Now also works with OPFOR and INDEPENDENT ( bluefor, opfor and independent uavs are obveously seperated ).

- Fixed: Error when activating a UAV that has no name ( given in the editor ).


Known issues:

- When a UAV gets destroyed, the Camera feed stays active until the player sets a different uav or turns the UAV feed off and reopens the menu.-> TODO OnUnitDies EVENT