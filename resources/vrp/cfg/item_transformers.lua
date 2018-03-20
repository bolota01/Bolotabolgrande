
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
    -- LIXEIRA
  {
    name="Trash Can", -- menu name
    -- permissions = {"harvest.water_bottle_tacos"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=10,
    units_per_minute=1,
    x=231.40283203125,y=-1507.09191894531,z=29.2916603088379, -- pos
    radius=5, height=1.5, -- area
    recipes = {
      ["Harvest water"] = { -- action name
        description="Harvest some water bottles.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["water"] = 1
        }
      },
      ["Harvest tacos"] = { -- action name
        description="Harvest some tacos.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["tacos"] = 1
        }
      }
    }
    --, onstart = function(player,recipe) end, -- optional start callback
    -- onstep = function(player,recipe) end, -- optional step callback
    -- onstop = function(player,recipe) end -- optional stop callback
  },
    -- ACADEMIA
  {
    name="Academia", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319, -- pos
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Força"] = { -- action name
        description="Aumente sua força e stamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 0.6 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
    -- CAMPO DE MACONHA
  {
    name="Campo de Ervas", -- menu name
    permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=255,b=0, -- color
    max_units=400,
    units_per_minute=5,
    x=2222.060546875,y=5577.0146484375,z=53.834770202637, -- pos
    radius=3.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["Folha de maconha"] = 1
        }
      }
    }
  },
    -- PROCESSAR MACONHA
  {
    name="Processar Ervas", -- menu name
    permissions = {"process.weed"}, -- you can add permissions
    r=0,g=255,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=5, -- unidades que o transformador ganha de volta por minuto
    x=283.03845214844,y=-1926.1419677734,z=29.670471191406, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Folha de maconha"] = 1
    },
        products={ -- items given per unit
      ["Maconha"] = 1
        }
      }
    }
  },
    -- VENDER MACONHA
  {
    name="Vender Maconha", -- menu name
    permissions = {"build.weed"}, -- you can add permissions
    r=0,g=255,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-765.04040527344,y=556.73400878906,z=128.05986022949, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Maconha"] = { -- action name
        description="Vender Maconha", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Maconha"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 100
        }
      }
    }
  },
  -- CAMPO DE METANFETAMINA    
  {
    name="Campo de Metanfetamina", -- Nome do menu
    permissions = {"harvest.metanfetamina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=400,
    units_per_minute=5,
    x=180.66656494141,y=2461.9802246094,z=55.801990509033, -- Localização
    radius=3.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher Crystal Melamine.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["Crystal Melamine"] = 1
        }
      }
    }
  },  
  -- PROCESSADOR DE METANFETAMINA
  {
    name="Proc. de metanfetamina", -- menu name
    permissions = {"process.metanfetamina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=50, -- unidades que o transformador ganha de volta por minuto
    x=225.42935180664,y=-1982.7048339844,z=19.73999786377, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Metanfetamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Crystal Melamine"] = 1
	    },
        products={ -- items given per unit
          ["Metanfetamina"] = 1
        }
      }
    }
  },
      -- VENDER METANFETAMINA
  {
    name="Vender Metanfetamina", -- menu name
    permissions = {"build.metanfetamina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=1251.0190429688,y=-435.5309753418,z=69.309989929199, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Metanfetamina"] = { -- action name
        description="Vender Metanfetamina", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Metanfetamina"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 190
        }
      }
    }
  },
  -- CAMPO DE COCAINA    
  {
    name="Campo de Cocaina", -- Nome do menu
    permissions = {"harvest.cocaina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=400,
    units_per_minute=5,
    x=-41.372623443604,y=3033.3776855469,z=41.020195007324, -- Localização
    radius=3.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher folha de Coca.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["Folha de Coca"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE COCAINA
  {
    name="Processador de cocaina", -- menu name
    permissions = {"process.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=50, -- unidades que o transformador ganha de volta por minuto
    x=340.14431762695,y=-1853.5443115234,z=27.32195854187, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Folha de Coca"] = 1
	    },
        products={ -- items given per unit
          ["Cocaina"] = 1
        }
      }
    }
  },
      -- VENDER COCAÍNA
  {
    name="Vender Maconha", -- menu name
    permissions = {"build.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=737.49060058594,y=-292.61511230469,z=59.257270812988, -- pos ,
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Cocaina"] = { -- action name
        description="Vender Cocaina", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Cocaina"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 120
        }
      }
    }
  },
      -- Cartões clonáveis
  {
    name="Cartões Clonáveis", -- Nome do menu
    permissions = {"pick.toclonecards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=2,
    x=261.61892700195,y=204.29025268555,z=110.28720855713, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Pegar"] = { -- Nome da ação
        description="Pegar cartões clonáveis", -- Descrição do produto a se colher
        in_money=50, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["toclonecards"] = 1,
        }
      }
    }
  },
  
    -- CLONAR CARTÕES
  {
    name="Clonagem de Cartões", -- menu name
    permissions = {"clone.cards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-1054.0205078125,y=-230.26893615723,z=44.020957946777, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Clonar cartões"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["toclonecards"] = 1
      },
        products={ -- items given per unit
          ["clonedcards"] = 1
        }
      }
    }
  },
  
    -- VENDER CARTÕES CLONADOS
  {
    name="Cartões Clonados", -- menu name
    permissions = {"sell.clonedcards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-621.35168457031,y=36.309566497803,z=43.566032409668, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Cartões Clonados"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["clonedcards"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 150
        }
      }
    }
  },
  -- PESCADOR DE TARTARUGA
  {
    name="Pescador de Tartaruga", -- menu name
    permissions = {"harvest.tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=4095.5485839844,y=4464.8696289063,z=1.9822434186935, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Pescar"] = { -- action name
        description="Pescar Tartaruga com Rede.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Rede"] = 1
      },
        products={ -- items given per unit
          ["Tartaruga"] = 2
        }
      }
    }
  },
  -- VENDER TARTARUGA
  {
    name="Vender Tartaruga", -- menu name
    permissions = {"process.Tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-119.17678833008,y=-1486.1040039063,z=36.98205947876, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Tartaruga"] = { -- action name
        description="Vender Tartaruga", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Tartaruga"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 700
        }
      }
    }
  },
  -- CAMPO DE MINERIO
  {
    name="Campo de Diamantes", -- Nome do menu
    permissions = {"harvest.diamante"}, -- you can add permissions
    r=0,g=255,b=0, -- cor
    max_units=400,
    units_per_minute=25,
    x=2593.4228515625,y=2825.0793457031,z=36.088672637939, -- Localização    
    radius=3.5, height=1.5, -- area
    recipes = {
      ["Garimpar"] = { -- Nome da ação
        description="Garimpando diamantes.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["Picareta"] = 1
      },
        products={ -- items given per unit
          ["Diamante Bruto"] = 2
        }
      }
    }
  },
    -- PROCESSADOR DE DIAMANTES
  {
    name="Lapidação de Diamantes", -- menu name
    permissions = {"process.diamante"}, -- you can add permissions
    r=0,g=255,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=100, -- unidades que o transformador ganha de volta por minuto
    x=-553.01434326172,y=5325.3393554688,z=73.599594116211, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Lapidação de Diamantes"] = { -- action name
        description="Lapidando diamantes", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Diamante Bruto"] = 1
        },
        products={ -- items given per unit
          ["Diamante"] = 1
        }
      }
    }
  },
      -- VENDER DIAMANTES
  {
    name="Vender Diamantes", -- menu name
    permissions = {"build.diamante"}, -- you can add permissions
    r=0,g=255,b=0, -- cor do menu
    max_units=400, -- unidades maximas do item
    units_per_minute=100, -- unidades que o transformador ganha de volta por minuto
    x=-619.66058349609,y=-233.47964477539,z=38.057048797607, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Diamante"] = { -- action name
        description="Vender Diamante", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Diamante"] = 1
      },
        products={ -- items given per unit
          ["money"] = 130
        }
      }
    }
  },
-- Carro Forte
  {
    name="Cofre", -- menu name
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=253.90089416504,y=225.21408081055,z=101.87578582764,
    radius=2, height=1.0, -- area
    recipes = {
      ["Dinheiro do Banco"] = { -- action name
       description="Pegar dinheiro do banco.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["bank_money"] = 500000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
    -- Porte de Arma
  {
    name="Porte de Arma", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=437.178802490234,y=-994.613525390625,z=30.6895904541016,
    radius=2, height=1.0, -- area
    recipes = {
      ["Porte de Arma"] = { -- action name
       description="comprar porte de arma.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["Porte de Arma"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
    -- CARTEIRA DE ADVOGADO
  {
    name="OAB", -- menu name
	  permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-77.134468078613,y=-802.86267089844,z=243.40579223633,
    radius=2, height=1.0, -- area
    recipes = {
      ["OAB"] = { -- action name
       description="Carteira de Advogado.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		      ["OAB"] = 1
		    }, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },

}
-- define multiple static transformers with postions list
local weedplants = {
  {1873.36901855469,3658.46215820313,33.8029747009277},
  {1856.33776855469,3635.12109375,34.1897926330566},
  {1830.75390625,3621.44140625,33.8487205505371},
  {1784.70251464844,3579.93798828125,34.7956123352051},
  {182.644317626953,3315.75537109375,41.4806938171387},
  {1764.65661621094,3642.916015625,34.5866050720215},
  {1512.91027832031,1673.76025390625,111.531875610352}
}
for k,v in pairs(weedplants) do
  local plant = {
    name="Planta de Maconha", -- menu name
    --permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, plant)
end

local warehouses = {
  {-1111.2841796875,4937.4052734375,218.386306762695},
  {1539.01794433594,1704.29174804688,109.659622192383},
  {981.412841796875,-1805.70349121094,35.4845695495605}
}
for k,v in pairs(warehouses) do
  local warehouse = {
    name="Oficina de armas", -- menu name
    permissions = {"build.gun"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=10,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Build Pistol"] = { -- action name
        description="Construir pistola.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["pistol_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PISTOL"] = 1
        }
      },
      ["Build Shotgun"] = { -- action name
        description="Construir shotgun.", -- action description
        in_money=3000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["shotgun_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PUMPSHOTGUN"] = 1
        }
      },
      ["Build SMG"] = { -- action name
        description="Construir submachinegun.", -- action description
        in_money=5000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["smg_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_SMG"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, warehouse)
end

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed plant"] = {
    def = {
      name="Weed Plant", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = weedplants
  },
  ["gun warehouse"] = {
    def = {
      name="Gun Warehouse", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = warehouses
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 30-- 12 hours -- 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed plant"] = 10000,
    ["gun warehouse"] = 25000
  },
  positions = {
    {1821.12390136719,3685.9736328125,34.2769317626953},
    {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 30, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg