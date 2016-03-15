if (isServer) then {

clearmagazinecargoglobal _this; 
clearweaponcargoglobal _this;
clearItemCargoglobal _this;
clearBackpackCargoGlobal _this;

// Weapons
_this addweaponcargoglobal ["launch_RPG32_F", 4]; 
_this addweaponcargoglobal ["srifle_LRR_SOS_F", 1]; 
_this addweaponcargoglobal ["arifle_Mk20_F", 4];
_this addweaponcargoglobal ["arifle_MK20_GL_F", 2];

// Ammo
_this addmagazinecargoglobal ["RPG32_F", 10]; 
_this addmagazinecargoglobal ["RPG32_HE_F", 10]; 
_this addmagazinecargoglobal ["30Rnd_556x45_Stanag", 50];
_this addmagazinecargoglobal ["30Rnd_556x45_Stanag_Tracer_Yellow", 25];
_this addmagazinecargoglobal ["200Rnd_65x39_cased_Box_Tracer", 10];
_this addMagazinecargoglobal ["7Rnd_408_Mag", 10];

_this addMagazineCargoglobal ["SmokeShell", 10];
_this addMagazineCargoglobal ["Handgrenade", 10];
_this addMagazineCargoglobal ["1Rnd_HE_Grenade_shell", 10];
_this addMagazineCargoglobal ["DemoCharge_Remote_Mag", 10];

// Items
_this addItemCargoGlobal ["FirstAidKit", 10];
_this additemcargoglobal ["U_C_Poor_1n", 5];

// Backpacks
_this addBackpackCargoGlobal ["B_Carryall_oucamo", 5];
_this addBackpackCargoGlobal ["B_FieldPack_blk", 5];

};