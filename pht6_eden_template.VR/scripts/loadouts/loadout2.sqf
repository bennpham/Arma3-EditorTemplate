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
    _unit forceAddUniform "U_O_Protagonist_VR";
    _unit addVest "V_PlateCarrier2_blk";
    _unit addHeadgear "H_PilotHelmetHeli_B";
    _unit addGoggles "G_Bandanna_beast";

    /* Magazines and weapons in main inventory */
    _unit addWeaponGlobal "LMG_Mk200_F";

    /* Weapons attachments and magazines */
    _unit addPrimaryWeaponItem "muzzle_snds_H";
    _unit addPrimaryWeaponItem "acc_pointer_IR";
    _unit addPrimaryWeaponItem "optic_Holosight";
    _unit addPrimaryWeaponItem "bipod_03_F_blk";
    _unit addPrimaryWeaponItem "200Rnd_65x39_cased_Box";

    /* Assigned items (maps, radios, NV Goggles, etc */
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    _unit linkItem "ItemRadio";
    _unit linkItem "ItemGPS";
    _unit addWeapon "NVGoggles_OPFOR";
    _unit addWeapon "Rangefinder";

    /* Magazines and weapons in vest */
    _vest = vestContainer _unit;
    _vest addMagazineCargoGlobal ["SmokeShell", 1];
    _vest addMagazineCargoGlobal ["SmokeShellRed", 1];
    _vest addMagazineCargoGlobal ["SmokeShellGreen", 1];
    _vest addMagazineCargoGlobal ["HandGrenade", 1];
    _vest addMagazineCargoGlobal ["MiniGrenade", 1];
    _vest addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 3];

    /* Magazines and weapons in uniform */
    _uniform = uniformContainer _unit;
    _uniform addMagazineCargoGlobal ["Chemlight_green", 1];
    _uniform addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 4];
    _uniform addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 4];
    _uniform addItemCargoGlobal ["FirstAidKit", 3];

    _unit selectWeapon "this";
    reload _unit;
};
