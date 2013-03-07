/*
The Roleplay Project: Reloaded
Copyright (C) 2011  Matthew Simms
*/

RPP_var_patrolLocations = 
[
    patrol_1, patrol_2, patrol_3, patrol_4, patrol_5, patrol_6
];

RPP_var_patrolStarts = 
[
    [patrol_start, "Patrol Job"]
];

RPP_var_haspatrolJob = false;
RPP_var_patrolBasePrice = 200;
RPP_var_patrolTo = empty;
RPP_var_patrolPenalty = 0.1;
RPP_var_patrolPay = 0;

RPP_fnc_patrol_acceptJob = 
{
    private ["_randomLocation", "_locationObj", "_locationType", "_locationName", "_distanceTo", "_earning", "_marker"];
    _randomLocation = RPP_var_patrolLocations select (random ((count RPP_var_patrolLocations)-1));
    _locationObj = _randomLocation;
    
    _distanceTo = player distance _locationObj;
    _earning = ((RPP_var_patrolBasePrice * _distanceTo) / (200 + random 100))*1.5;

    if (_locationObj == RPP_var_patrolTo) exitWith
    {
        [] call RPP_fnc_patrol_acceptJob;
    };

    RPP_var_patrolTo = _locationObj;
    RPP_var_patrolPay = _earning;

    (format[localize "STRS_patrol_start",_distanceTo, _earning]) call RPP_fnc_hint;

    RPP_var_haspatrolJob = true;
    
    _marker = createMarkerLocal ["patrol_marker", _locationObj];
    _marker setMarkerPosLocal getPos _locationObj;
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "mil_dot";
    _marker setMarkerTextLocal "Patrol Location";
    _marker setMarkerSizeLocal [0.65,0.65];
    
    [_marker] spawn
    {
        _timeStart = time;

        while {RPP_var_haspatrolJob} do
        {
            if (vehicle player distance RPP_var_patrolTo <= 15) then
            {
                _timeEnd = time;

                _totalTime = _timeEnd - _timeStart;

                _loss = _totalTime * RPP_var_patrolPenalty;
                RPP_var_patrolPay = RPP_var_patrolPay - _loss;
                RPP_var_patrolPay = (ceil RPP_var_patrolPay);
                
                //["Money", RPP_var_patrolPay] call RPP_fnc_addInventoryItem;
                RPP_var_jobPaycheck = RPP_var_jobPaycheck + RPP_var_patrolPay;

                (format[localize "STRS_patrol_done", RPP_var_patrolPay, _totalTime, _loss]) call RPP_fnc_hint;	
                RPP_var_haspatrolJob = false;
                deleteMarkerLocal (_this select 0);
                
                sleep 10;
                [] call RPP_fnc_patrol_acceptJob;
            };

            sleep 5;
        };
        
        deleteMarkerLocal (_this select 0);
    };
    
};

RPP_fnc_patrol_onAction =
{
    private ["_playerHasJob"];
    _playerHasJob = RPP_var_haspatrolJob;

    if (_playerHasJob) then
    {
        localize "STRS_patrol_cancel" call RPP_fnc_hint;
        RPP_var_haspatrolJob = false;
    }
    else
    {
        [] call RPP_fnc_patrol_acceptJob;
    };
};

RPP_fnc_setupPatrol =
{
    {
        _name = _x select 1;
        _id = [] call RPP_fnc_generateID;
        _obj = _x select 0;
        
        _text = format["<t size='0.55' color='#B0171F'>%1</t><br/><t size='0.4'>(Press F to Start/Cancel)<br/></t>", _name];
        _onKeyAccess = "";

        _onAdd = format[
        '
            [%2, "%1", %3, 0.9, 20, false] call RPP_fnc_create3DText;
            [%3] spawn
            {
                _onTarget = false;
                while {player distance (_this select 0) <= 20} do
                {
                    if (cursorTarget == (_this select 0)) then
                    {
                        [33, "[] call RPP_fnc_patrol_onAction;", false, false, false] spawn RPP_fnc_addKeyAction;
                        _onTarget = true;
                    }
                    else
                    {
                        if (_onTarget && (cursorTarget != (_this select 0))) then
                        {
                            _onTarget = false;
                            [33, false, false, false ] spawn RPP_fnc_remKeyAction;
                        };
                    };
                    sleep 0.001;
                };
                [33, false, false, false ] spawn RPP_fnc_remKeyAction;
            };

        ', _text, _id, _obj];

        _onRem = format[
        '
             %1 call RPP_fnc_disable3DText;
        ', _id];

        [player, vehicle player, compile format['(player distance %1 <= 20)', _obj], _onAdd, _id, _onRem] call RPP_fnc_addAction;
    } forEach RPP_var_patrolStarts
};