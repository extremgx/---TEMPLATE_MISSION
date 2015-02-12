
private ["_a"];
_a = 0;

_nObject = nearestObject [rAndr, "B_Plane_CAS_01_F"];

if ( (_nObject distance rAndr) < 25 ) then
{
	_vector = velocity _nObject;
	if ( (_vector select 0) < 1 && (_vector select 1) < 1  && (_vector select 2) < 1 ) then
	{
		if ( (getDammage _nObject != 0) || (fuel _nObject != 1) ) then
		{
			while {_a = _a + 1; _a < 10} do 
			{
				_text = str formatText["Repairing, refuelling and rearming nearest A-10 ... %1", _a];
				titleText [_text, "PLAIN"];
				sleep 1;
			};
			
			_wArray = weapons _nObject;
			{
				_nObject setAmmo [_x, 1000000];
			} forEach _wArray;
			
			_nObject setFuel 1;
			_nObject setDamage 0;
			
			titleText ["A-10 has been repaired, refuelled and rearmed.", "PLAIN"];
		}
		else
		{
			titleText ["There is nothing to refuel or repair...", "PLAIN"];
		};
	}
	else
	{
		titleText ["Please stop the vehicle...", "PLAIN"];
	};
}
else
{
	titleText ["There is no A-10 within 25 meters.", "PLAIN"];
};
