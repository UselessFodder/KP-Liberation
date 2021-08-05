/*
    Needed Mods:
    - None
- Ray: CUP Units?  This is using ION PMC after all.


    Optional Mods:
    - BWMod
    - RHSUSAF
    - F-15C
    - F/A-18
    - CUP Weapons
    - CUP Vehicles
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack
*/


/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Research_HQ_F";                                    //* This is the main FOB HQ building.
FOB_box_typename = "Land_Cargo20_white_F";                            //* This is the FOB as a container.
FOB_truck_typename = "B_Truck_01_box_F";                                //* This is the FOB as a vehicle.
// Left FOB truck as is because no better vehicle exists that I see
Arsenal_typename = "B_supplyCrate_F";                                   //* This is the virtual arsenal as portable supply crates.
// Ditto as supply truck
Respawn_truck_typename = "I_Truck_02_medical_F";                        //* This is the mobile respawn (and medical) truck.
huron_typename = "CUP_C_Mi17_Civilian_RU";                       //* This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "CUP_I_PMC_Winter_Crew";                                         //* This defines the crew for vehicles.
pilot_classname = "CUP_I_PMC_Winter_Pilot";                                      //* This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "CUP_I_MH6M_ION";              //* These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "I_Boat_Transport_01_F";                 //* These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "CUP_I_Van_Transport_ION";               //* These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_black_F";     //* A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_black_F";     //* A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_civ_F";           //* The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "I_E_Radar_System_01_F";             //* The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              //* The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_Hangar_F";             //* The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       //* This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      //* This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     //* This defines the fuel crates.


/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["CUP_I_PMC_Winter_Soldier_M4A3",15,0,0],           //**** Rifleman (Light)
    ["CUP_I_PMC_Winter_Soldier",20,0,0],                      //**** Rifleman
    ["CUP_I_PMC_Winter_Soldier_AT",30,0,0],                 //**** Rifleman (AT)
    ["CUP_I_PMC_Winter_Soldier_GL",25,0,0],                //**** Grenadier
    ["CUP_I_PMC_Winter_Soldier_MG",25,0,0],               //**** Autorifleman
    ["CUP_I_PMC_Winter_Soldier_MG_PKM",35,0,0],     //**** Heavygunner
    ["CUP_I_PMC_Winter_Sniper",30,0,0],                        //**** Marksman
    ["CUP_I_PMC_Winter_Sniper_KSVK",40,0,0],            //**** Sharpshooter
    ["CUP_I_PMC_Winter_Soldier_AT",50,10,0],           //**** AT Specialist
    ["CUP_I_PMC_Winter_Soldier_AA",50,10,0],          //**** AA Specialist
    ["CUP_I_PMC_Winter_Medic",30,0,0],                     //**** Combat Life Saver
    ["CUP_I_PMC_Winter_Engineer",30,0,0],                   //**** Engineer
    ["CUP_I_PMC_Winter_Engineer",30,0,0],                   //**** Explosives Specialist (confirmed)
    ["CUP_I_PMC_Winter_Soldier_M4A3",20,0,0],           //**** Recon Scout
    ["CUP_I_PMC_Winter_Soldier_AT",30,0,0],                //**** Recon Scout (AT)
    ["CUP_I_PMC_Winter_Sniper",30,0,0],                       //**** Recon Marksman
    ["CUP_I_PMC_Winter_Sniper_KSVK",40,0,0],           //**** Recon Sharpshooter
    ["CUP_I_PMC_Winter_Medic",30,0,0],                       //****  Recon Paramedic
    ["CUP_I_PMC_Winter_Engineer",30,0,0],                    //**** Recon Demolition Expert
    ["CUP_I_PMC_Winter_Sniper",70,5,0],                       //**** Sniper
    ["CUP_I_PMC_Winter_Sniper",70,5,0],                       //**** Sniper (Arid)
    ["CUP_I_PMC_Winter_Sniper",70,5,0],                       //**** Sniper (Lush)
    ["CUP_I_PMC_Winter_Sniper",70,5,0],                       //**** Sniper (Semi-Arid)
    ["CUP_I_PMC_Winter_Soldier_TL",20,0,0],                //**** Spotter
    ["CUP_I_PMC_Winter_Crew",10,0,0],                         //**** Crewman
    ["CUP_I_PMC_Winter_Soldier_M4A3",20,0,0],           //**** Para Trooper
    ["CUP_I_PMC_Winter_Crew",10,0,0],                        //**** Helicopter Crew
    ["CUP_I_PMC_Winter_Pilot",10,0,0],                         //**** Helicopter Pilot
    ["CUP_I_PMC_Winter_Pilot",10,0,0]                          //**** Pilot
];


//Commented out a lot of vehicles because ION only has a few winter ones
light_vehicles = [
    ["I_Quadbike_01_F",50,0,25],                                        //* Quad Bike
    ["CUP_I_MATV_ION",75,0,50],                                     // Unarmed Transport
    ["CUP_I_RG31_M2_W_ION",75,40,50],                           //*  M2
    [//"CUP_I_RG31_Mk19_W_ION",150,50,50],                       //* Mk 19
    ["I_Truck_02_medical_F",120,0,60],                              //* Medical Evacuation truck
    ["CUP_I_Van_Transport_ION",100,0,25],                                //* Transport Van
    ["CUP_I_SUV_ION",100,0,25],                                //* SUV
    ["I_Boat_Transport_01_F",100,0,25],                                 //* Assault Boat
    ["I_Boat_Armed_01_minigun_F",200,80,75],                            // Speedboat Minigun
    ["I_SDV_01_F",150,0,50]                                             //* SDV
];


heavy_vehicles = [
    ["CUP_I_RG31E_M2_W_ION",200,40,100],                                  	//* (M2)
    ["CUP_I_RG31_M2_W_GC_ION",200,60,100],                             		//* (M2 again)
    ["CUP_I_RG31_Mk19_W_ION",250,100,100],                                  // Mk 19
    ["CUP_I_SUV_Armored_ION",200,100,100],                                  // Armored SUV
	["CUP_I_BTR80_ION",500,250,350],                             			//* BTR80 APC
    ["CUP_I_BTR80A_ION",500,250,350],                            			//* BTR80A APC
	["CUP_B_Challenger2_NATO",500,800,450],									// Challenger tank                        
	["CUP_B_M1A1_Woodland_US_Army",450,800,450],									// M1A1 tank                        
	["CUP_B_M1A2_TUSK_MG_US_Army",475,800,450]									// M1A2 TUSK                        
];


air_vehicles = [
    ["I_UAV_01_F",75,0,25],                                             //* AR-2 Darter
    ["I_UAV_06_F",80,0,30],                                             //* AL-6 Pelican (Cargo)
    ["CUP_I_MH6M_ION",200,0,100],                                    	//* MH6M (Little Bird)
    ["CUP_C_Mi17_VIV_RU",200,0,100],                  					//* Mi17 (Unarmed Cargo Chopper)
    ["CUP_C_Mi17_Civilian_RU",200,0,100],               				//* Mi17 (Unarmed Transport Chopper)
    ["CUP_I_MH6M_ION_OBS",200,0,100],                   				//* MH6M Little Bird (Recon)
    ["CUP_I_Ka60_Blk_ION",225,200,125],                   				//* KA-60 (Rockets)
    ["CUP_I_Ka60_GL_Blk_ION",225,200,125],             					//* KA-60 (GL)
    ["CUP_I_Mi24_D_Dynamic_ION",500,400,200],                  			//* Mi-24
    ["CUP_I_Mi24_ION",500,500,200],                   					//* Superhind
    ["CUP_I_Mi24_Mk3_ION",750,750,250],                  				//* Superhind Mk3
    ["B_Plane_Fighter_01_F",1500,1750,450],                             //* F/A-181 Black Wasp II
    ["B_Plane_Fighter_01_Stealth_F",1500,1750,450],                     //* F/A-181 Black Wasp II (Stealth)
    ["I_Plane_Fighter_04_F",1500,1750,450],                              // A-149 Gryphon  ***
    ["B_T_VTOL_01_armed_F", 1500,1750,500]                              // V-44 X Blackfish (Armed)  ***
];


static_vehicles = [
//No mortars or static vehicles for ION apparently, but allowing them a mortar and static launchers for balancing
    //["B_HMG_01_F",25,40,0],                                             // Mk30A HMG .50
    //["B_HMG_01_high_F",25,40,0],                                        // Mk30 HMG .50 (Raised)
    //["B_HMG_01_A_F",35,40,0],                                           // Mk30 HMG .50 (Autonomous)
    //["B_GMG_01_F",35,60,0],                                             // Mk32A GMG 20mm
    //["B_GMG_01_high_F",35,60,0],                                        // Mk32 GMG 20mm (Raised)
    //["B_GMG_01_A_F",45,60,0],                                           // Mk32 GMG 20mm (Autonomous)
    ["B_static_AT_F",50,100,0],                                         // Static Titan Launcher (AT)
    ["B_static_AA_F",50,100,0],                                         // Static Titan Launcher (AA)
    ["B_Mortar_01_F",80,150,0],                                         // Mk6 Mortar
    //["RHS_M119_WD",100,200,0],                                          // M119A2
    //["B_SAM_System_03_F",250,500,0]                                     // MIM-145 Defender
];


// ** Finished
buildings = [
    ["Land_Research_house_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V3_F",0,0,0],
    ["Land_Cargo_Tower_V3_F",0,0,0],
    ["Flag_ION_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["BWA3_Flag_Ger_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["CamoNet_INDP_F",0,0,0],
    ["CamoNet_INDP_open_F",0,0,0],
    ["CamoNet_INDP_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];


support_vehicles = [
    [Arsenal_typename,100,200,0],
    [Respawn_truck_typename,200,0,100],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,75],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["CUP_I_TowingTractor_ION",50,0,25],                               //* Towing Tractor
    ["CUP_I_Van_Repair_ION",325,0,75],                                   //* Repair Van
    ["I_G_Van_01_fuel_F",125,0,275],                                    //* Fuel truck
    ["CUP_I_Van_ammo_ION",125,200,75],                                   //* Ammo van
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];


/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/


// **** Light infantry squad.
blufor_squad_inf_light = [
    "CUP_I_PMC_Winter_Soldier_TL",
    "CUP_I_PMC_Winter_Soldier",
    "CUP_I_PMC_Winter_Soldier",
    "CUP_I_PMC_Winter_Soldier_AT",
    "CUP_I_PMC_Winter_Soldier_GL",
    "CUP_I_PMC_Winter_Soldier_MG",
    "CUP_I_PMC_Winter_Soldier_MG",
    "CUP_I_PMC_Winter_Sniper",
    "CUP_I_PMC_Winter_Medic",
    "CUP_I_PMC_Winter_Engineer"
];


//**** Heavy infantry squad.
blufor_squad_inf = [
    "CUP_I_PMC_Winter_Soldier_TL",
    "CUP_I_PMC_Winter_Soldier_AT",
    "CUP_I_PMC_Winter_Soldier_AT",
    "CUP_I_PMC_Winter_Soldier_GL",
    "CUP_I_PMC_Winter_Soldier_MG",
    "CUP_I_PMC_Winter_Soldier_MG",
    "CUP_I_PMC_Winter_Soldier_MG_PKM",
    "CUP_I_PMC_Winter_Sniper_KSVK",
    "CUP_I_PMC_Winter_Medic",
    "CUP_I_PMC_Winter_Engineer"
];


//**** AT specialists squad.
blufor_squad_at = [
    "CUP_I_PMC_Winter_Soldier_TL",
    "CUP_I_PMC_Winter_Soldier",
    "CUP_I_PMC_Winter_Soldier",
    "CUP_I_PMC_Winter_Soldier_AT",
    "CUP_I_PMC_Winter_Soldier_AT",
    "CUP_I_PMC_Winter_Soldier_AT",
    "CUP_I_PMC_Winter_Medic",
    "CUP_I_PMC_Winter_Engineer"
];


//**** AA specialists squad.
blufor_squad_aa = [
    "CUP_I_PMC_Winter_Soldier_TL",
    "CUP_I_PMC_Winter_Soldier",
    "CUP_I_PMC_Winter_Soldier",
    "CUP_I_PMC_Winter_Soldier_AA",
    "CUP_I_PMC_Winter_Soldier_AA",
    "CUP_I_PMC_Winter_Soldier_AA",
    "CUP_I_PMC_Winter_Medic",
    "CUP_I_PMC_Winter_Soldier"
];


//**** Force recon squad.
blufor_squad_recon = [
    "CUP_I_PMC_Winter_Soldier_TL",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_AT",
    "CUP_I_PMC_Winter_Sniper",
    "CUP_I_PMC_Winter_Sniper",
    "CUP_I_PMC_Winter_Sniper_KSVK",
    "CUP_I_PMC_Winter_Sniper_KSVK",
    "CUP_I_PMC_Winter_Medic",
    "CUP_I_PMC_Winter_Engineer"
];


//**** Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3",
    "CUP_I_PMC_Winter_Soldier_M4A3"
];


/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "CUP_I_BTR80_ION",													// BTR-80
	"CUP_I_BTR80A_ION",													// BTR-80 AA
	"I_Plane_Fighter_04_F",                                             // A-149 Gryphon
    "B_T_VTOL_01_armed_F",                                              // V-44 X Blackfish (Armed)
    "CUP_B_Challenger2_NATO"                                            // Challenger tank
    "CUP_I_SUV_Armored_ION",                                            // Armored SUV
    "CUP_I_Mi24_ION",                                                   // Superhind
    "CUP_I_Mi24_D_Dynamic_ION",                                         // Mi-24D
    "CUP_I_Mi24_Mk3_ION",                                               // Mk3 Superhind
    "CUP_B_M1A1_Woodland_US_Army",                                      // M1A1 Abrams
    "CUP_B_M1A2_TUSK_MG_US_Army"                                       // M1A2 TUSK
];