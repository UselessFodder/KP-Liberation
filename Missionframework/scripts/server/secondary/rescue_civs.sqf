
private _spawn_marker = [ 2000, 999999, false ] call KPLIB_fnc_getOpforSpawnPoint;
if ( _spawn_marker == "" ) exitWith {["Could not find position for civilian rescue mission", "ERROR"] call KPLIB_fnc_log;};
used_positions pushbackUnique _spawn_marker;

private _housepos = (markerPos _spawn_marker) getPos [random 200, random 360];
private _civhouse = "Land_i_House_Big_01_b_whiteblue_F" createVehicle [_housepos select 0, _housepos select 1, (_housepos select 2) + 1];
_civhouse allowDamage false;
private _houseDir = (random 360);
_civhouse setDir _houseDir;
//diag_log format ["Building object is %1",_civhouse];

private _civsGrp = createGroup [GRLIB_side_enemy, true];
_allPos = _civhouse buildingPos -1;
//diag_log format ["Building positions: %1",_allPos];
//private _civsPos = (getpos _civhouse) getPos [25, random 360];
private _civsPos = selectRandom _allPos;

//spawn formal suit civ
["C_Man_formal_3_F", _civsPos, _civsGrp, "PRIVATE", 0.5] call KPLIB_fnc_createManagedUnit;
sleep 0.2;

//spawn formal scientist
["C_scientist_01_formal_F", _civsPos getPos [1, random 360], _civsGrp, "PRIVATE", 0.5] call KPLIB_fnc_createManagedUnit;
sleep 2;

private _civUnits = units _civsGrp;
{
    [ _x, true ] spawn prisonner_ai;
    _x setDir (random 360);
    sleep 0.5
} foreach (_civUnits);

private _grppatrol = createGroup [GRLIB_side_enemy, true];
private _patrolcorners = [
    [ (getpos _civhouse select 0) - 40, (getpos _civhouse select 1) - 40, 0 ],
    [ (getpos _civhouse select 0) + 40, (getpos _civhouse select 1) - 40, 0 ],
    [ (getpos _civhouse select 0) + 40, (getpos _civhouse select 1) + 40, 0 ],
    [ (getpos _civhouse select 0) - 40, (getpos _civhouse select 1) + 40, 0 ]
];

{
    [_x, _patrolcorners select 0, _grppatrol, "PRIVATE", 0.5] call KPLIB_fnc_createManagedUnit;
} foreach ([] call KPLIB_fnc_getSquadComp);

while {(count (waypoints _grppatrol)) != 0} do {deleteWaypoint ((waypoints _grppatrol) select 0);};
{
    private _nextcorner = _x;
    _waypoint = _grppatrol addWaypoint [_nextcorner,0];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointSpeed "LIMITED";
    _waypoint setWaypointBehaviour "SAFE";
    _waypoint setWaypointCompletionRadius 5;
} foreach _patrolcorners;

_waypoint = _grppatrol addWaypoint [(_patrolcorners select 0), 0];
_waypoint setWaypointType "CYCLE";
{_x doFollow (leader _grppatrol)} foreach units _grppatrol;

private _grpsentry = createGroup [GRLIB_side_enemy, true];
private _nbsentry = 2 + (floor (random 3));

for [ {_idx=0},{_idx < _nbsentry},{_idx=_idx+1} ] do {
    [opfor_sentry, _civsPos getPos [1, random 360], _grpsentry, "PRIVATE", 0.5] call KPLIB_fnc_createManagedUnit;
};

(leader _grpsentry) setDir (random 360);

(opfor_transport_truck createVehicle ((getpos _civhouse) getPos [25, random 360])) setDir random 360;

private _vehicle_pool = opfor_vehicles;
if ( combat_readiness < 50 ) then {
    _vehicle_pool = opfor_vehicles_low_intensity;
};

private _vehtospawn = [];
private _spawnchances = [75,50,15];
{if (random 100 < _x) then {_vehtospawn pushBack (selectRandom _vehicle_pool);};} foreach _spawnchances;
{([(getpos _civhouse) getPos [30 + (random 30), random 360], _x, true] call KPLIB_fnc_spawnVehicle) addMPEventHandler ['MPKilled', {_this spawn kill_manager}]; } foreach _vehtospawn;

secondary_objective_position = getpos _civhouse;
secondary_objective_position_marker = secondary_objective_position getPos [800, random 360];
publicVariable "secondary_objective_position_marker";
sleep 1;
GRLIB_secondary_in_progress = 4; publicVariable "GRLIB_secondary_in_progress";
[12] remoteExec ["remote_call_intel"];

waitUntil {
    sleep 5;
    { ( alive _x ) && ( _x distance ( [ getpos _x ] call KPLIB_fnc_getNearestFob ) > 50 ) } count _civUnits == 0
};

sleep 5;

private _alive_crew_count = { alive _x } count _civUnits;
if ( _alive_crew_count == 0 ) then {
    [13] remoteExec ["remote_call_intel"];
} else {
    [14] remoteExec ["remote_call_intel"];
    private _grp = createGroup [GRLIB_side_friendly, true];
    { [_x ] joinSilent _grp; } foreach _civUnits;
    while {(count (waypoints _grp)) != 0} do {deleteWaypoint ((waypoints _grp) select 0);};
    {_x doFollow (leader _grp)} foreach units _grp;
    { [ _x ] spawn { sleep 600; deleteVehicle (_this select 0) } } foreach _civUnits;
	
	//reward 20% civ rep increase for successful mission
	[20] spawn F_cr_changeCR;
};

//reward intel points
resources_intel = resources_intel + (5 * _alive_crew_count);
stats_secondary_objectives = stats_secondary_objectives + 1;

GRLIB_secondary_in_progress = -1; publicVariable "GRLIB_secondary_in_progress";
sleep 1;
doSaveTrigger = true;
