//	Lootspawner spawn script
//	Author: Na_Palm (BIS forums)
//-------------------------------------------------------------------------------------
//local to Server Var. "BuildingLoot" array of [state, time], placed on buildings that can spawn loot
//												state: 0-not assigned, 1-has loot, 2-currently in use/blockaded
//												time : timestamp of last spawn
//
//local to Server Var. "Lootready" time, placed on generated lootobject, needed for removing old loot
//									time: timestamp of spawn, object is ready for use by player and loot deleter
//-------------------------------------------------------------------------------------
private["_begintime","_BaP_list","_spInterval","_chfullfuel","_chpSpot","_genZadjust","_BaPname","_lootClass","_buildPosViable_list","_buildPosZadj_list","_lBuildVar","_posviablecount","_spwnPos","_lootspawned","_randChance","_lootholder","_selecteditem","_loot","_chfullf","_idx_sBlist","_chperSpot","_tmpPos"];

//BaP - Buildings around Player
_BaP_list = _this select 0;
_spInterval = _this select 1;
_chfullfuel = _this select 2;
_genZadjust = _this select 3;
_chpSpot = _this select 4;

_begintime = time;
{
	_BaPname = "";
	_lootClass = 0;
	_buildPosViable_list = [];
	_buildPosZadj_list = [];
	_lBuildVar = (_x getVariable ["BuildingLoot", [0, 0]]);
	//diag_log format["-- LOOTSPAWNER DEBUG BaP _lBuildVar: v%1v v%2v --", _lBuildVar ,_x];
	if ((_lBuildVar select 0) < 2) then {
		//flag immediately as in use
		_x setVariable ["BuildingLoot", [2, (_lBuildVar select 1)]];
		if (((_lBuildVar select 1) == 0) || ((time - (_lBuildVar select 1)) > _spInterval)) then {
			//get building class
			_BaPname = typeOf _x;
			//here an other _x
			{
				//if junction found, get lists and -> exit forEach
				if (_BaPname == (_x select 0)) exitWith {
					_lootClass = (_x select 1);
					//get viable positions Idx
					_buildPosViable_list set [count _buildPosViable_list, ((Buildingpositions_list select _forEachIndex) select 1)];
					if (swSpZadjust) then {
						//get position adjustments
						_buildPosZadj_list set [count _buildPosZadj_list, ((Buildingpositions_list select _forEachIndex) select 2)];
					};
				};
				sleep 0.001;
			}forEach Buildingstoloot_list;
			//diag_log format["-- LOOTSPAWNER DEBUG BaP: v%1v%2v :: v%3v :: v%4v --", _BaPname, _lootClass, _buildPosViable_list, _buildPosZadj_list];
			//get spawn position, here the former _x
			_posviablecount = 0;
			for "_poscount" from 0 to 100 do {
				//check if position is viable
				if (_poscount == ((_buildPosViable_list select 0) select _posviablecount)) then {
					_posviablecount = _posviablecount +1;
					//consider chance per Slot
					if ((floor random 100) < _chpSpot) then {
						_spwnPos = (_x buildingPos _poscount);
						_tmpPos = [(_spwnPos select 0), (_spwnPos select 1), 60000];
						if ((_spwnPos select 0) == 0 && (_spwnPos select 1) == 0) then {
							_spwnPos = getPosATL _x;
							_tmpPos = [(_spwnPos select 0), (_spwnPos select 1), 60000];
						};
						if (swSpZadjust) then {
							_spwnPos = [_spwnPos select 0, _spwnPos select 1, (_spwnPos select 2) + ((_buildPosZadj_list select 0) select _poscount)];
						};
						//generally add 0.1 on z
						_spwnPos = [_spwnPos select 0, _spwnPos select 1, (_spwnPos select 2) + _genZadjust];
						//check if position has old loot
						if ((count (nearestObjects [_spwnPos, LSusedclass_list, 0.5])) == 0) then {
							sleep 0.001;
							//check what type of loot to spawn
							_lootspawned = false;
							for "_lootType" from 1 to 4 do {
								//get chance for loot every time, so all combos in spawnClassChance_list are viable
								_randChance = floor(random(100));
								if (((spawnClassChance_list select _lootClass) select _lootType) > _randChance) then {
									_lootspawned = true;
									//special for weapons
									if(_lootType == 1) exitWith {
										_lootholder = createVehicle ["WeaponHolderSimulated", _tmpPos, [], 0, "CAN_COLLIDE"];
										_selecteditem = (floor(random(count((lootWeapon_list select _lootClass) select 1))));
										_loot = (((lootWeapon_list select _lootClass) select 1) select _selecteditem);
										_lootholder addWeaponCargoGlobal [_loot, 1];
										_lootholder setdir (random 360);
										_lootholder setPosATL _spwnPos;
										//Function to add the right magazine for a weapon.
										_ammo = [] + getArray(configFile >> "cfgWeapons" >> _loot >> "magazines");
										_ammoCount = count _ammo;
										if (_ammoCount > 0) then {
										_lootholder addMagazineCargoGlobal[(_ammo select 0), (round(random 2))]; //max 2 magazines per weapon
									};
									 //end custom funtion
									 //_lootholder setPosATL _spwnPos;
									};
									//special for magazines: spawn 1-6
									if(_lootType == 2) exitWith {
										_lootholder = createVehicle ["WeaponHolderSimulated", _tmpPos, [], 0, "CAN_COLLIDE"];
										_randChance = 1 + floor(random(5));
										for "_rm" from 0 to _randChance do {
											_selecteditem = (floor(random(count((lootMagazine_list select _lootClass) select 1))));
											_loot = (((lootMagazine_list select _lootClass) select 1) select _selecteditem);
											_lootholder addMagazineCargoGlobal [_loot, 1];
										};
										_lootholder setdir (random 360);
										_lootholder setPosATL _spwnPos;
									};
									//special for item/cloth/vests
									if(_lootType == 3) exitWith {
										_lootholder = createVehicle ["WeaponHolderSimulated", _tmpPos, [], 0, "CAN_COLLIDE"];
										_selecteditem = (floor(random(count((lootItem_list select _lootClass) select 1))));
										_loot = (((lootItem_list select _lootClass) select 1) select _selecteditem);
										_lootholder addItemCargoGlobal [_loot, 1];
										_lootholder setdir (random 360);
										_lootholder setPosATL _spwnPos;
									};
									//special for backpacks
									if(_lootType == 4) exitWith {
										_lootholder = createVehicle ["WeaponHolderSimulated", _tmpPos, [], 0, "CAN_COLLIDE"];
										_selecteditem = (floor(random(count((lootBackpack_list select _lootClass) select 1))));
										_loot = (((lootBackpack_list select _lootClass) select 1) select _selecteditem);
										_lootholder addBackpackCargoGlobal [_loot, 1];
										_lootholder setdir (random 360);
										_lootholder setPosATL _spwnPos;
									};
								};
								//1 category loot only per place so -> exit For
								//no lootpiling
								if (_lootspawned) exitWith {
									_lootholder setVariable ["Lootready", time];
								};
							};
						};
					};
				};
				//if all viable positions run through -> exit For
				if (_posviablecount == (count (_buildPosViable_list select 0))) exitWith {};
			};
			//release building with new timestamp
			_x setVariable ["BuildingLoot", [1, time]];
		} else {
			//release building with old timestamp
			_x setVariable ["BuildingLoot", [1, (_lBuildVar select 1)]];
		};
	};
	sleep 0.001;
}forEach _BaP_list;
//diag_log format["-- LOOTSPAWNER DEBUG BaP: %1 buildings ready, needed %2s, EXIT now --", (count _BaP_list), (time - _begintime)];
