/*
The Roleplay Project: Reloaded
Copyright (C) 2011  Matthew Simms
*/

RPP_var_deliveryLocations = 
[
    delivery_1, delivery_2, delivery_3
];

RPP_var_policeLocations = 
[
    delivery_p1, delivery_p2, delivery_p3

];

RPP_var_deliveryStarts = 
[
    [delivery_start1, "Delivery Job", RPP_var_deliveryLocations],
	[delivery_start2, "Police Patrol ", RPP_var_policeLocations]

];

RPP_var_hasDeliveryJob = false;
RPP_var_deliveryBasePrice = 50;
RPP_var_deliveringTo = empty;
RPP_var_deliveryPenalty = 0.1;
RPP_var_deliveryPay = 0;

RPP_fnc_delivery_acceptJob = 
{
    private ["_randomLocation", "_locationObj", "_locationType", "_locationName", "_distanceTo", "_earning", "_marker"];
    _randomLocation = RPP_var_deliveryLocations select (random ((count RPP_var_deliveryLocations)-1));
    _locationObj = _randomLocation;
    
    _distanceTo = player distance _locationObj;
    _earning = ((RPP_var_deliveryBasePrice * _distanceTo) / (25 + random 100))*0.25;

	diag_log format ["Delivery: Distance: %1, Earning: %2",_distanceTo,_earning];
    if (_locationObj == RPP_var_deliveringTo) exitWith
    {
        [] spawn RPP_fnc_delivery_acceptJob;
    };

    RPP_var_deliveringTo = _locationObj;
    RPP_var_deliveryPay = _earning;

    (format[localize "STRS_delivery_start",floor _distanceTo, floor _earning]) call RPP_fnc_hint;

    RPP_var_hasDeliveryJob = true;
    
    _marker = createMarkerLocal ["delivery_marker", _locationObj];
    _marker setMarkerPosLocal getPos _locationObj;
    _marker setMarkerShapeLocal "ICON";
    _marker setMarkerTypeLocal "DOT";
    _marker setMarkerTextLocal "Delivery location";
    _marker setMarkerSizeLocal [0.65,0.65];
    _completed = false;
    _timeStart = time;

    while {RPP_var_hasDeliveryJob} do
    {
        _timeEnd = time;
        _totalTime = time - _timeStart;
        _loss = _totalTime * RPP_var_deliveryPenalty;
        if (_loss > RPP_var_deliveryPay ) exitWith
        {
			localize "STRS_delivery_failed" call RPP_fnc_hint;
            diag_log format ["Delivery: Loss: %1, Earning: %2",_loss,_earning];
        };
        
        if (vehicle player distance RPP_var_deliveringTo <= 15) then
        {
            RPP_var_deliveryPay = RPP_var_deliveryPay - _loss;
            RPP_var_deliveryPay = (ceil RPP_var_deliveryPay);
            
            ["Money", RPP_var_deliveryPay] call RPP_fnc_addInventoryItem;
            //RPP_var_jobPaycheck = RPP_var_jobPaycheck + RPP_var_deliveryPay;

            (format[localize "STRS_delivery_done", RPP_var_deliveryPay, ceil _totalTime, ceil RPP_varDeliveryPay]) call RPP_fnc_hint;	
            RPP_var_hasDeliveryJob = false;
            deleteMarkerLocal _marker;
            
            sleep 10;
            _completed = true;
        };

        sleep 5;
	    if(_completed) then 
	    {
            _completed = false;
			diag_log format ["Delivery Completed: $%1",RPP_var_deliveryPay];
	        [] spawn RPP_fnc_delivery_acceptJob;
	    };
    };
    deleteMarkerLocal _marker;
};

RPP_fnc_delivery_onAction =
{
    private ["_playerHasJob"];
    _playerHasJob = RPP_var_hasDeliveryJob;

    if (_playerHasJob) then
    {
        localize "STRS_delivery_cancel" call RPP_fnc_hint;
        RPP_var_hasDeliveryJob = false;
    }
    else
    {
        RPP_var_hasDeliveryJob = true;
        [] spawn RPP_fnc_delivery_acceptJob;
    };
};

RPP_fnc_setupDelivery =
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
                        [33, "[] call RPP_fnc_delivery_onAction;", false, false, false] spawn RPP_fnc_addKeyAction;
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
    } forEach RPP_var_deliveryStarts
};