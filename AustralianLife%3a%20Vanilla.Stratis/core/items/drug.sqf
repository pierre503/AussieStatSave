// Drugs Scripts
// drugs.sqf

_art = _this select 0;
_var1 = 0;
publicVariable "_var1";

if (_art == "init") then 

{
	
INV_drogenusesperre = 0;
INV_drogen_usesperre = FALSE;
INV_DrogenCounter = 0;

};
	
if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
if (INV_drogenusesperre == 1) exitWith {player groupChat localize "STRS_inv_item_druguse_toomany";};
if (INV_drogen_usesperre) then {INV_drogenusesperre = 1;};
INV_DrogenCounter =  INV_DrogenCounter + _anzahl;
[_item, -(_anzahl)] call INV_AddInvItem;
_endeZeit = time + 60 + (_anzahl * 10);

if (_item == "lsd") then 

	{

	"wetDistortion" ppEffectEnable true;
	"wetDistortion" ppEffectAdjust [0.5, 1, 1, 4.1, 3.7, 2.5, 1.85, 0.0051, 0.0051, 0.0051, 0.0051, 0.5, 0.3, 10, 6.0];
	"wetDistortion" ppEffectCommit 5;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [0.2,0.2,true]; 
	"chromAberration" ppEffectCommit 1;

	//"colorInversion" ppEffectEnable true;
	//"colorInversion" ppEffectAdjust [1, 1, 1];
	//"colorInversion" ppEffectCommit 1;

	while {time < _endeZeit} do 

		{

		_position = getpos player;
		_weite = 100;
		_x = _position select 0;
		_y = _position select 1;
		_z = _position select 2;
		_w1 = (random _weite) - (random _weite);
		_w2 = (random _weite) - (random _weite);
		_w3 = random 7;
		_f1 = random 1;
		_f2 = random 1;
		_f3 = random 1;
		_g1 = random 5;
		_g2 = random 10;
		_g3 = random 5;
		
		if (_w1 + _w2 > 100) then 

			{

			_g1 = _g1 * 2;
			_g2 = _g2 * 2;
			_g3 = _g3 * 2;
				
			};
				
		_v1 = random 0.05;
		_v2 = random 0.05;
		_v3 = 0.1 - random 0.075;
		Drop ["\ca\data\cl_basic", "", "Billboard", 1, 60, [_x + _w1, _y + _w2, _z + _w3], [_v1, _v2, _v3], 1, 1.275, 1, 0, [_g1, _g2, _g3], [ [_f1, _f2, _f3, 1], [_f2, _f1, _f3, 1], [_f3, _f2, _f1, 1] ], [0, 0, 0], 3, 0.2, "", "", ""];
		sleep 0.001;
			

		};
		

	};




		
player groupChat localize "STRS_inv_item_druguse_ende";
INV_drogenusesperre = 0;
INV_DrogenCounter =  INV_DrogenCounter - _anzahl;
	
};

"colorInversion" ppEffectEnable false;
"wetDistortion" ppEffectEnable false;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.5,0.5,0.5,0], [0.5,0.5,0.5,0], [0.5,0.5,0.5,0]]; 
"colorCorrections" ppEffectCommit 10;
waitUntil {ppEffectCommitted "colorCorrections"}; 
"colorCorrections" ppEffectEnable false;
"chromAberration" ppEffectEnable false;

