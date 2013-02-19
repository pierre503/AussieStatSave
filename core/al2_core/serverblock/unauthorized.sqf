#include "\al2\al2_core\scriptDefines.sqh"

["Whitelist", format["Joined an unauthorized server - %1", _server]] call PRAA_fDebug_logInfo;
waitUntil {!isNull player && !isNull(findDisplay 46)};

player enableSimulation false;
9999 cutRsc ["PRAA_RscUnauthorizedServer", "PLAIN"];
