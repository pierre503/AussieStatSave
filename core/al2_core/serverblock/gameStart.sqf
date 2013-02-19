#include "\al2\al2_core\scriptDefines.sqh"

if (isMultiplayer) then
{
	var(_server) = if (isNil{uinGet("PRAA_core_currentServer")}) then {""} else {uinGet("PRAA_core_currentServer")};
	if (_server != "") then
	{
		_ip = [_server, "."] call PRAA_fString_split;
		if (count(_ip) == 4) then
		{
			if ( //Unconditionally allow LAN
				!((_ip select 0) == "192" && (_ip select 1) == "168") &&
				(_ip select 0) != "10" &&
				!((_ip select 0) == "172" && parseNumber(_ip select 1) >= 16 && parseNumber(_ip select 1) <= 31)
			) then
			{
				var(_whitelist) = [[uinGet("PRAA_core_serverWhiteList"), "1234567890.:;"] call PRAA_fString_filter, ";"] call PRAA_fString_split;
				if (!(_server in _whitelist)) then
				{
					[] runSQF("\al2\al2_core\serverblock\unauthorized.sqf");
				};
			};
		};
	};
};
