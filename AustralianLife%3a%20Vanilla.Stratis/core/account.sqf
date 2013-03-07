

RPP_fnc_acc_login = 
{
    private ["_id", "_exists", "_password"];
    createDialog "RPP_Dlg_Login";
    _id = getPlayerUID player;
    _exists = _this select 0;
    _password = _this select 1;
    
    [_exists, _password] spawn
    {
        while {!RPP_var_isLoggingIn} do
        {
            if (isNull(findDisplay 1400)) then
            {
                _this call RPP_fnc_acc_login;
            };  
        
            sleep 1;
        };
    };

    if (_exists) then
    {
        ((findDisplay 1400) displayCtrl 5) ctrlSetStructuredText parseText localize "STRS_login_exists";
        ((findDisplay 1400) displayCtrl 8) ctrlSetStructuredText parseText "By clicking Login you agree to the server rules below.";
        ctrlSetText[10, "Login"];
        buttonSetAction[10, format["[""%1""] spawn RPP_fnc_acc_clientLogin;", _password]];
    }
    else
    {   
        ((findDisplay 1400) displayCtrl 5) ctrlSetStructuredText parseText localize "STRS_login_new";
        ((findDisplay 1400) displayCtrl 8) ctrlSetStructuredText parseText "By clicking Register you agree to the server rules below.";
        ctrlSetText[10, "Register"];
        buttonSetAction[10, "[] call RPP_fnc_acc_clientRegister;"];
    };
    
    
    ctrlSetText[4,getPlayerUID player];
    ctrlEnable [4,false];
    
    {
        _index = lbAdd[11,_x];
    } forEach RPP_var_serverRules;
};

RPP_fnc_acc_clientRegister = 
{
    private ["_id", "_password"];
    _id = getPlayerUID player;
    _password = ctrlText 7;
    
    if (_password == "") exitWith {};
    if (_password == " ") exitWith {};
   
    
    ["RPP_fnc_acc_serverCreate", [_id,_password, name player]] call RPP_fnet_execPublic;
    closeDialog 0;
    cutText ["Registering account, please wait...", "PLAIN DOWN", 8];
    RPP_var_isLoggingIn = true;
   
};

RPP_fnc_acc_clientLoginFirst = 
{
    private ["_id"];
    _id = _this select 0;
    
    if (getPlayerUID player != _id) exitWith {};
    
    RPP_var_acc_login = _id;
    RPP_var_loggedIn = true;
    RPP_var_firstConnect = true;

};

RPP_fnc_acc_serverCreate =
{
    private ["_id", "_password", "_name"];
    _id = _this select 0;
    _password = _this select 1;
    _name = _this select 2;
    
    server globalchat format["Player: %1 has just joined the server for the first time!", _name];
    
    if !(isServer) exitWith {};
    
    RPP_var_acc_users set[(count RPP_var_acc_users), [_id,_password]];
    [RPP_var_saving_tableUsers, ["RPP_var_acc_users"], RPP_var_acc_users] call RPP_fsav_clientRequestSave;
    
    /* Created...let the client start */
    ["RPP_fnc_acc_clientLoginFirst", [_id]] call RPP_fnet_execPublic;
};

RPP_fnc_acc_clientLogin = 
{
    private ["_password", "_text", "_jailTime"];
    _password = _this select 0;
    _text = ctrlText 7;
    
    if (_text != _password) exitWith {};
    
    RPP_var_acc_login = getPlayerUID player;
    RPP_var_isLoggingIn = true;
    closeDialog 0;
    sleep 1;
    cutText ["Logging into account, please wait...", "PLAIN DOWN", 1];
    sleep 2;
    cutText ["Loading player data...", "PLAIN DOWN", 1];
    [{
        if (isServer) then
        {
            [(_this select 0), (_this select 1)] call RPP_fsav_clientRequestLoad; 
        };
    }, [RPP_var_acc_login, RPP_var_saving_clientToLoad]] call RPP_fnet_execPublic;
    sleep 4;
    cutText ["Loading storages...", "PLAIN DOWN", 1];
    [{  
        if (isServer) then 
        { 
            { 
                if (not (_x select 3)) then 
                { 
                    [str (_x select 0), (_this select 0), (_this select 1)] call RPP_fsav_clientLoadSetVariables; 
                }; 
            } forEach RPP_var_storages;
        }; 
    }, [RPP_var_acc_login, RPP_var_saving_localStorages]] call RPP_fnet_execPublic; 
    sleep 4;
    cutText ["Loading client variables", "PLAIN DOWN", 1];
    RPP_var_inventory = "RPP_var_inventory" call RPP_fnc_saving_loadVar;
    sleep 1;
    RPP_var_keyChain = "RPP_var_keyChain" call RPP_fnc_saving_loadVar;
    sleep 1;
    _jailTime = "RPP_var_jailTime" call RPP_fnc_saving_loadVar;
    if (count _jailTime > 0) then
    {
        RPP_var_jailTime = _jailTime select 0;
        
        if (RPP_var_jailTime > 0) then
        {
            [player,player,RPP_var_jailTime] call RPP_fnc_pol_clientArrest;
        };
    };
    sleep 2;
    cutText ["Logged in!", "PLAIN DOWN", 3];
    sleep 3;
    cutText ["", "PLAIN DOWN", 3];
    
    RPP_var_isLoggingIn = false;
    RPP_var_loggedIn = true;
};

RPP_fnc_acc_exists = 
{
    private ["_id", "_exists"];
    _id = _this;
    _exists = false;
    
    {
        if (_x select 0 == _id) exitWith
        {
            _exists = true;
        };
    } forEach RPP_var_acc_users;
    
    _exists
};

RPP_fnc_acc_getPassword = 
{
    private ["_id", "_password"];
    _id = _this;
    _password = "";
    
    {
        if (_x select 0 == _id) exitWith
        {
            _password = _x select 1;
        };
    } forEach RPP_var_acc_users;
    
    _password
};

RPP_fnc_acc_serverStart = 
{
    if (isNil "RPP_var_acc_users") then
    {
        RPP_var_acc_users = [];
    };
    
    if (RPP_Saving) then
    {
        [RPP_var_saving_serverToLoad] spawn RPP_fsav_serverLoad;
    };
    
    [] spawn
    {
        while {true} do
        {
            [] spawn RPP_fsav_serverCommit;
            sleep 1;
        };
    };
};

RPP_fnc_acc_serverLogin =
{
    private ["_id", "_exists", "_password"];
    _id = _this select 0;
    _password = _this select 1;
    
    if !(isServer) exitWith {};
    
    _exists = _id call RPP_fnc_acc_exists;
    
    [{ if ((getPlayerUID player) == (_this select 0)) then { [(_this select 1), (_this select 2)] call RPP_fnc_acc_login;  }; }, [_id, _exists, _password]] call RPP_fnet_execPublic;
};  

RPP_fnc_acc_serverGetPassword = 
{
    private ["_id", "_password"];
    _id = _this;
    
    if !(isServer) exitWith {};
    
    _password = _id call RPP_fnc_acc_getPassword;
    
    [{ if ((getPlayerUID player) == (_this select 0)) then { RPP_var_acc_password = (_this select 1); }; }, [_id, _password]] call RPP_fnet_execPublic;

};

RPP_fnc_acc_start = 
{
    playMusic "Track03_OnTheRoad";
    2 fadeSound 0;
    10 fadeMusic 1;
    
    if (isNil "RPP_var_acc_login") then
    {
        RPP_var_acc_login = 0;
    };
    
    sleep 0.5;
	
    _introCam = "camera" camCreate (position player);
    _introCam cameraEffect ["Internal", "BACK"];

	_camPositions = [
						[[-37451.94,92567.28,-28064.00],[14369.59,12310.70,66.65],0.953],//cop base
						[[49769.75,94350.88,-45407.60],[14012.14,12782.32,12.88],0.953],//bank
						[[-7941.26,100795.72,44022.39],[14742.31,13873.98,24.38],0.953],//tower
						[[114772.44,-14890.64,10168.63],[19458.93,13609.04,6.32],0.953],//lighthouse
						[[22475.93,-82702.50,-34941.32],[14304.03,10614.75,14.88],0.953],//bridge
						[[-73044.02,47514.46,-34561.14],[14010.97,12631.88,64.60],0.953],//mine
						[[24877.29,109299.09,-12204.73],[12462.95,10826.25,22.38],0.953],//lighthouse2
						[[-1541.14,108707.76,-21088.00],[11714.01,11882.68,78.59],0.953],//mountain
						[[91785.69,-48112.60,-2290.78],[10221.59,9686.95,1.69],1.118]//church thing
					];

	_introCamSelect = _camPositions select (floor random (count _camPositions));
    _introCam camPrepareTarget (_introCamSelect select 0);
    _introCam camPreparePos (_introCamSelect select 1);
    _introCam camPrepareFOV (_introCamSelect select 2);
    _introCam camCommitPrepared 0;

    waitUntil {camCommitted _introCam};
    showCinemaBorder false;
    sleep 2;
    cutText ["Welcome to the Steak and Beer mission!\nPlease wait while the server finishes loading.\nIt is expected to take a while, so please be patient.", "PLAIN DOWN", 25];
    enableEnvironment false;
    //waitUntil {server getVariable ["loaded",false]};
    enableEnvironment true;
    
    sleep 2;
    
    ["RPP_fnc_acc_serverGetPassword", (getPlayerUID player)] call RPP_fnet_execPublic;
    
    waitUntil {RPP_var_acc_password != "@NO@"};
    /* Show login dialog */
    ["RPP_fnc_acc_serverLogin", [(getPlayerUID player), RPP_var_acc_password]] call RPP_fnet_execPublic;
    
    waitUntil {RPP_var_loggedIn};
    
    if (RPP_var_firstConnect) then
    {
        cutText ["You have logged in for the first time!", "PLAIN DOWN", 8];
        sleep 2;
    };
    
    
  
    2 fadeSound 1;
    10 fadeMusic 0;
    cutText  ["","PLAIN DOWN"];
    _introCam cameraEffect ["Terminate", "BACK"];
    camDestroy _introCam;
    
    if ((player call RPP_fnc_isCop)) then
    {
        if (RPP_var_firstConnect) then
        {
            "Cop" spawn RPP_fnc_runIntro;
        };
        
        [] spawn RPP_fnc_displayMarkers; 
         
        if (RPP_var_firstConnect) then
        {
            player addweapon "Makarov";
            player addmagazine "8Rnd_9x18_MakarovSD";
            player addmagazine "8Rnd_9x18_MakarovSD";
            player addmagazine "8Rnd_9x18_MakarovSD";
            player addmagazine "8Rnd_9x18_MakarovSD";
            ['Handcuffs', 1] call RPP_fnc_addInventoryItem;
		};
        
		player addweapon "ItemMap";
    }
    else
    {
        if (RPP_var_firstConnect) then
        {
            "Civ" spawn RPP_fnc_runIntro;
            
            if ((player call RPP_fnc_isemt)) then
            {
                ['MedicalBag', 5] call RPP_fnc_addInventoryItem;
			};

		};
    
    };
	["Keychain", 1] call RPP_fnc_addInventoryItem;
};