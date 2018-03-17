
local cfg = {}

cfg.lang = "en"

-- REPAIR

-- map of permission -> repair config
-- (multiple repair permissions can work)
--- chance: chance factor per minute (1 => everytime, 10 => 1/10)
--- title
--- positions
--- reward: money reward
--- steps: number of things to fix
cfg.repair = {
  ["mission.repair.satellite_dishes"] = { -- permissao
    chance = 5, -- quantidade de lados do dado 1
    title = "Antenas parabólicas", -- nome
    steps = 1,
    positions = {
      {1985.55017089844,2929.42211914063,46.5480003356934},
      {1965.38012695313,2917.47241210938,56.1684608459473},
      {1963.78540039063,2923.09497070313,58.674430847168},
      {2000.7314453125,2930.4404296875,56.9706687927246},
      {2008.03125,2933.06591796875,59.4772453308105},
      {2021.29052734375,2945.23486328125,47.3697547912598},
      {2046.88366699219,2944.65673828125,51.0216827392578},
      {2048.24487304688,2950.81567382813,57.5155029296875},
      {2049.64965820313,2945.82641601563,57.5173225402832},
      {2043.96203613281,2945.04541015625,60.0233764648438},
      {2063.26318359375,2954.65551757813,47.1244201660156},
      {2078.7734375,2945.44653320313,56.4166870117188},
      {2084.89599609375,2949.8955078125,58.922477722168},
      {2075.71948242188,2950.55688476563,58.9233741760254},
      {2098.6142578125,2939.935546875,47.3400077819824},
      {2106.00659179688,2926.54125976563,50.9320068359375},
      {2106.63671875,2923.71069335938,57.4270858764648},
      {2106.38110351563,2929.37817382813,59.9300575256348},
      {2114.44677734375,2924.77514648438,59.933162689209},
      {2127.35888671875,2918.94116210938,47.7327079772949},
      {2137.28881835938,2900.53442382813,57.263298034668},
      {2137.61767578125,2906.61645507813,59.770336151123},
      {2144.6728515625,2900.85595703125,59.7593727111816}
    },
    reward = 450
  },
  ["mission.repair.wind_turbines"] = {
    chance = 5,
    steps = 1,
    title = "Turbinas eólicas",
    positions = {
      {2363.77880859375,2288.63891601563,94.252693176269},
      {2347.873046875,2237.5771484375,99.3171691894531},
      {2330.4150390625,2114.89965820313,108.288673400879},
      {2331.23291015625,2054.52392578125,103.90625},
      {2287.10668945313,2075.57153320313,122.888381958008},
      {2271.43725585938,1996.4248046875,132.123352050781},
      {2307.3681640625,1972.44323730469,131.318496704102},
      {2267.27758789063,1917.859375,123.269912719727},
      {2299.90209960938,1857.3779296875,106.976081848145},
      {2356.48413085938,1836.69982910156,102.337211608887}
    },
    reward = 450
  }
}

cfg.bankdriver = {
  ["mission.bankdriver.moneybank"] = {
    chance = 5,
    title = "Transferencia de Dinheiro",
    steps = 1,
    positions = {
      {-161.13385009766,-860.69409179688,29.488040924072},
      {-353.77200317383,-54.185779571533,49.03653717041},
      {-1211.4182128906,-335.75259399414,37.781627655029},
      {146.99836730957,-1045.0439453125,29.368021011353},
      {-2957.7365722656,481.54229736328,15.697030067444}
    },
    reward = 400
  },
  ["mission.bankdriver.moneybank2"] = {
    chance = 5,
    title = "Transferencia de Dinheiro",
    steps = 1,
    positions = {
      {-161.13385009766,-860.69409179688,29.488040924072},
      {-353.77200317383,-54.185779571533,49.03653717041},
      {-1211.4182128906,-335.75259399414,37.781627655029},
      {146.99836730957,-1045.0439453125,29.368021011353},
      {-2957.7365722656,481.54229736328,15.697030067444}
    },
    reward = 400
  }
  
}

-- DELIVERY

local common_delivery_positions = {
	{-107.135391235352,-610.504272460938,35.6777610778809},
	{-563.979919433594,268.038635253906,82.521728515625},
	{-597.918762207031,-307.878479003906,34.4432411193848},
	{-1150.85693359375,-1594.68334960938,3.86077857017517},
	{-230.550277709961,-2048.74340820313,27.2381439208984},
	{-1040.90148925781,-2718.84204101563,13.2963371276855},
	{-938.132873535156,-2324.90307617188,6.32498407363892},
	{-1416.60266113281,-527.608276367188,31.2453346252441},
	{-647.495849609375,41.0316467285156,39.6100006103516},
	{-783.066528320313,292.72216796875,85.3055648803711},
	{296.820739746094,175.705184936523,103.650566101074},
	{256.210906982422,-377.495727539063,44.1429252624512},
	{-1610.41137695313,-937.259094238281,8.25015354156494},
	{-797.591735839844,-115.627426147461,37.4747085571289},
    {-1087.20959472656,479.4970703125,81.5277786254883},
    {-1215.48083496094,457.809478759766,91.9756546020508},
    {-1277.36901855469,496.794769287109,97.8074340820313},
    {-1380.82360839844,474.517272949219,105.052627563477},
    {-1063.642578125,-1054.95007324219,2.15036153793335},
    {-1113.640625,-1068.970703125,2.15036201477051},
    {-1161.85144042969,-1099.05871582031,2.17665767669678}
}


local gunshop_positions = {
  {1692.41, 3758.22, 34.7053},
  {252.696, -48.2487, 69.941},
  {844.299, -1033.26, 28.1949},
  {-331.624, 6082.46, 31.4548},
  {-664.147, -935.119, 21.8292},
  {-1305.45056152344,-394.0068359375,36.6957740783691},
  {-1119.48803710938,2697.08666992188,18.5541591644287},
  {2569.62, 294.453, 108.735},
  {-3172.60375976563,1085.74816894531,20.8387603759766},
  {21.70, -1107.41, 29.79},
  {810.15, -2156.88, 29.61}
}
-- map of permission => delivery config
--- items: map of idname => {min_amount,max_amount,reward_per_item}
--- positions
-- only one delivery permission can be used per player (no permission selection, only one will work)
cfg.delivery = {
  ["mission.delivery.food"] = {
    positions = common_delivery_positions,
    chance = 2,
    items = {
      ["pizza"] = {1,20,28},
      ["gocagola"] = {0,20,48}
    }
  },
  ["mission.delivery.weed"] = {
    chance = 5,
    items = {
      ["cannabis"] = {10,20,200},
    },
    positions = {
	  {-1172.09387207031,-1571.91198730469,4.66362237930298},
      {127.275039672852,-1283.83703613281,29.278923034668},
	  {-88.0348663330078,-83.0567474365234,57.8084182739258}
	}
  },
  ["mission.delivery.cocaina"] = {
    chance = 5,
    items = {
      ["cocaina"] = {10,20,200},
    },
    positions = {
      {-1172.09387207031,-1571.91198730469,4.66362237930298},
      {127.275039672852,-1283.83703613281,29.278923034668},
      {-88.0348663330078,-83.0567474365234,57.8084182739258}
    }
  },
  ["mission.delivery.metanfetamina"] = {
    chance = 5,
    items = {
      ["metanfetamina"] = {10,20,250},
    },
    positions = {
      {-1172.09387207031,-1571.91198730469,4.66362237930298},
      {127.275039672852,-1283.83703613281,29.278923034668},
      {-88.0348663330078,-83.0567474365234,57.8084182739258}
    }
  },  
  ["mission.delivery.pot"] = {
    chance = 5,
    positions = common_delivery_positions,
    items = {
      ["cannabis"] = {10,20,200},
    }
  },
  ["mission.delivery.pot2"] = {
    chance = 5,
    positions = common_delivery_positions,
    items = {
      ["cocaina"] = {10,20,200},
    }
  },
  ["mission.delivery.pot3"] = {
    chance = 5,
    positions = common_delivery_positions,
    items = {
      ["metanfetamina"] = {10,20,250},
    }
  },  
  ["mission.delivery.pistol"] = {
    chance = 60,
    positions = gunshop_positions,
    items = {
      ["wbody|WEAPON_PISTOL"] = {1,5,5000},
      ["wammo|WEAPON_PISTOL"] = {100,600,10}
    }
  },
  ["mission.delivery.shotgun"] = {
    chance = 90,
    positions = gunshop_positions,
    items = {
      ["wbody|WEAPON_PUMPSHOTGUN"] = {1,3,10000},
      ["wammo|WEAPON_PUMPSHOTGUN"] = {100,400,25}
    }
  },
  ["mission.delivery.smg"] = {
    chance = 120,
    positions = gunshop_positions,
    items = {
      ["wbody|WEAPON_SMG"] = {1,2,15000},
      ["wammo|WEAPON_SMG"] = {100,300,30}
    }
  }
}

-- GUNRUNNER

local gun_shipment_positions = {
  {-280.666381835938,6634.96728515625,7.54050254821777},
  {3867.22045898438,4463.80859375,2.72471237182617},
  {713.653137207031,4093.04272460938,34.7278327941895}
}

cfg.gunrunner = {
  ["mission.gunrunner.shipment"] = {
    title = "Pacote de armas",
	chance = 15,
    steps = 1,
    positions = gun_shipment_positions
  }
}

-- CARJACKER

local common_carjack_positions = {
  {-429.316650390625,-2666.02978515625,6.00021457672119},
  {602.115905761719,-444.284271240234,24.7449131011963}
}

cfg.carjack = {
  ["mission.carjack.vehicle"] = {
    title = "Roubar Veículo",
	chance = 15,
    steps = 1,
    positions = common_carjack_positions,
    min_reward = 500,
    max_reward = 10000
  }
}

 EMERGENCY

cfg.emergency = {
  ["mission.emergency.transfer"] = {
    chance = 10,
    title = "Transferência de Paciente",
    steps = 1,
    positions = {
	{295.070617675781,-1440.15832519531,29.4633674621582},
	{1154.85144042969,-1515.47509765625,34.3529014587402},
	{359.166778564453,-594.0615234375,28.3070049285889},
	{-452.108215332031,-341.380340576172,34.0251846313477},
	{-868.521179199219,-297.945251464844,39.3625373840332},
	{-681.840637207031,292.777496337891,81.8317031860352}
    },
    reward = 450
  },
}
-- HACKER
local common_hacker_positions = {
  {-1087.20959472656,479.4970703125,81.5277786254883},
  {-1215.48083496094,457.809478759766,91.9756546020508},
  {-1277.36901855469,496.794769287109,97.8074340820313},
  {-1380.82360839844,474.517272949219,105.052627563477},
  {-1063.642578125,-1054.95007324219,2.15036153793335},
  {-1113.640625,-1068.970703125,2.15036201477051},
  {-1161.85144042969,-1099.05871582031,2.17665767669678}
}

cfg.hacker = {
  ["mission.hacker.information"] = {
    positions = common_hacker_positions,
    items = {
      ["credit"] = {1,5,500}
    }
  },
}

 TAXI
cfg.taxi = {
  ["mission.taxi.passenger"] = {
    chance = 10,
    title = "Passageiro de táxi",
    text = "Vá para o destino.",
    steps = 1,
    positions = common_delivery_positions,
    reward = 400
  },
}
 
 POLICE 
cfg.police = {
  ["mission.police.transfer"] = {
    chance = 10,
    title = "Transferência de prisioneiro",
    text = "Transfira o prisioneiro.",
    steps = 1,
    positions = {
	{854.080261230469,-1280.93505859375,26.1412010192871},
	{452.274810791016,-996.933715820313,25.4266204833984}
    },
    reward = 600
  },
  ["mission.police.patrol"] = {
    chance = 5,
    title = "Patrulha do Banco da cidade",
    text = "Patrulhe a área.",
    steps = 1,
    positions = {
	{317.441223144531,-267.669036865234,53.4438934326172},
	{-350.306091308594,-28.1077899932861,46.9482803344727},
	{-1221.21569824219,-318.985137939453,37.1684608459473},
	{-2974.0390625,482.675506591797,14.9218883514404},
	{219.737426757813,205.291076660156,105.063316345215},
	{152.946182250977,-1029.80944824219,28.8697566986084}
    },
    reward = 650
  },
}
return cfg