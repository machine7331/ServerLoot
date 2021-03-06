//here place Weapons an usable items (ex.: Binocular, ...)
//used with addWeaponCargoGlobal
//"lootWeapon_list" array of [class, [weaponlist]]
lootWeapon_list = [
[ 0, [							// CIVIL
"m16_EPOCH",
"m16Red_EPOCH",
"hgun_PDW2000_F",
"hgun_ACPC2_F",
"hgun_Rook40_F",
"hgun_P07_F",
"hgun_Pistol_heavy_01_F",
"hgun_Pistol_heavy_02_F",
"ruger_pistol_epoch",
"1911_pistol_epoch",
"hgun_Pistol_Signal_F"
]],[ 1, [						// MILITARY
"srifle_EBR_F",
"srifle_GM6_F",
"srifle_LRR_F",
"srifle_DMR_01_F",
"m107Tan_EPOCH",
"m107_EPOCH",
"arifle_Katiba_F",
"arifle_Katiba_C_F",
"arifle_Katiba_GL_F",
"arifle_MXC_F",
"arifle_MX_F",
"arifle_MX_GL_F",
"arifle_MXM_F",
"arifle_SDAR_F",
"arifle_TRG21_F",
"arifle_TRG20_F",
"arifle_TRG21_GL_F",
"arifle_Mk20_F",
"arifle_Mk20C_F",
"arifle_Mk20_GL_F",
"arifle_Mk20_plain_F",
"arifle_Mk20C_plain_F",
"arifle_Mk20_GL_plain_F",
"arifle_MXM_Black_F",
"arifle_MX_GL_Black_F",
"arifle_MX_Black_F",
"arifle_MXC_Black_F",
"arifle_MX_SW_F",
"arifle_MX_SW_Black_F",
"m16_EPOCH",
"m16Red_EPOCH",
"M14_EPOCH",
"M14Grn_EPOCH",
"m4a3_EPOCH",
"AKM_EPOCH",
"LMG_Mk200_F",
"LMG_Zafir_F",
"m249_EPOCH",
"m249Tan_EPOCH",
"launch_NLAW_F",
"launch_RPG32_F",
"launch_Titan_F"
]],[ 2, [
"arifle_Katiba_C_F",
"arifle_Mk20C_F",
"arifle_Mk20_F",
"arifle_MXC_F",
"arifle_SDAR_F",
"arifle_TRG20_F",
"arifle_TRG21_F",
"Binocular",
"SMG_01_F",
"SMG_02_F"
]],[ 3, [
"SMG_01_F",
"SMG_02_F",
"Rollins_F",
"speargun_epoch"
]]];

//-------------------------------------------------------------------------------------
//here place magazines, weaponattachments and bodyitems(ex.: ItemGPS, ItemMap, Medikit, FirstAidKit, Binoculars, ...)
//used with addMagazineCargoGlobal
//"lootMagazine_list" array of [class, [magazinelist]]
//								class		: 0-civil, 1-military, ... (add more as you wish)
//								magazinelist: list of magazine class names
lootMagazine_list = [
[ 0, [							// CIVIL
"9Rnd_45ACP_Mag",
"11Rnd_45ACP_Mag",
"6Rnd_45ACP_Cylinder",
"16Rnd_9x21_Mag",
"30Rnd_9x21_Mag",
"10rnd_22X44_magazine",
"9rnd_45X88_magazine",
"HandGrenade"
]],[ 1, [						// MILITARY
"20Rnd_762x51_Mag",
"10Rnd_762x51_Mag",
"30Rnd_762x39_Mag",
"150Rnd_762x51_Box",
"150Rnd_762x51_Box_Tracer",
"5Rnd_127x108_Mag",
"5Rnd_127x108_APDS_Mag",
"30Rnd_65x39_caseless_green",
"30Rnd_65x39_caseless_green_mag_Tracer",
"30Rnd_65x39_caseless_mag",
"30Rnd_65x39_caseless_mag_Tracer",
"200Rnd_65x39_cased_Box",
"100Rnd_65x39_caseless_mag",
"200Rnd_65x39_cased_Box_Tracer",
"100Rnd_65x39_caseless_mag_Tracer",
"20Rnd_556x45_UW_mag",
"30Rnd_556x45_Stanag",
"30Rnd_556x45_Stanag_Tracer_Red",
"30Rnd_556x45_Stanag_Tracer_Green",
"30Rnd_556x45_Stanag_Tracer_Yellow",
"200Rnd_556x45_M249",
"7Rnd_408_Mag",
"spear_magazine",
"5Rnd_rollins_mag",
"30Rnd_45ACP_Mag_SMG_01",
"30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
"9Rnd_45ACP_Mag",
"11Rnd_45ACP_Mag",
"6Rnd_45ACP_Cylinder",
"16Rnd_9x21_Mag",
"30Rnd_9x21_Mag",
"10rnd_22X44_magazine",
"9rnd_45X88_magazine",
"APERSBoundingMine_Range_Mag",
"APERSMine_Range_Mag",
"APERSTripMine_Wire_Mag",
"ATMine_Range_Mag",
"ClaymoreDirectionalMine_Remote_Mag",
"HandGrenade",
"MiniGrenade",
"SLAMDirectionalMine_Wire_Mag",
"NLAW_F",
"RPG32_F",
"RPG32_HE_F",
"Titan_AA",
"Titan_AP",
"Titan_AT"
]],[ 2, [						// INDUSTRIAL
"20Rnd_556x45_UW_mag",
"30Rnd_45ACP_Mag_SMG_01",
"EnergyPack",
"EnergyPackLg",
"30Rnd_556x45_Stanag",
"30Rnd_556x45_Stanag_Tracer_Green",
"30Rnd_556x45_Stanag_Tracer_Red",
"30Rnd_556x45_Stanag_Tracer_Yellow",
"30Rnd_65x39_caseless_green",
"30Rnd_65x39_caseless_green_mag_Tracer",
"30Rnd_65x39_caseless_mag",
"30Rnd_65x39_caseless_mag_Tracer",
"30Rnd_9x21_Mag"
]],[ 3, [						// RESEARCH
"7Rnd_408_Mag",
"spear_magazine",
"5Rnd_rollins_mag"
]]];

//-------------------------------------------------------------------------------------
//here place hats, glasses, clothes, uniforms, vests
//used with addItemCargoGlobal
//"lootItem_list" array of [class, [itemlist]]
//								class		: 0-civil, 1-military, ... (add more as you wish)
//								itemlist	: list of item class names
lootItem_list = [
[ 0, [							// CIVIL
"ItemLockBox",
"ChainSaw",
"ItemCoolerE",
"VehicleRepairLg",
"Hatchet",
"MultiGun",
"MeleeSledge",
"CircuitParts",
"VehicleRepair",
"ItemMixOil",
"emptyjar_epoch",
"jerrycan_epoch",
"Heal_EPOCH",
"Defib_EPOCH",
"Repair_EPOCH",
"Pelt_EPOCH",
"Venom_EPOCH",
"PartOre",
"ItemKiloHemp",
"SnakeCarcass_EPOCH",
"RabbitCarcass_EPOCH",
"ChickenCarcass_EPOCH",
"GoatCarcass_EPOCH",
"SheepCarcass_EPOCH",
"U_C_Poloshirt_stripped",
"U_C_Poloshirt_blue",
"U_C_Poloshirt_burgundy",
"U_C_Poloshirt_tricolour",
"U_C_Poloshirt_salmon",
"U_C_Poloshirt_redwhite",
"U_C_Poor_1",
"U_C_WorkerCoveralls", 
"U_C_Journalist",
"ItemCompass",
"ItemGPS",
"ItemWatch",
"Binocular",
"WhiskeyNoodle",
"ItemSodaOrangeSherbet",
"ItemSodaPurple",
"ItemSodaMocha",
"ItemSodaBurst",
"ItemSodaRbull",
"FoodBioMeat",
"FoodMeeps",
"FoodSnooter",
"FoodWalkNSons",
"sardines_epoch",
"meatballs_epoch",
"scam_epoch",
"sweetcorn_epoch",
"honey_epoch",
"CookedSheep_EPOCH",
"CookedGoat_EPOCH",
"SnakeMeat_EPOCH",
"CookedRabbit_EPOCH",
"CookedChicken_EPOCH",
"ItemTrout",
"ItemSeaBass",
"ItemTuna",
"FAK",
"Towelette",
"HeatPack",
"ColdPack",
"ItemTopaz",
"ItemOnyx",
"ItemSapphire",
"ItemAmethyst",
"ItemEmerald",
"ItemCitrine",
"ItemRuby",
"ItemQuartz",
"ItemJade",
"ItemGarnet",
"PaintCanBlk",
"PaintCanBlu",
"PaintCanBrn",
"PaintCanGrn",
"PaintCanOra",
"PaintCanPur",
"PaintCanRed",
"PaintCanTeal",
"PaintCanYel",
"H_39_EPOCH",
"H_40_EPOCH",
"H_41_EPOCH",
"H_42_EPOCH",
"H_43_EPOCH",
"H_44_EPOCH",
"H_45_EPOCH",
"H_46_EPOCH",
"H_47_EPOCH",
"H_48_EPOCH",
"H_49_EPOCH",
"H_50_EPOCH",
"H_51_EPOCH",
"H_52_EPOCH",
"H_53_EPOCH",
"H_54_EPOCH",
"H_55_EPOCH",
"H_56_EPOCH",
"H_57_EPOCH",
"H_58_EPOCH",
"H_59_EPOCH",
"H_60_EPOCH",
"H_61_EPOCH",
"H_62_EPOCH",
"H_63_EPOCH",
"H_64_EPOCH",
"H_65_EPOCH",
"H_66_EPOCH",
"H_67_EPOCH",
"H_68_EPOCH",
"H_69_EPOCH",
"H_70_EPOCH",
"H_71_EPOCH",
"H_72_EPOCH",
"H_73_EPOCH",
"H_74_EPOCH",
"H_75_EPOCH",
"H_76_EPOCH",
"H_77_EPOCH",
"H_78_EPOCH",
"H_79_EPOCH",
"H_80_EPOCH",
"H_81_EPOCH",
"H_82_EPOCH",
"H_83_EPOCH",
"H_84_EPOCH",
"H_85_EPOCH",
"H_86_EPOCH",
"H_87_EPOCH",
"H_88_EPOCH",
"H_89_EPOCH",
"H_90_EPOCH",
"H_91_EPOCH",
"H_92_EPOCH",
"V_1_EPOCH",
"V_2_EPOCH",
"V_3_EPOCH",
"V_4_EPOCH",
"V_5_EPOCH",
"V_6_EPOCH",
"V_7_EPOCH",
"V_8_EPOCH"			
]],[ 1, [						// MILITARY
"EpochRadio0",
"EpochRadio1",
"EpochRadio2",
"EpochRadio3",
"EpochRadio4",
"EpochRadio5",
"EpochRadio6",
"EpochRadio7",
"EpochRadio8",
"EpochRadio9",
"V_19_EPOCH",
"V_20_EPOCH", 
"V_21_EPOCH",
"V_22_EPOCH",
"V_23_EPOCH",
"V_24_EPOCH",
"V_25_EPOCH",
"V_26_EPOCH",
"V_27_EPOCH",
"V_28_EPOCH",
"V_29_EPOCH",
"V_30_EPOCH",
"V_31_EPOCH",
"V_32_EPOCH",
"V_33_EPOCH",
"V_34_EPOCH",
"V_35_EPOCH",
"V_36_EPOCH",
"V_37_EPOCH",
"V_38_EPOCH",
"V_39_EPOCH",
"V_40_EPOCH",
"wolf_mask_epoch",
"pkin_mask_epoch",
"U_O_CombatUniform_ocamo",
"U_O_GhillieSuit",
"U_O_PilotCoveralls",
"U_O_Wetsuit",
"U_OG_Guerilla1_1",
"U_OG_Guerilla2_1",
"U_OG_Guerilla2_3",
"U_OG_Guerilla3_1",
"U_OG_Guerilla3_2",
"U_OG_leader",
"U_Wetsuit_uniform",
"U_Wetsuit_White",
"U_Wetsuit_Blue",
"U_Wetsuit_Purp",
"U_Wetsuit_Camo",
"U_CamoRed_uniform",
"U_CamoBrn_uniform",
"U_CamoBlue_uniform",
"U_Camo_uniform",
"U_ghillie1_uniform",
"U_ghillie2_uniform",
"U_ghillie3_uniform"
]],[ 2, [						// INDUSTRIAL
"V_9_EPOCH",
"V_10_EPOCH",
"V_11_EPOCH",
"V_12_EPOCH",
"V_13_EPOCH",
"V_14_EPOCH",
"V_15_EPOCH",
"V_16_EPOCH",
"V_17_EPOCH",
"V_18_EPOCH",
"CinderBlocks",
"U_C_Scientist",
"U_OrestesBody",
"MortarBucket",
"ItemScraps",
"ItemCorrugated",
"ItemCorrugatedLg",
"PartPlankPack",
"WoodLog_EPOCH",
"KitStudWall",
"KitWoodFloor",
"KitWoodStairs",
"KitWoodRamp",
"KitFirePlace",
"KitTiPi",
"KitShelf",
"KitFoundation",
"KitCinderWall"
]],[ 3, [						// Military
"U_C_Driver_1",
"U_C_Driver_2",
"U_C_Driver_3",
"U_C_Driver_4",
"U_C_Driver_1_black",
"U_C_Driver_1_blue",
"U_C_Driver_1_green",
"U_C_Driver_1_red", 
"U_C_Driver_1_white",
"U_C_Driver_1_yellow",
"U_C_Driver_1_orange",
"U_C_Driver_1_red",
"CinderBlocks",
"U_C_Scientist",
"U_OrestesBody",
"MortarBucket",
"ItemScraps",
"ItemCorrugated",
"ItemCorrugatedLg",
"PartPlankPack",
"WoodLog_EPOCH",
"KitStudWall",
"KitWoodFloor",
"KitWoodStairs",
"KitWoodRamp",
"KitFirePlace",
"KitTiPi",
"KitShelf",
"KitFoundation",
"KitCinderWall"
]]];

//-------------------------------------------------------------------------------------
//here place backpacks, parachutes and packed drones/stationary
//used with addBackpackCargoGlobal
//"lootBackpack_list" array of [class, [backpacklist]]
//								class		: 0-civil, 1-military, ... (add more as you wish)
//								backpacklist: list of backpack class names
lootBackpack_list = [
[ 0, [							// CIVIL
"smallbackpack_red_epoch",
"smallbackpack_green_epoch",
"smallbackpack_teal_epoch",
"smallbackpack_pink_epoch",
"B_AssaultPack_cbr",  
"B_AssaultPack_dgtl",
"B_AssaultPack_khk",
"B_AssaultPack_mcamo",
"B_AssaultPack_ocamo",
"B_AssaultPack_rgr",
"B_AssaultPack_sgg",
"smallbackpack_green",
"smallbackpack_pink",
"smallbackpack_red",
"ItemLockBox",
"smallbackpack_teal"
]],[ 1, [						// MILITARY
"B_Parachute",						
"B_Carryall_cbr",					
"B_Carryall_khk",					
"B_Carryall_mcamo",
"B_Carryall_ocamo",
"B_Carryall_oli",
"B_Carryall_oucamo"
]],[ 2, [						// INDUSTRIAL
"B_FieldPack_oucamo",
"B_TacticalPack_blk",
"B_TacticalPack_mcamo",
"B_TacticalPack_ocamo",
"B_TacticalPack_oli",
"B_TacticalPack_rgr",
"B_Kitbag_cbr",
"B_Kitbag_rgr",
"B_Kitbag_mcamo",
"B_Kitbag_sgg"
]],[ 3, [					// armed civ	
"B_FieldPack_blk",					
"B_FieldPack_cbr",
"B_FieldPack_khk",
"B_FieldPack_ocamo",
"B_FieldPack_oli"
]]];

lootworldObject_list = [
[ 0, [							// CIVIL

]],[ 1, [						// MILITARY

]],[ 2, [						// INDUSTRIAL

]],[ 3, [						// RESEARCH

]],[ 4, [						// MEDICAL

]],[ 5, [						// FOOD

]],[ 6, [						// HANGARS

]]
];