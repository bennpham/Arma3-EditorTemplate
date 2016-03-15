private ["_unit", "_backpack", "_uniform", "_vest"];

/* Replace _this below if you want to call this script differently */
_unit = _this;

if (!isNull _unit) then {
    removeAllWeapons _unit;
    removeAllItems _unit;
    removeBackpackGlobal _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeHeadgear _unit;
    removeGoggles _unit;

    /* Other gear, goggles, vest, uniform, backpack */
    _unit forceAddUniform "U_C_Poor_1";
    _unit addVest "V_Rangemaster_belt";
    _unit addHeadgear "H_Bandanna_surfer";
    _unit addGoggles "G_Bandanna_beast";
    _unit addBackpackGlobal "B_FieldPack_blk";

    /* Magazines and weapons in main inventory */
    _unit addWeaponGlobal "hgun_PDW2000_F";
    _unit addWeaponGlobal "launch_RPG32_F";
    _unit addWeaponGlobal "hgun_P07_F";

    /* Weapons attachments and magazines */
    _unit addPrimaryWeaponItem "muzzle_snds_L";
    _unit addPrimaryWeaponItem "optic_Aco_smg";
    _unit addPrimaryWeaponItem "30Rnd_9x21_Mag";
    _unit addSecondaryWeaponItem "RPG32_F";
    _unit addHandgunItem "muzzle_snds_L";
    _unit addHandgunItem "16Rnd_9x21_Mag";

    /* Assigned items (maps, radios, NV Goggles, etc */
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    _unit linkItem "ItemRadio";
    _unit linkItem "ItemGPS";
    _unit addWeapon "NVGoggles_OPFOR";
    _unit addWeapon "Binocular";

    /* Magazines and weapons in vest */
    _vest = vestContainer _unit;
    _vest addMagazineCargoGlobal ["16Rnd_9x21_Mag", 2];
    _vest addMagazineCargoGlobal ["SmokeShell", 1];
    _vest addMagazineCargoGlobal ["SmokeShellRed", 1];
    _vest addMagazineCargoGlobal ["SmokeShellGreen", 1];
    _vest addMagazineCargoGlobal ["HandGrenade", 1];
    _vest addMagazineCargoGlobal ["MiniGrenade", 1];

    /* Magazines and weapons in uniform */
    _uniform = uniformContainer _unit;
    _uniform addMagazineCargoGlobal ["Chemlight_green", 1];
    _uniform addItemCargoGlobal ["FirstAidKit", 3];

    _unit selectWeapon "this";
    reload _unit;

    /* Backpack */
    _backpack = unitBackPack _unit;
    clearMagazineCargoGlobal _backpack;
    clearWeaponCargoGlobal _backpack;
	clearItemCargoGlobal _backpack;

    _backpack addMagazineCargoGlobal ["30Rnd_9x21_Mag", 9];
    _backpack addMagazineCargoGlobal ["RPG32_F", 1];
    _backpack addMagazineCargoGlobal ["RPG32_HE_F", 1];
};
