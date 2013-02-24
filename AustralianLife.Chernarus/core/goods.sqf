/*
The Roleplay Project: Reloadedd
Copyright (C) 2011  Matthew Simms
Copyright (C) 2012	Charles "Templar" McLellan (cpmjr1@gmail.com)
*/

RPP_var_goods =
[
	["Null", ["ITEM", "SPECIAL"], ["Error - No item", "Please report how you got this item."], [0, 0], 0, "core\items\noUse.sqf", 0, false, [   ], false ],
    ["Money", ["ITEM", "SPECIAL"], ["Money", "No Description"], [0, 0], 0, "core\items\noUse.sqf", 0, true, [   ], false ],
    ["Keychain", ["ITEM", "SPECIAL"], ["Keychain", "No Description"], [0, 0], 0.0, "core\items\keychain.sqf", 0, false, [], false],
    ["MedicalBag", ["ITEM", "SPECIAL"], ["Medical Bag", "No Description"], [50, 12], 0.5, "core\items\medic.sqf", 0, true, [2, [ ["wood", 1], ["Rubber", 2]]], false],

    /* Tools */
    ["Pickaxe", ["ITEM", "TOOL"], ["Pickaxe", localize "STRS_item_pickaxeDesc"], [480, 120], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronOre", 1], ["wood", 2]]], false],
    ["sickle", ["ITEM", "TOOL"], ["Sickle", "No Description"], [480, 120], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronOre", 1], ["wood", 2]]], false],
	["Hatchet", ["ITEM", "TOOL"], ["Hatchet", "No Description"], [480, 120], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronOre", 1], ["wood", 2]]], false],
	["Pump", ["ITEM", "TOOL"], ["Oil Pump", "No Description"], [1200, 300], 20, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Rubber", 1], ["Copper", 1]]], false],
	["Shovel", ["ITEM", "TOOL"], ["Shovel", "No Description"], [480, 120], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronOre", 1], ["wood", 2]]], false],

    /* Equipment */
    ["ItemMap", ["WEAPON", "ITEM"], ["Map", "No Description"], [2, 0], 0, "core\items\noUse.sqf", 0, true, [1, [ ["wood", 1]]], false],
    ["ItemCompass", ["WEAPON", "ITEM"], ["Compass", "No Description"], [5, 0], 0, "core\items\noUse.sqf", 0, true, [1, [ ["wood", 1]]], false],
    ["ItemWatch", ["WEAPON", "ITEM"], ["Watch", "No Description"], [50, 0], 0, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    ["ItemRadio", ["WEAPON", "ITEM"], ["Radio", "No Description"], [20, 0], 0, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    ["ItemGPS", ["WEAPON", "ITEM"], ["GPS", "No fdescription"], [160, 40], 0, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    ["Binocular", ["WEAPON", "ITEM"], ["Binoculars", "No fdescription"], [200, 50], 1, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    ["NVGoggles", ["WEAPON", "ITEM"], ["Nightvision", "No fdescription"], [600, 150], 1, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3]]], false],
    	
	/*Police Equipment*/
	["Handcuffs", ["ITEM", "TOOL"], ["Handcuffs", "No Description"], [20, 5], 1, "core\items\handcuffs.sqf", 0, true, [1,[ ["IronOre", 1]]], false],
    ["Lockpick", ["ITEM", "TOOL"], ["Lockpick", "No Description"], [60, 15], 0.1, "core\items\lockpick.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    ["Crowbar", ["ITEM", "TOOL"], ["Crowbar", "No Description"], [100, 25], 2, "core\items\crowbar.sqf", 0, true, [1, [ ["IronBar", 1]]], false], 
	
    /*Police Objects*/
    ["Land_CncBlock_Stripes", ["ITEM", "OBJECT"], ["Striped road barrier", localize "STRS_object_desc"], [100,25], 15, "core\items\object.sqf", 0, true, [1, [ ["Bricks", 1]]], false],
    ["Land_CncBlock", ["ITEM", "OBJECT"], ["Road barrier", localize "STRS_object_desc"], [100,25], 15, "core\items\object.sqf", 0, true, [1, [ ["Bricks", 1]]], false],
    ["Sign_Checkpoint", ["ITEM", "OBJECT"], ["Checkpoint poster", localize "STRS_object_desc"], [40,10], 2, "core\items\object.sqf", 0, true, [1, [ ["wood", 1]]], false],
    ["Land_coneLight", ["ITEM", "OBJECT"], ["Road cone", localize "STRS_object_desc"], [12,3], 1, "core\items\object.sqf", 0, true, [1, [ ["Vinyl", 1]]], false],
    ["SearchLight", ["ITEM", "OBJECT"], ["Light Tower", localize "STRS_object_desc"], [800,200], 95, "core\items\object.sqf", 0, true, [1, [ ["IronBar", 2]]], false],
    
    /* Misc_Items & Tools */
    ["Lockpick_CIV", ["ITEM", "TOOL"], ["Lockpick", "No Description"], [400, 100], 0.1, "core\items\lockpick.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    ["Crowbar_CIV", ["ITEM", "TOOL"], ["Crowbar", "No Description"], [400, 100], 2, "core\items\crowbar.sqf", 0, true, [1, [ ["IronBar", 1]]], false], 
   	["Phone", ["ITEM", "MOBILE"], ["Mobile Phone", "No Description"], [500, 125], 0.5, "core\items\phone.sqf", 0, true, [1, [ ["IronBar", 1], ["Copper", 1]]], false],
    ["RepairKit", ["ITEM", "ITEM"], ["RepairKit", "No Description"], [300, 75], 10, "core\items\repairKit.sqf", 0, true, [1, [ ["IronOre", 1], ["Rubber", 3]]], false],
	["Can", ["ITEM", "ITEM"], ["Can", "No Description"], [40, 10], 1, "core\items\refuelCan.sqf", 0, true, [1, [ ["Glass", 1]]], false],
    ["RefuelCan", ["ITEM", "ITEM"], ["RefuelCan", "No Description"], [360, 90], 5, "core\items\refuelCan.sqf", 0, true, [1, [ ["Can", 1], ["Petrol", 1]]], false],

    /* Objects */
    ["Land_Farm_Cowshed_c", ["ITEM", "OBJECT"], ["Cowshed", localize "STRS_object_desc"], [100000,25000], 5, "core\items\object.sqf", 0, true, [], false], 
    ["Wall_FenW2_6_EP1", ["ITEM", "OBJECT"], ["Fence", localize "STRS_object_desc"], [0,0], 5, "core\items\object.sqf", 0, true, []],
	
    /* Food & Drink */
    ["Soup", ["ITEM", "FOOD"], ["Soup", "No Description"], [24, 6], 0.2, "core\items\food.sqf", 0, true, [1, [ ["Salt", 1]]], false], 
    ["Sandwich", ["ITEM", "FOOD"], ["Sandwich", "No Description"], [72, 18], 0.5, "core\items\food.sqf", 0, true, [1, [ ["Bread", 1]]], false], 
    ["Bread", ["ITEM", "FOOD"], ["Bread", "No Description"], [60, 15], 1, "core\items\food.sqf", 0, true, [1, [ ["Wheat", 3]]], false], 
    ["Donut", ["ITEM", "FOOD"], ["Donut", "No Description"], [36, 9], 0.5, "core\items\food.sqf", 0, true, [1, [ ["Wheat", 2]]], false], 
    ["Low_bottleWater", ["ITEM", "DRINK"], ["Small Bottled Water", "No Description"], [25, 10], 1, "core\items\drink.sqf", 0, true, [1, [ ["Bottle", 1]]], false],
    ["High_bottleWater", ["ITEM", "DRINK"], ["Bottled Water", "No Description"], [30, 15], 2, "core\items\drink.sqf", 0, true, [1, [ ["Bottle", 1]]], false],
    ["Bottle", ["ITEM", "DRINK"], ["Bottle", "No Description"], [50, 25], 1, "core\items\noUse.sqf", 0, true, [1, [ ["Glass", 1]]], false],
	["Apple", ["ITEM", "FOOD"], ["Apple", "No Description"], [40,10], 0.2, "core\items\food.sqf", 0, true, [], false],
	["Pumpkin", ["ITEM", "FOOD"], ["Pumpkin", "No Description"], [40,10], 2, "core\items\food.sqf", 0, true, [], false],
	["Cabbage", ["ITEM", "FOOD"], ["Cabbage", "No Description"], [20,5], 0.5, "core\items\food.sqf", 0, true, [], false],
	["Potato", ["ITEM", "FOOD"], ["Potato", "No Description"], [20,5], 0.1, "core\items\food.sqf", 0, true, [], false], 
	["Meat", ["ITEM", "FOOD"], ["Meat", "No Description"], [100,25], 1, "core\items\food.sqf", 0, true, [], false],	
	["ApplePie", ["ITEM", "DRINK"], ["Apple Pie", "No Description"], [160, 40], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["Bread", 1], ["Apple", 2]]], false],
    
    /* Boats */
    ["Fishing_Boat", ["VEHICLE", "BOAT"], ["Fishing Boat", "No Description"], [70000, 17500], 5000, "core\items\noUse.sqf", 3000, true, [1, [ ["wood", 40], ["IronBar", 10], ["Copper", 10], ["Rubber", 100], ["Leather", 20], ["ElecComp", 4], ["AdvChipset", 1], ["Screws", 500], ["Tempered Glass", 20], ["Windshield", 2], ["Beam", 4]]], false],
    ["Smallboat_1", ["VEHICLE", "BOAT"], ["Small Boat 1", "No Description"], [30000, 7500], 1800, "core\items\noUse.sqf", 800, true, [1, [ ["wood", 20], ["IronBar", 5], ["Copper", 5], ["Rubber", 50], ["Leather", 20], ["ElecComp", 4], ["Screws", 150], ["Windshield", 2], ["Beam", 4]]], false],
    ["Smallboat_2", ["VEHICLE", "BOAT"], ["Small Boat 2", "No Description"], [30000, 7500], 1800, "core\items\noUse.sqf", 800, true, [1, [ ["wood", 20], ["IronBar", 5], ["Copper", 5], ["Rubber", 50], ["Leather", 20], ["ElecComp", 4], ["Screws", 150], ["Windshield", 2], ["Beam", 4]]], false],
    ["PBX", ["VEHICLE", "BOAT"], ["PBX", "No Description"], [1200, 300], 80, "core\items\noUse.sqf", 60, true, [1, [ ["IronBar", 1], ["wood", 5]]], false],
    
    /* Fishing */
    ["Fishing_rod", ["ITEM", "TOOL"], ["Fishing rod", "No Description"], [100, 25], 2, "core\items\fishingUse.sqf", 0, true, [1, [ ["IronBar", 1], ["wood", 1]]], false],
	["Fishing_net", ["ITEM", "TOOL"], ["Fishing net", "No Description"], [500, 125], 10, "core\items\fishingUse.sqf", 0, true, [1, [ ["IronBar", 1], ["Rubber", 1]]], false],
    ["Harpoon", ["ITEM", "TOOL"], ["Harpoon", "No Description"], [1200, 300], 5, "core\items\fishingUse.sqf", 0, true, [1, [ ["IronBar", 1],["Copper", 1]]], false],
	["Minnow", ["ITEM", "BAIT"], ["Minnow", "No Description"], [20, 5], 1, "core\items\food.sqf", 0, true, [], false],
    ["Worm", ["ITEM", "BAIT"], ["Worm", "No Description"], [4, 1], 0.1, "core\items\noUse.sqf", 0, true, [], false],
    
    /* Fishing Rod Arrays */
    ["Bluegill", ["ITEM", "FISH"], ["Bluegill", "No Description"], [200, 50], 2, "core\items\food.sqf", 0, true, [], false],
    ["Catfish", ["ITEM", "FISH"], ["Catfish", "No Description"], [400, 100], 3, "core\items\food.sqf", 0, true, [], false],
    ["Perch", ["ITEM", "FISH"], ["Perch", "No Description"], [400, 100], 2, "core\items\food.sqf", 0, true, [], false],
    ["Trout", ["ITEM", "FISH"], ["Trout", "No Description"], [400, 100], 3, "core\items\food.sqf", 0, true, [], false],
    ["RockBass", ["ITEM", "FISH"], ["RockBass", "No Description"], [400, 100], 4, "core\items\food.sqf", 0, true, [], false],
	
    /* Fishing net Arrays */
    ["Shrimp", ["ITEM", "FISH"], ["Shrimp", "No Description"], [600, 150], 0.1, "core\items\food.sqf", 0, true, [], false],
    ["Sardine", ["ITEM", "FISH"], ["Sardine", "No Description"], [600, 150], 0.1, "core\items\food.sqf", 0, true, [], false],
    ["Monkfish", ["ITEM", "FISH"], ["Monkfish", "No Description"], [600, 150], 2, "core\items\food.sqf", 0, true, [], false],
    ["Salmon", ["ITEM", "FISH"], ["Salmon", "No Description"], [800, 200], 4, "core\items\food.sqf", 0, true, [], false],
	
    /* Harpoon */
    ["Shark", ["ITEM", "FISH"], ["Shark", "No Description"], [3000,750], 15, "core\items\food.sqf", 0, true, [], false],
    ["Tuna", ["ITEM", "FISH"], ["Tuna", "No Description"], [3000,750], 5, "core\items\food.sqf", 0, true, [], false],
    ["Whale", ["ITEM", "FISH"], ["Whale", "No Description"], [3000,750], 20, "core\items\food.sqf", 0, true, [], true],
    ["Swordfish", ["ITEM", "FISH"], ["Swordfish", "No Description"], [3000,750], 11, "core\items\food.sqf", 0, true, [], false],
   
    /* Police Vehicles */
	["SUV_UN_EP1", ["VEHICLE", "CAR"], ["Police Suburban", "No Description"], [7500, 1875], 850, "core\items\noUse.sqf", 250, true, [1, [ ["IronBar", 2],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 1]]], true],
	["hilux1_civil_3_open_EP1", ["VEHICLE", "CAR"], ["Police 4x4", "No Description"], [7500, 1875], 850, "core\testing.sqf", 250, true, [1, [ ["IronBar", 2],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 1]]], true],
	["UH1H_TK_EP1", ["VEHICLE", "AIR"], ["Police Helicopter", "No Desc"], [160000, 90000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],	
	
    /* Air */
	["Mi17_Civilian", ["VEHICLE", "AIR"], ["Mi17 Civilian", "No Desc"], [290000, 120000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],	
	["Mi17_medevac_RU", ["VEHICLE", "AIR"], ["Mi17 Medevac", "No Desc"], [320000, 220000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],
    ["C130J", ["VEHICLE", "AIR"], ["C130", "No Desc"], [350000, 20000], 272333, "core\items\noUse.sqf", 80000, true, [1, [ ["IronBar", 100],["Tyre", 6], ["Rubber", 100], ["Copper", 120], ["Leather" , 80], ["ElecComp", 150], ["AdvChipset", 60], ["Glass", 40]]], false],
    ["An2_2_TK_CIV_EP1", ["VEHICLE", "AIR"], ["An2 Civ Aircraft", "No Desc"], [90000, 25000], 100, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 80], ["Rubber", 20], ["Copper", 100], ["Leather" , 10], ["ElecComp", 30]]], false],
	["An2_1_TK_CIV_EP1", ["VEHICLE", "AIR"], ["An2 Civ Aircraft", "No Desc"], [90000, 25000], 100, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 80], ["Rubber", 20], ["Copper", 100], ["Leather" , 10], ["ElecComp", 30]]], false],
    ["MQ9PredatorB", ["VEHICLE", "AIR"], ["MQ9 Predator", "No Desc"], [290000, 120000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],	
	["MV22", ["VEHICLE", "AIR"], ["MV22", "No Desc"], [418000, 220000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],
	["Su34", ["VEHICLE", "AIR"], ["Su34", "No Desc"], [900500, 395000], 272333, "core\items\noUse.sqf", 80000, true, [1, [ ["IronBar", 100],["Tyre", 6], ["Rubber", 100], ["Copper", 120], ["Leather" , 80], ["ElecComp", 150], ["AdvChipset", 60], ["Glass", 40]]], false],
	["CH_47F_EP1", ["VEHICLE", "AIR"], ["Chinook", "No Desc"], [750500, 395000], 272333, "core\items\noUse.sqf", 80000, true, [1, [ ["IronBar", 100],["Tyre", 6], ["Rubber", 100], ["Copper", 120], ["Leather" , 80], ["ElecComp", 150], ["AdvChipset", 60], ["Glass", 40]]], false],
	["Mi171Sh_CZ_EP1", ["VEHICLE", "AIR"], ["Mi 171", "No Desc"], [418000, 220000], 1450, "core\items\noUse.sqf", 200, true, [1, [ ["IronBar", 120],["Tyre", 4], ["Rubber", 80], ["Copper", 70], ["Leather" , 30], ["ElecComp", 100], ["AdvChipset", 30], ["Glass", 20]]], false],
	["MH60S", ["VEHICLE", "AIR"], ["MH60S", "No Desc"], [260000, 50000], 440, "core\items\noUse.sqf", 120, true, [1, [ ["IronBar", 110], ["Rubber", 80], ["Copper", 100], ["Leather" , 20], ["ElecComp", 90], ["AdvChipset", 22], ["Glass", 10]]], false],
	["Mi17_INS", ["VEHICLE", "AIR"], ["Mi17", "No Desc"], [190000, 25000], 100, "core\items\noUse.sqf", 40, true, [1, [ ["IronBar", 80], ["Rubber", 20], ["Copper", 100], ["Leather" , 10], ["ElecComp", 30]]], false],
	
   /*Cars*/
    ["Skoda", ["VEHICLE", "CAR"], ["Skoda White", "No Description"], [10000, 2500], 800, "core\items\noUse.sqf", 300, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["SkodaRed", ["VEHICLE", "CAR"], ["Skoda Red", "No Description"], [10000, 2500], 800, "core\items\noUse.sqf", 300, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["SkodaBlue", ["VEHICLE", "CAR"], ["Skoda Blue", "No Description"], [9500, 2375], 800, "core\items\noUse.sqf", 300, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["SkodaGreen", ["VEHICLE", "CAR"], ["Skoda Green", "No Description"], [10000, 2500], 800, "core\items\noUse.sqf", 300, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["VWGolf", ["VEHICLE", "CAR"], ["VW Golf", "No Description"], [13000, 3250], 1050, "core\items\noUse.sqf", 250, true, [1, [ ["IronBar", 8],["Tire", 4], ["Rubber", 10], ["Copper", 4], ["ElecComp", 2]]], false],
    ["car_hatchback", ["VEHICLE", "CAR"], ["Hatchback", "No Description"], [12000, 3000], 900, "core\items\noUse.sqf", 350, true, [1, [ ["IronBar", 5],["Tire", 4], ["Rubber", 10], ["Copper", 4], ["ElecComp", 2]]], false],
	["Lada1", ["VEHICLE", "CAR"], ["Vas Red", "No Description"], [10000, 2500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["Lada2", ["VEHICLE", "CAR"], ["Vas White", "No Description"], [10000, 2500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
	["UAZ_CDF", ["VEHICLE", "CAR"], ["UAZ Army", "No Description"], [19000, 12500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["UAZ_INS", ["VEHICLE", "CAR"], ["UAZ Army", "No Description"], [19000, 12500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
	["car_sedan", ["VEHICLE", "CAR"], ["Sedan", "No Description"], [12000, 3000], 900, "core\items\noUse.sqf", 350, true, [1, [ ["IronBar", 5],["Tire", 4], ["Rubber", 10], ["Copper", 4], ["ElecComp", 2]]], false],
    ["Lada1_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Lada Green", "No Description"], [10000, 2500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["Lada2_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Lada Decorated", "No Description"], [10000, 2500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
    ["Volha_1_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Old Car (Blue)", "No Description"], [7500, 1875], 850, "core\items\noUse.sqf", 250, true, [1, [ ["IronBar", 2],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 1]]], false],
    ["Volha_2_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Old Car (White)", "No Description"], [7500, 1875], 850, "core\items\noUse.sqf", 250, true, [1, [ ["IronBar", 2],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 1]]], false],
    ["SUV_TK_EP1", ["VEHICLE", "CAR"], ["Suburban", "No Description"], [40000,10000], 1800, "core\items\noUse.sqf", 750, true, [], false, [true, "singleBlue", [[[0, 0.1, 0.3], [0, 0, 1], 0.4]]]],
	["GLT_M300_LT", ["VEHICLE", "CAR"], ["Lada Cab", "No Description"], [10000, 2500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
	["VolhaLimo_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Volha Limo", "No Description"], [40000,10000], 1800, "core\items\noUse.sqf", 750, true, [], false, [true, "singleBlue", [[[0, 0.1, 0.3], [0, 0, 1], 0.4]]]],
	["S1203_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Shag'n Wagon", "No Description"], [10000, 2500], 750, "core\items\noUse.sqf", 320, true, [1, [ ["IronBar", 4],["Tire", 4], ["Rubber", 10], ["Copper", 1], ["ElecComp", 2]]], false],
	
	/*SUVS*/
	
	
	
	
    /*Pickups*/
    ["datsun1_civil_1_open", ["VEHICLE", "CAR"], ["Datsun Open (Blue)", "No Description"], [25000, 6250], 1200, "core\items\noUse.sqf", 700, true, [1, [ ["IronBar", 10],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["ElecComp", 5]]], false],
    ["datsun1_civil_2_covered", ["VEHICLE", "CAR"], ["Datsun Covered", "No Description"], [25000, 6250], 1200, "core\items\noUse.sqf", 700, true, [1, [ ["IronBar", 10],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["ElecComp", 5]]], false],
    ["datsun1_civil_3_open", ["VEHICLE", "CAR"], ["Datsun Tubeframe", "No Description"], [25000, 6250], 1200, "core\items\noUse.sqf", 700, true, [1, [ ["IronBar", 10],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["ElecComp", 5]]], false],
    ["hilux1_civil_1_open", ["VEHICLE", "CAR"], ["Hilux Open (Gold)", "No Description"], [30000, 7500], 1400, "core\items\noUse.sqf", 900, true, [1, [ ["IronBar", 14],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["ElecComp", 5]]], false],
    ["hilux1_civil_2_covered", ["VEHICLE", "CAR"], ["Hilux Covered (Red)", "No Description"], [30000, 7500], 1400, "core\items\noUse.sqf", 900, true, [1, [ ["IronBar", 14],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["ElecComp", 5]]], false],
    ["hilux1_civil_3_open", ["VEHICLE", "CAR"], ["Hilux Open (White)", "No Description"], [30000, 7500], 1400, "core\items\noUse.sqf", 900, true, [1, [ ["IronBar", 14],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["ElecComp", 5]]], false],
    ["LandRover_CZ_EP1", ["VEHICLE", "CAR"], ["Landrover", "No Description"], [35000, 8750], 1400, "core\items\noUse.sqf", 700, true, [1, [ ["IronBar", 14],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["AdvChipset" , 1], ["ElecComp", 5]]], false],
    ["LandRover_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Landrover (Red)", "No Description"], [35000, 8750], 1400, "core\items\noUse.sqf", 700, true, [1, [ ["IronBar", 14],["Tire", 4], ["Rubber", 10], ["Copper", 5], ["Vinyl" , 1], ["AdvChipset" , 1], ["ElecComp", 5]]], false],
    
    /*Bikes*/
    ["MMT_Civ", ["VEHICLE", "CAR"], ["Mountain bike", "No Description"], [300, 75], 10, "core\items\noUse.sqf", 5, true, [1, [ ["Wood", 2], ["Rubber", 1]]], false],
    ["Old_bike_TK_CIV_EP1", ["VEHICLE", "CAR"], ["Old bike", "No Description"], [250, 62], 15, "core\items\noUse.sqf", 5, true, [1, [ ["Wood", 2], ["Rubber", 1]]], false],
    ["Old_moto_TK_Civ_EP1", ["VEHICLE", "CAR"], ["Old motorbike", "No Description"], [3500, 875], 150, "core\items\noUse.sqf", 30, true, [1, [ ["IronOre", 2],["Tire", 2], ["ElecComp", 1]]], false],
    ["M1030", ["VEHICLE", "CAR"], ["M1030", "No Description"], [3500, 875], 100, "core\items\noUse.sqf", 20, true, [1, [ ["IronOre", 2],["Tire", 2], ["ElecComp", 1]]], false],
    ["TT650_Civ", ["VEHICLE", "CAR"], ["TT650", "No Description"], [3800, 950], 100, "core\items\noUse.sqf", 30, true, [1, [ ["IronOre", 2],["Tire", 2], ["ElecComp", 1]]], false],
    ["TT650_Gue", ["VEHICLE", "CAR"], ["TT650 (Pattern)", "No Description"], [3800, 950], 100, "core\items\noUse.sqf", 30, true, [1, [ ["IronOre", 2],["Tire", 2], ["ElecComp", 1]]], false],
    ["TT650_TK_CIV_EP1", ["VEHICLE", "CAR"], ["TT650 (Rusty)", "No Description"], [3700, 925], 100, "core\items\noUse.sqf",30, true, [1, [ ["IronOre", 2],["Tire", 2], ["ElecComp", 1]]], false],
    ["ATV_US_EP1", ["VEHICLE", "CAR"], ["ATV", "No Description"], [4000, 1000], 300, "core\items\noUse.sqf", 100, true, [1, [ ["IronOre", 2],["Tire", 2], ["ElecComp", 1]]], false],
    
    /*Trucks*/
    ["Kamaz", ["VEHICLE", "CAR"], ["Kamaz", "No Description"], [160000, 40000], 5000, "core\items\noUse.sqf", 6000, true, [1, [ ["IronBar", 50],["Tire", 6], ["Copper", 40], ["Vinyl" , 12], ["Rubber",50], ["ElecComp",20], ["AdvChipset",5], ["Windshield",2], ["wood", 20]]], false],
    ["KamazOpen", ["VEHICLE", "CAR"], ["Kamaz (Open)", "No Description"], [160000, 40000], 4500, "core\items\noUse.sqf", 6000, true, [1, [ ["IronBar", 50],["Tire", 6], ["Copper", 40], ["Vinyl" , 12], ["Rubber",50], ["ElecComp",20], ["AdvChipset",5], ["Windshield",2], ["wood", 20]]], false],
    ["UralCivil", ["VEHICLE", "CAR"], ["Ural Civil", "No Description"], [120000, 30000], 4000, "core\items\noUse.sqf", 4000, true, [1, [ ["IronBar", 50],["Tire", 6], ["Copper", 40], ["Vinyl" , 12], ["ElecComp",20], ["wood", 20]]], false],
    ["UralCivil2", ["VEHICLE", "CAR"], ["Ural Civil 2", "No Description"], [120000, 30000], 4000, "core\items\noUse.sqf", 4000, true, [1, [ ["IronBar", 50],["Tire", 6], ["Copper", 40], ["Vinyl" , 12], ["ElecComp",20], ["wood", 20]]], false],
    ["Ural_INS", ["VEHICLE", "CAR"], ["Ural Camo", "No Description"], [125000, 31250], 4000, "core\items\noUse.sqf", 4000, true, [1, [ ["IronBar", 50],["Tire", 6], ["Copper", 40], ["Vinyl" , 12], ["ElecComp",20], ["wood", 20]]], false],
    ["MTVR", ["VEHICLE", "CAR"], ["MTVR", "No Description"], [160000, 40000], 5000, "core\items\noUse.sqf", 5000, true, [1, [ ["IronBar", 50],["Tire", 6], ["Copper", 40], ["Vinyl" , 12], ["Rubber",50], ["ElecComp",20], ["AdvChipset",5], ["Windshield",2], ["wood", 20]]], false],
    ["V3S_Salvage_TK_GUE_EP1", ["VEHICLE", "CAR"], ["V3S", "No Description"], [90000, 22500], 3500, "core\items\noUse.sqf", 2500, true, [1, [ ["IronBar", 50],["Tire", 6], ["Copper", 40], ["Vinyl" , 12], ["ElecComp",20], ["wood", 20]]], false],
    ["Tractor", ["VEHICLE", "CAR"], ["Tractor", "No Description"], [4500, 1125], 3000, "core\items\noUse.sqf", 500, true, [1, [ ["IronBar", 10],["Tire", 4]]], false],

	/*Weapons*/
	/*Pistol*/
   	["M9", ["WEAPON", "PISTOL"], ["M9", "No Description"], [2000, 500], 2, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3], ["Rubber", 2], ["Copper",1] ] ], false],
   	["Colt1911", ["WEAPON", "PISTOL"], ["Colt 1911", "WW2 Favorite"], [2200, 550], 2, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3], ["Rubber", 2], ["Copper",1] ] ], false],
   	/*Stun*/
	["M1014", ["WEAPON", "RIFLE"], ["M1014", "No Description"], [5000, 1250], 5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 5], ["Rubber", 2], ["Copper",2]]], true],
   	/*Rifle*/
	["M4A1_Aim", ["WEAPON", "RIFLE"], ["M4 CCO", "No Description"], [15000, 3750], 3, "core\items\noUse.sqf", 10, true, [1, [ ["IronBar", 10], ["Rubber", 4], ["Copper",4], ["ElecComp", 4]]], false],
	["huntingrifle", ["WEAPON", "RIFLE"], ["CZ550", "Hunting Rifle"], [20000, 5000], 3, "core\items\noUse.sqf", 10, true, [1, [ ["wood", 10], ["IronBar", 10], ["Rubber", 4], ["Copper",4], ["AdvChipset", 1]]], false],
    
    /* Ammo */
	/* Pistol */
	["15Rnd_9x19_M9", ["MAGAZINE", "PISTOL"], ["M9 Magazine", "No Description"], [200, 50], 0.1, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
   	["7Rnd_45ACP_1911", ["MAGAZINE", "PISTOL"], ["7Rnd M1911 .45 ACP Mag", "No Description"], [220, 55], 0.1, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
	/* Stun */
	["8Rnd_B_Beneli_74Slug", ["MAGAZINE", "RIFLE"], ["8Rnds BeanBag Non-Lethal", "No Description"], [400, 100], 0.2, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 2]]], false],
   	["x26_mag", ["MAGAZINE", "PISTOL"], ["X26 Cartridge", "No Description"], [40, 10], 0.1, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
    /* Rifle */
	["30Rnd_556x45_Stanag", ["MAGAZINE", "RIFLE"], ["STANAG", "No Description"], [400, 100], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3]]], false],
	["5x_22_LR_17_HMR", ["MAGAZINE", "RIFLE"], ["CZ550 Ammo", "No Description"], [1000, 250], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3]]], false],
	/* SMG */
	["FlareGreen_M203", ["MAGAZINE", "RIFLE"], ["Green Flare", "No Description"], [100, 25], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
	["FlareRed_M203", ["MAGAZINE", "RIFLE"], ["Red Flare", "No Description"], [100, 25], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
	["FlareYellow_M203", ["MAGAZINE", "RIFLE"], ["Yellow Flare", "No Description"], [100, 25], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 1]]], false],
	["1Rnd_HE_M203", ["MAGAZINE", "RIFLE"], ["M203 HE Nade", "No Description"], [2000, 500], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 6]]], false],
	["30Rnd_9x19_MP5", ["MAGAZINE", "RIFLE"], ["9x19 30rnd ammo", "MP5 and TMP and PP2000 Mag"], [1000, 250], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3]]], false],
	["30Rnd_9x19_MP5SD", ["MAGAZINE", "RIFLE"], ["MP5 and TMP SD Mag", "No Description"], [1000, 250], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3]]], false],
	["20Rnd_556x45_Stanag", ["MAGAZINE", "RIFLE"], ["STANAG 20rd", "No Description"], [800, 200], 0.5, "core\items\noUse.sqf", 0, true, [1, [ ["IronBar", 3]]], false],

	/* Bushes/Seeds/Trees */
    ["mari_seed", ["ITEM", "SPROUT"], ["Marihuana Seed", "No Description"], [100,25], 0, "core\items\sprout.sqf", 0, true, [], true],
	["cocaine_seed", ["ITEM", "SPROUT"], ["Cocaine Seeds", "No Description"], [200,50], 0, "core\items\sprout.sqf", 0, true, [], true],
    ["apple_seed", ["ITEM", "SPROUT"], ["Apple Seed", "No Description"], [12,3], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["populus_seed", ["ITEM", "SPROUT"], ["Populus Seed", "No Description"], [4,1], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["larix_seed", ["ITEM", "SPROUT"], ["Larix Seed", "No Description"], [12,3], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["pine_seed", ["ITEM", "SPROUT"], ["Pine Seed", "No Description"], [12,3], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["potato_sprouts", ["ITEM", "SPROUT"], ["Potato Sprouts", "No Description"], [8,2], 0, "core\items\sprout.sqf", 0, true, [], false],
    ["alder_seed", ["ITEM", "SPROUT"], ["Alder Seed", "No Description"], [8,2], 0, "core\items\sprout.sqf", 0, true, [], false],
	["pumpkin_seed", ["ITEM", "SPROUT"], ["Pumpkin Seed", "No Description"], [4,1], 0, "core\items\sprout.sqf", 0, true, [], false],
	["cabbage_seed", ["ITEM", "SPROUT"], ["Cabbage Seed", "No Description"], [4,1], 0, "core\items\sprout.sqf", 0, true, [], false],
	["maple_seed", ["ITEM", "SPROUT"], ["Maple Seed", "No Description"], [8,2], 0, "core\items\sprout.sqf", 0, true, [], false],
	["rubber_seed", ["ITEM", "SPROUT"], ["Rubber Seed", "No Description"], [40,10], 0, "core\items\sprout.sqf", 0, true, [], false],
	["corn_seed", ["ITEM", "SPROUT"], ["Corn Seed", "No Description"], [15,6], 0, "core\items\sprout.sqf", 0, true, [], false],
   	
   /*Drugs*/
    ["mari", ["ITEM", "DRUG"], ["Marijuana", "No Description"], [400,100], 1, "core\items\drugUse.sqf", 0, true, [], true],
	["cocaine", ["ITEM", "DRUG"], ["Cocaine", "No Description"], [800,200], 1, "core\items\drugUse.sqf", 0, true, [], true],
	["lsd", ["ITEM", "DRUG"], ["LSD", "No Description"], [1000,250], 1, "core\items\drugUse.sqf", 0, true, [], true],
	["Stamps", ["ITEM", "DRUG"], ["Cocaine", "No Description"], [2000,500], 1, "core\items\drugUse.sqf", 0, true, [], true],
	["heroine", ["ITEM", "DRUG"], ["Cocaine", "No Description"], [4000,1000], 1, "core\items\drugUse.sqf", 0, true, [], true],
    ["Moonshine", ["ITEM", "DRUG"], ["Moonshine", "No Description"], [2000,500], 5, "core\items\drug.sqf", 5, true, [1, [ ["Corn", 4],["Bottle", 1]]], false],	
	/*Resources*/
	
	/* Food Resources */
	["Rabbit", ["ITEM", "RESOURCE"], ["Rabbit", "No Description"], [40,10], 0.5, "core\items\noUse.sqf", 0, true, [], false],
	["Chicken", ["ITEM", "RESOURCE"], ["Chicken", "No Description"], [20,5], 0.5, "core\items\noUse.sqf", 0, true, [], false],
	["Lamb", ["ITEM", "RESOURCE"], ["Lamb", "No Description"], [120,30], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Cow", ["ITEM", "RESOURCE"], ["Cow", "No Description"], [120,30], 10, "core\items\noUse.sqf", 0, true, [], false],
	["Boar", ["ITEM", "RESOURCE"], ["Boar", "No Description"], [100,25], 5, "core\items\noUse.sqf", 0, true, [], false],
   
    /*Primary Resources */
	["GoldOre", ["ITEM", "RESOURCE"], ["Gold Ore", "No Description"], [1360,340], 10, "core\items\noUse.sqf", 0, true, [], false],
    ["IronOre", ["ITEM", "RESOURCE"], ["Iron Ore", "No Description"], [160,40], 10, "core\items\noUse.sqf", 0, true, [], false],
	["CopperOre", ["ITEM", "RESOURCE"], ["Copper Ore", "No Description"], [320,80], 10, "core\items\noUse.sqf", 0, true, [], false],
	["Stone", ["ITEM", "RESOURCE"], ["Stone", "No Description"], [16,4], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Sulphur", ["ITEM", "RESOURCE"], ["Sulphur", "No Description"], [640,160], 3, "core\items\noUse.sqf", 0, true, [], false],
	["salpeter", ["ITEM", "RESOURCE"], ["Salpeter", "No Description"], [640,160], 3, "core\items\noUse.sqf", 0, true, [], false],
	["lead", ["ITEM", "RESOURCE"], ["Lead", "No Description"], [640,160], 3, "core\items\noUse.sqf", 0, true, [], false],
	["Diamond", ["ITEM", "RESOURCE"], ["Diamond", "No Description"], [1584,396], 10, "core\items\noUse.sqf", 0, true, [], false],
	["Silver", ["ITEM", "RESOURCE"], ["Silver", "No Description"], [960,240], 10, "core\items\noUse.sqf", 0, true, [], false],
    ["Sand", ["ITEM", "RESOURCE"], ["Sand", "No Description"], [16,4], 3, "core\items\noUse.sqf", 0, true, [], false],
	["Salt", ["ITEM", "RESOURCE"], ["Salt", "No Description"], [16,4], 3, "core\items\noUse.sqf", 0, true, [], false],
	["Clay", ["ITEM", "RESOURCE"], ["Clay", "No Description"], [320,80], 3, "core\items\noUse.sqf", 0, true, [], false],
	["Coal", ["ITEM", "RESOURCE"], ["Coal", "No Description"], [400,100], 10, "core\items\noUse.sqf", 0, true, [], false],
	["Oil", ["ITEM", "RESOURCE"], ["Oil", "No Description"], [480,120], 10, "core\items\noUse.sqf", 0, true, [], false],
	["Silicon", ["ITEM", "RESOURCE"], ["Silicon", "No Description"], [520,130], 3, "core\items\noUse.sqf", 0, true, [1, [ ["Sand", 1], ["Oil",1]]], false],
	["populus_log", ["ITEM", "RESOURCE"], ["Populus Log", "No Description"], [24,6], 10, "core\items\noUse.sqf", 0, true, [], false],
	["alder_log", ["ITEM", "RESOURCE"], ["Alder Log", "No Description"], [48,12], 10, "core\items\noUse.sqf", 0, true, [], false],
	["pine_log", ["ITEM", "RESOURCE"], ["Pine Log", "No Description"], [64,16], 10, "core\items\noUse.sqf", 0, true, [], false],
	["larix_log", ["ITEM", "RESOURCE"], ["Larix Log", "No Description"], [96,24], 10, "core\items\noUse.sqf", 0, true, [], false],
	["maple_log", ["ITEM", "RESOURCE"], ["Maple Log", "No Description"], [120,30], 10, "core\items\noUse.sqf", 0, true, [], false],
	["rubber_log", ["ITEM", "RESOURCE"], ["Rubber Log", "No Description"], [144,36], 10, "core\items\noUse.sqf", 0, true, [], false],
	["Wheat", ["ITEM", "RESOURCE"], ["Wheat", "No Description"], [16,4], 2, "core\items\noUse.sqf", 0, true, [], false],
	["Flour", ["ITEM", "RESOURCE"], ["Flour", "No Description"], [8,2], 0.5, "core\items\noUse.sqf", 0, true, [], false],
	["Corn", ["ITEM", "RESOURCE"], ["Corn", "Raw Corn"], [24,6], 2, "core\items\nouse.sqf", 3, true, [], false],
	 
	/* Secondary Resources */
	["wood", ["ITEM", "RESOURCE"], ["Wood", "No Description"], [240,60], 5, "core\items\noUse.sqf", 0, true, [], false],
	["IronBar", ["ITEM", "RESOURCE"], ["Iron Bar", "No Description"], [380,95], 2, "core\items\noUse.sqf", 0, true, [], false],
	["Copper", ["ITEM", "RESOURCE"], ["Copper", "No Description"], [680,170], 2, "core\items\noUse.sqf", 0, true, [], false],
	["GoldBar", ["ITEM", "RESOURCE"], ["Gold Bar", "No Description"], [3200,800], 5, "core\items\noUse.sqf", 0, true, [], false],
	["SilverBar", ["ITEM", "RESOURCE"], ["Silver Bar", "No Description"], [2200,550], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Glass", ["ITEM", "RESOURCE"], ["Glass", "No Description"], [36,9], 2, "core\items\noUse.sqf", 0, true, [], false],
	["Bricks", ["ITEM", "RESOURCE"], ["Bricks", "No Description"], [700,175], 2, "core\items\noUse.sqf", 0, true, [], false],
	["Petrol", ["ITEM", "RESOURCE"], ["Petrol", "No Description"], [280,70], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Rubber", ["ITEM", "RESOURCE"], ["Rubber", "No Description"], [380,95], 1, "core\items\noUse.sqf", 0, true, [], false],
	["Tyre", ["ITEM", "RESOURCE"], ["Rubber Tyre", "No Description"], [560,140], 5, "core\items\noUse.sqf", 0, true, [2, [["Rubber", 2],["IronBar", 1]]], false],
	["Leather", ["ITEM", "RESOURCE"], ["Leather", "No Description"], [140,35], 5, "core\items\noUse.sqf", 0, true, [], false],
	["Vinyl", ["ITEM", "RESOURCE"], ["Vinyl", "No Description"], [160,40], 2, "core\items\noUse.sqf", 0, true, [], false],
	
	/* Tertiary Resources */
	["ElecComp", ["ITEM", "RESOURCE"], ["Electric Components", "No Description"], [1900,475], 3, "core\items\noUse.sqf", 0, true, [1, [ ["Copper", 1],["Silicon", 2] ]], false],
	["AdvChipset", ["ITEM", "RESOURCE"], ["Advanced Chipset", "No Description"], [10600,2650], 5, "core\items\noUse.sqf", 0, true, [1, [ ["ElecComp", 2],["GoldBar", 1], ["Silicon", 2], ["Diamond", 1]]], false],
	["Plank", ["ITEM", "RESOURCE"], ["Plank", "No Description"], [300,75], 3, "core\items\noUse.sqf", 0, true, [1, [ ["wood", 2]]], false],
	["Nails", ["ITEM", "RESOURCE"], ["Nails", "Ram these into things."], [40,10], 0.1, "core\items\noUse.sqf", 0, true, [10, [["IronBar", 1]]], false],
	["Screws", ["ITEM", "RESOURCE"], ["Screws", "Hold stuff together with these nifty screws."], [40,10], 0.1, "core\items\noUse.sqf", 0, true, [10, [["IronBar", 1]]], false],
	["Tempered Glass", ["ITEM", "RESOURCE"], ["Tempered Glass", "A toughened glass pane for use in the automotive and housing industry."], [80,20], 1, "core\items\noUse.sqf", 0, true, [1, [["Glass", 2]]], false],
	["Windshield", ["ITEM", "RESOURCE"], ["Windshield", "A special wide pane of glass for use on vehicles"], [160,40], 4, "core\items\noUse.sqf", 0, true, [1, [["Glass", 4]]], false],
	["Aggrigate", ["ITEM", "RESOURCE"], ["Aggrigate", "Crushed up stone, used in the creation of concrete"], [24,6], 1, "core\items\noUse.sqf", 0, true, [1, [["Stone", 1]]], false],
	["Concrete", ["ITEM", "RESOURCE"], ["Concrete", "Used in numerous applications, this tough and universal material is in almost anything that does not move."], [160,40], 5, "core\items\noUse.sqf", 0, true, [1, [["Aggrigate", 2], ["Sand", 4], ["High_bottleWater", 5]]], false],
	["Beam", ["ITEM", "RESOURCE"], ["Beam", "No Description"], [560,160], 3, "core\items\noUse.sqf", 0, true, [1, [ ["wood", 4]]], false]
	
	///NO COMMA!
];
	
RPP_fnc_itemGetArray =
{
    private ["_id", "_arr", "_getID"];
    _id = _this;
    _arr = [];
    
    {
        _getID = (_x select 0);
          
        if (_id == _getID) exitWith
        {
            _arr = _x;
        };
    } forEach RPP_var_goods;

	if (count _arr == 0) then {
		_arr = "Null" call RPP_fnc_itemGetArray;	
	};
    
    _arr
};

RPP_fnc_itemGetAmount = 
{
    private ["_class", "_amount"];
    _class = _this;
    _amount = 0;
    {
        if (_x select 0 == _class) exitwith
        {
            _amount = _x select 1;
        }; 
    } forEach RPP_var_inventory;
    
    _amount
};

RPP_fnc_itemGetClass = 
{
    ((_this call RPP_fnc_itemGetArray) select 0)
};

RPP_fnc_itemGetType1 =
{
    (((_this call RPP_fnc_itemGetArray) select 1) select 0)
};

RPP_fnc_itemGetType2 =
{
    (((_this call RPP_fnc_itemGetArray) select 1) select 1)
};

RPP_fnc_itemGetName =
{
    (((_this call RPP_fnc_itemGetArray) select 2) select 0)
};

RPP_fnc_itemGetDesc =
{
    (((_this call RPP_fnc_itemGetArray) select 2) select 1)
};

RPP_fnc_itemGetBuyPrice =
{
    (((_this call RPP_fnc_itemGetArray) select 3) select 0)
};

RPP_fnc_itemGetSellPrice =
{
    (((_this call RPP_fnc_itemGetArray) select 3) select 1)
};

RPP_fnc_itemGetMass =
{
    ((_this call RPP_fnc_itemGetArray) select 4)
};

RPP_fnc_itemGetScript =
{
    ((_this call RPP_fnc_itemGetArray) select 5)
};

RPP_fnc_itemGetTrunkSize =
{
    ((_this call RPP_fnc_itemGetArray) select 6)
};

RPP_fnc_itemGetCanDrop =
{
    ((_this call RPP_fnc_itemGetArray) select 7)
};

RPP_fnc_itemGetFactoryCost = 
{
    ((_this call RPP_fnc_itemGetArray) select 8)
};

RPP_fnc_itemGetIllegal = 
{
    ((_this call RPP_fnc_itemGetArray) select 9)
};

RPP_fnc_itemGetSiren = 
{
    ((_this call RPP_fnc_itemGetArray) select 10)
};

