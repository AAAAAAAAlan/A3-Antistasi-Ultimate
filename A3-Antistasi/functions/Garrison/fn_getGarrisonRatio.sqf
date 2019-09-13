params ["_marker"];

/*  Calculates the strength of the garrison, based on units active
*   Params:
*     _marker: STRING : The name of the marker on which the garrison should be checked
*
*   Returns:
*     _ratio: NUMBER : The ratio of alive troops to dead troops, 0 if none garrisoned
*/

private ["_debug", "_garrison", "_neededReinf", "_garrisonCount", "_reinfCount", "_allUnitsCount", "_aliveUnitsCount", "_data", "_ratio"];
_debug = debug;

if(isNil "_marker") exitWith {diag_log "GetGarrisonRatio: No marker given!";};

_garrison = [_marker] call A3A_fnc_getGarrison;
_neededReinf = [_marker] call A3A_fnc_getNeededReinforcements;



if(_debug) then
{
  diag_log format ["GetGarrisonStrength: Calculating garrison strength now for %1!", _marker];
};

_garrisonCount = [_garrison, true] call A3A_fnc_countGarrison;
_reinfCount = [_neededReinf, true] call A3A_fnc_countGarrison;
_allUnitsCount = _garrisonCount + _reinfCount;
_aliveUnitsCount = _garrisonCount;

if(_debug) then
{
  diag_log format ["GetGarrisonStrength: Found %1 units in total, %2 of them are alive", _allUnitsCount, _aliveUnitsCount];
};

_ratio = 0;
if(_allUnitsCount > 0) then
{
  _ratio = _aliveUnitsCount / _allUnitsCount;
};

if(_debug) then
{
  diag_log format ["GetGarrisonStrength: Result is %1", _ratio];
};

_ratio;
