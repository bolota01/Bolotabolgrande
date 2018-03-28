
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local uniforme_pm = { model = "s_m_y_hwaycop_01" }
local uniforme_pmf = { model = "s_m_m_armoured_01" }
local uniforme_capitao = { model = "s_m_m_armoured_02" }
local uniforme_rocam = { model = "s_m_y_pilot_01" }
local uniforme_bope = { model = "s_m_y_ranger_01" }
local uniforme_tatica = { model = "s_m_y_sheriff_01" }
local uniforme_tatica2 = { model = "s_m_y_swat_01" }
local uniforme_tatica3 = { model = "s_m_y_ranger_01" }
local uniforme_conven = { model = "s_m_y_blackops_02" }
local uniforme_conven2 = { model = "s_m_y_blackops_03" }
local uniforme_samu = { model = "s_m_m_paramedic_01" }
local uniforme_federal = { model = "s_m_m_fibsec_01" }
local uniforme_aguia = { model = "s_m_m_pilot_02" }
local uniforme_goe = { model = "s_m_y_cop_01" }
local uniforme_pmfeminino = { model = "s_f_y_cop_01" }


for i=0,19 do
  uniforme_pm[i] = {0,0}
  uniforme_pmf[i] = {0,0}
  uniforme_capitao[i] = {0,0}
  uniforme_aguia[i] = {0,0}
  uniforme_samu[i] = {0,0}
  uniforme_rocam[i] = {0,0}
  uniforme_bope[i] = {0,0}
  uniforme_tatica[i] = {0,0}
  surgery_female[i] = {0,0}
  uniforme_federal[i] = {0,0}
  uniforme_pmfeminino[i] = {0,0}
  uniforme_goe[i] = {0,0}
  surgery_male[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  -- BASE PARA CRIAR UNIFORMES
  ["police"] = {
    _config = { permissions = {"police.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
["Farda 01"] = uniforme_pm,
["Farda 02"] = uniforme_pmf,
["Farda 03"] = uniforme_capitao,
["Farda 04"] = uniforme_rocam,
["Farda 05"] = uniforme_bope,
["Farda 06"] = uniforme_tatica,
["Farda 07"] = uniforme_tatica2,
["Farda 08"] = uniforme_tatica3,
["Farda 09"] = uniforme_conven,
["Farda 10"] = uniforme_conven2,
["Farda Federal"] = uniforme_federal,
["Farda Águia"] = uniforme_aguia,
["Farda GOE"] = uniforme_goe,
["Farda Feminina"] = uniforme_pmfeminino, 
  },
  
  ["policiafederal"] = {
    _config = { permissions = {"federal.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
  ["Farda GOE"] = uniforme_goe,
  ["Farda Federal"] = uniforme_federal,
  ["Farda Aguia 1"] = uniforme_aguia,
  ["Farda Teste"] = uniforme_pmfeminino,
  },
  -- FARDAS DA ROTA 
  ["coronelfardas"] = {
    _config = { permissions = {"coronelfardas.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
  ["CORONEL 01"] = uniforme_tatica,
  ["CORONEL 02"] = uniforme_tatica3,
  },
  ["fardamentorota"] = {
    _config = { permissions = {"fardamentorota.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
  ["FARDAMENTO 01"] = uniforme_bope,
  ["FARDAMENTO 02"] = uniforme_tatica2,
  },
 
  -- FARDAS DA ROCAM
  ["rocam"] = {
    _config = { permissions = {"rocam.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
    ["ROCAM"] = uniforme_pm,
  }, 
 
  -- FARDAS DA PMESP
  ["coronelpm"] = {
    _config = { permissions = {"coronelpm.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
  ["FARDAMENTO PM 02"] = uniforme_conven2,  
  },
  ["fardamentopm"] = {
    _config = { permissions = {"fardamentopm.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
  ["FARMAMENTO PM 01"] = uniforme_conven,
  },
  
  --UNIFORME PF
    ["pffardas"] = {
    _config = { permissions = {"pffardas.cloakroom"} },
    --[[["Uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },]]
  ["Uniforme PF"] = uniforme_federal, 
  },
  
    
    ["emergency"] = {
    _config = { permissions = {"samu.cloakroom"} },
    --[[["Male uniform"] = {
      [3] = {92,0},
      [4] = {9,3},
      [6] = {25,0},
      [8] = {15,0},
      [11] = {13,3},
      ["p2"] = {2,0}
    }]]
    ["Uniforme SAMU"] = uniforme_samu,
  },
  ["Escolher Sexo"] = {
    _config = { not_uniform = true },
    ["Homem"] = surgery_male,
    ["Mulher"] = surgery_female
  }
}

cfg.cloakrooms = {
  {"police",457.53500366211,-991.83148193359,30.689584732056},
  {"coronelfardas",457.53500366211,-991.83148193359,30.689584732056},
  {"policiafederal",457.43515014648,-988.44866943359,30.689599990845},
  {"fardamentorota",457.53500366211,-991.83148193359,30.689584732056},
  {"rocam",457.53500366211,-991.83148193359,30.689584732056},
  {"coronelpm",457.53500366211,-991.83148193359,30.689584732056},
  {"fardamentopm",457.53500366211,-991.83148193359,30.689584732056},
  {"Escolher Sexo",-1039.087890625,-2729.4045410156,13.756636619568},
  {"emergency",269.77987670898,-1363.4407958984,24.537780761719}
}

return cfg

