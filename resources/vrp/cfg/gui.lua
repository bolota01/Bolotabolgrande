
-- gui config file
local cfg = {}

-- additional css loaded to customize the gui display (see gui/design.css to know the available css elements)
-- it is not recommended to modify the vRP core files outside the cfg/ directory, create a new resource instead
-- you can load external images/fonts/etc using the NUI absolute path: nui://my_resource/myfont.ttf
-- example, changing the gui font (suppose a vrp_mod resource containing a custom font)
cfg.css = [[
@font-face {
  font-family: "pcdown";
  src: url(nui://vrp/gui/fonts/pcdown.ttf) format("truetype");
}

@font-face {
  font-family: "bankgothic";
  src: url(nui://vrp/gui/fonts/bankgothic.ttf) format("truetype");
}

body{
  font-family: "Segoe UI";
  font-size: 0.9em;
}
]]

-- list of static menu types (map of name => {.title,.blipid,.blipcolor,.permissions (optional)})
-- static menus are menu with choices defined by vRP.addStaticMenuChoices(name, choices)
cfg.static_menu_types = {
   ["recruta_weapons"] = {
      title = "Arsenal da PMESP", 
      blipcolor = 0,
    permissions = {
      "recruta.weapons"
    }
  },
  ["superiores_weapons"] = {
      title = "Arsenal PMESP", 
      blipcolor = 0,
    permissions = {
      "superiores.weapons"
    }
  },
    ["aguia_weapons"] = {
      title = "Arsenal PMESP", 
      blipcolor = 0,
    permissions = {
      "aguia.weapons"
    }
  },
  ["emergency_weapons"] = {
      title = "Arsenal SAMU", 
      blipcolor = 0,
    permissions = {
      "emergency.weapons"
    }
  },
   ["emergency_heal"] = {
      title = "Atendimento Médico", 
      blipcolor = 0,
    permissions = {
      "emergency_heal"
    }
  },
   ["emergency_medkit"] = {
      title = "Emergência", 
      blipcolor = 0,
    permissions = {
      "emergency.medkit"
    }
  }
}

-- list of static menu points
cfg.static_menus = {
  {"recruta_weapons", 461.31414794922,-981.15582275391,30.689588546753},
  {"superiores_weapons", 461.31414794922,-981.15582275391,30.689588546753},
  {"aguia_weapons", 461.31414794922,-981.15582275391,30.689588546753},
  {"emergency_weapons", 266.0016784668,-1364.5970458984,24.537784576416},
  {"emergency_medkit", 268.22784423828,-1364.8872070313,24.537782669067},
  {"emergency_heal", 260.49597167969,-1358.4555664063,24.537788391113}
}


return cfg
