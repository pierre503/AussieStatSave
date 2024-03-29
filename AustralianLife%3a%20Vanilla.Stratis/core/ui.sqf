/*
The Roleplay Project: Reloaded
Copyright (C) 2011  Matthew Simms
Copyright (C) 2012	Charles "Templar" McLellan (cpmjr1@gmail.com)
*/

[] spawn
{
    disableSerialization;
    100 cutRsc ["RPP_Dlg_ui", "PLAIN"];
    
    while {true} do
    {
        _money = "Money" call RPP_fnc_itemGetAmount;
        _weight = [] call RPP_fnc_getInvSize;
        _maxWeight = RPP_var_inventorySize;
        _hunger = "Hunger" call RPP_fnc_getDynamicVal;
        _thirst = "Thirst" call RPP_fnc_getDynamicVal;
        _health = ceil(100 - (damage player*100));
        _bankmoney = RPP_var_bankAmount;
        _id = getPlayerUID player;
        ((RPP_display_ui select 0) displayCtrl 1) ctrlSetStructuredText parseText format["<t color='#4876FF'>Cash: $%1 / Bank: $%8 - Inventory Size: %2/%3 - Health: %4/100 - Hunger: %6 - Thirst: %7</t>", _money, _weight, _maxWeight, _health, _id, _hunger, _thirst, _bankMoney];
        sleep 1;
    };
};