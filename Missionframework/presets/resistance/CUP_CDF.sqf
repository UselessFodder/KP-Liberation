/*
    Needed Mods:
    - CUP units


    Optional Mods:
    - None
*/


/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
    "CUP_B_CDF_Soldier_TL_SNW",                                // Team Leader
    "CUP_B_CDF_Officer_SNW",                                // Officer
    "CUP_B_CDF_Soldier_SNW",                                // Rifleman
    "CUP_B_CDF_Medic_SNW",                                // Medic
    "CUP_B_CDF_Soldier_Marksman_SNW",                // Marksman
    "CUP_B_CDF_Sniper_SNW",                                // Sniper
    "CUP_B_CDF_Spotter_SNW",                                // Spotter
    "CUP_B_CDF_Soldier_LAT_SNW",                        // Anti Tank
    "CUP_B_CDF_Soldier_RPG18_SNW",                        // Light Anti Tank
    "CUP_B_CDF_Soldier_AA_SNW",                                // Anti Air
    "CUP_B_CDF_Soldier_AR_SNW",                                // Automatic Rifleman
    "CUP_B_CDF_Soldier_MG_SNW",                                     // Machinegunner
    "CUP_B_CDF_Pilot_SNW",                                                  // Pilot
    "CUP_B_CDF_Crew_SNW",                                           // Crewman
    "CUP_B_CDF_Engineer_SNW"                                       // Engineer
];


// Armed vehicles
KP_liberation_guerilla_vehicles = [
"CFP_B_CDF_T72_SNW_01",                                                 // T72 MBT
"CFP_B_CDF_BTR_80_SNW_01",                                      // BTR 80
"CFP_B_CDF_UAZ_DShKM_SNW_01",                                   // Uaz 50.cal
"CFP_B_CDF_UAZ_AGS_30_SNW_01",                                  // Uaz GMG
"CFP_B_CDF_UAZ_SPG_SNW_01"                                     // Uaz Anti tank
];


/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */


/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */

KP_liberation_guerilla_weapons_1 = [
    ["CUP_arifle_AK74","CUP_30Rnd_545x39_AK_M",4,"",""],
    ["CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK_M",4,"",""],
    ["CUP_arifle_AKS74_pso","CUP_30Rnd_545x39_AK_M",4,"",""],
    ["CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",4,"",""]
];


KP_liberation_guerilla_weapons_2 = [
    ["CUP_launch_RPG7V","CUP_PG7VL_M",2,"",""],
    ["CUP_launch_9K32Strela","CUP_Strela_2_M",2,"",""],
    ["CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",4,"",""],
    ["CUP_arifle_AKS74_kobra","CUP_30Rnd_545x39_AK_M",4,"CUP_optic_Kobra",""]
];


KP_liberation_guerilla_weapons_3 = [
    ["CUP_arifle_AK105_railed","CUP_30Rnd_545x39_AK74M_M",4,"CUP_optic_MRad","CUP_acc_ANPEQ_15_Black"],
    ["CUP_arifle_RPK74M_top_rail","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M",4,"CUP_optic_MRad","CUP_acc_ANPEQ_15_Black"],
	["CUP_srifle_SVD_pso","CUP_10Rnd_762x54_SVD_M",4,"",""],
	["CUP_hgun_Glock17_blk","CUP_17Rnd_9x19_glock17",2,"",""]
];


// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "CUP_U_B_CDF_SNW_2",
    "CUP_U_B_CDF_SNW_1"
];


KP_liberation_guerilla_uniforms_2 = [
    "CUP_U_O_RUS_Ratnik_Winter"
];


KP_liberation_guerilla_uniforms_3 = [
    "CFP_U_Crye_M90"
];


// Vests
KP_liberation_guerilla_vests_1 = [
    "CUP_V_CDF_6B3_2_SNW"
];


KP_liberation_guerilla_vests_2 = [
    "CUP_V_CDF_6B3_1_SNW"
];


KP_liberation_guerilla_vests_3 = [
    "CFP_LBT6094_operator_OGA_OD"
];


// Headgear
KP_liberation_guerilla_headgear_1 = [
    "",
    "",
    "",
    "",
    "CUP_H_CDF_H_PASGT_SNW"
];


KP_liberation_guerilla_headgear_2 = [
    "CUP_H_CDF_H_PASGT_SNW"
];


KP_liberation_guerilla_headgear_3 = [
    "CFP_OPS2017_Helmet_White"
];


// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "",
    "",
    "",
    "CUP_G_ESS_KHK_Facewrap_White"
];