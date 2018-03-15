
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
  ["melees"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["sidearms"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["submachineguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["rifles"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["heavymachineguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["snipers"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["carabines"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["shotguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["explosives"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  },

  ["basic"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Ingles",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,15,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Ak-47",150000,50,""}
  }
}

-- list of gunshops positions

cfg.gunshops = {
  {"melees", 1692.41, 3758.22, 34.7053},
  {"sidearms", 252.696, -48.2487, 69.941},
  {"carabines", 844.299, -1033.26, 28.1949},
  {"rifles", -331.624, 6082.46, 31.4548},
  {"submachineguns", -664.147, -935.119, 21.8292},
  {"sidearms", -1305.45056152344,-394.0068359375,36.6957740783691},
  {"explosives", -1119.48803710938,2697.08666992188,18.5541591644287},
  {"heavymachineguns", 2569.62, 294.453, 108.735},
  {"snipers", -3172.60375976563,1085.74816894531,20.8387603759766},
  {"shotguns", 21.70, -1107.41, 29.79},
  {"basic", 810.15, -2156.88, 29.61}
}

return cfg
