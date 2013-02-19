#define _ARMA_


//Class config.bin{
class CfgPatches
{
 class PRAA_core
 {
  units[] = {};
  weapons[] = {};
  requiredVersion = 1.51;
  requiredAddons[] = {"Utes","Chernarus","Desert_E","Takistan","zargabad"};
  version = "1.0 BETA";
 };
};
class CfgWorlds
{
 class CAWorld;
 class utes: CAWorld
 {
  cutscenes[] = {};
 };
 class Chernarus: CAWorld
 {
  cutscenes[] = {};
 };
 class Desert_E: CAWorld
 {
  cutscenes[] = {};
 };
 class Takistan: CAWorld
 {
  cutscenes[] = {};
 };
 class Zargabad: CAWorld
 {
  cutscenes[] = {};
 };
 class Shapur_BAF: CAWorld
 {
  cutscenes[] = {};
 };
 class ProvingGrounds_PMC: CAWorld
 {
  cutscenes[] = {};
 };
};
class CfgAddons
{
 class PreloadAddons
 {
  class PRAA
  {
   list[] = {"PRAA_fonts","PRAA_language","PRAA_music","PRAA_radioSilence","PRAA_ui"};
  };
 };
};
class CfgMPGameTypes
{
 class Unknown
 {
  name = "$STR_praa_core_mpgametypes_nonpr";
  shortcut = "$STR_praa_core_mpgametypes_nonprshort";
  statsStandard = "";
  statsRanked = "";
  id = 0;
 };
 delete DM;
 delete CTF;
 delete FF;
 delete Coop;
 delete Team;
 delete SCont;
 delete Hold;
 delete CTI;
 class PRAA
 {
  name = "$STR_praa_common_pr";
  shortcut = "$STR_praa_common_pra2abbrshort";
  statsStandard = "";
  statsRanked = "";
  id = 1;
 };
};
class CfgActions
{
 class None;
 class TakeWeapon: None
 {
  show = 0;
  showWindow = 0;
 };
 class TakeDropWeapon: TakeWeapon{};
};
class CfgDefaultKeysMapping
{
 User1[] = {20};
 User2[] = {57};
 User3[] = {219};
 User4[] = {47};
 User5[] = {};
 User6[] = {};
 User7[] = {};
 User8[] = {};
 User9[] = {};
 User10[] = {};
 User11[] = {};
 User12[] = {};
 User13[] = {};
 User14[] = {};
 User15[] = {};
 User16[] = {};
 User17[] = {};
 User18[] = {};
 User19[] = {};
 User20[] = {};
};
class PRAA_core
{
 serversTagMark = "Aussie";
};
class PRAA_controls
{
 actionList[] = {
  { "User1","player" },
  { "User2","interact" },
  { "User3","identify" },
  { "User4","mirror" }};
};
class UserActionsConflictGroups
{
 class ActionGroups
 {
  praaInfKeys[] = {"User1","User2","User3"};
  praaVehKeys[] = {"User4"};
 };
 class CollisionGroups
 {
  praaInfKeys[] = {"praaInfKeys","ManMove","ManBasic","basic"};
  praaVehKeys_VehBasic[] = {"VehBasic","praaVehicleKeys"};
 };
};
class UserActionGroups
{
 delete Buldozer;
 class BasicInfantryControls
 {
  group[] = {"MoveForward","MoveBack","TurnLeft","TurnRight","MoveFastForward","MoveSlowForward","MoveLeft","MoveRight","EvasiveForward","EvasiveLeft","EvasiveRight","Stand","Crouch","Prone","LeanLeft","LeanRight","LeanLeftToggle","LeanRightToggle","WalkRunToggle","WalkRunTemp","ToggleWeapons","SwitchWeapon","DefaultAction","ReloadMagazine","LockTargets","LockTarget","RevealTarget","TempRaiseWeapon","ToggleRaiseWeapon","PrevAction","NextAction","MenuBack","Action","ActionContext","Optics","LookAround","LookAroundToggle","TeamSwitch","TeamSwitchPrev","TeamSwitchNext","Gear","Compass","CompassToggle","Watch","WatchToggle","MiniMap","MiniMapToggle","ForceCommandingMode","Diary","Headlights","NightVision","Binocular","Handgun","ShowMap","HideMap","PersonView","TacticalView","ZoomIn","ZoomInToggle","ZoomOut","zoomOutToggle","ZeroingUp","ZeroingDown","HoldBreath","Salute","SitDown","Surrender","GetOver","AimUp","AimDown","AimLeft","AimRight","AimHeadUp","AimHeadDown","AimHeadLeft","AimHeadRight","LookLeftDown","LookDown","LookRightDown","LookLeft","LookCenter","LookRight","LookLeftUp","LookUp","LookRightUp","LookLeftCont","LookRightCont","LookDownCont","LookUpCont"};
 };
 class PRAA_comms
 {
  name = "$STR_praa_ui_controls_groupcomms";
  group[] = {"PrevChannel","NextChannel","Chat","VoiceOverNet","PushToTalk","PushToTalkAll","PushToTalkSide","PushToTalkCommand","PushToTalkGroup","PushToTalkVehicle","PushToTalkDirect"};
 };
 class PRAA_actions
 {
  name = "$STR_praa_ui_controls_grouppr";
  group[] = {"User1","User2","User3","User4"};
 };
 class UserActions
 {
  group[] = {"User5","User6","User7","User8","User9","User10","User11","User12","User13","User14","User15","User16","User17","User18","User19","User20"};
 };
};
class PRAA_postInit
{
 class PRAA_core
 {
  serverBlock = "execVM ""al2_core\serverblock\gameStart.sqf"";";
 };
};
//};
