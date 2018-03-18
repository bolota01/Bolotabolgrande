-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  -- Gangs 
  {-1388.7412109375, -586.31683349609, 30.219205856323, 93, 73, "Downtown CO."},
  {-250.604, -2030.000, 30.000, 135, 45, "MazeBank Arena"},
  --{-1171.42, -1572.72, 3.6636, 140, 69, "Smoke on the Water"},
  {-565.171, 276.625, 83.286, 93, 73, "Tequil-La La"},
  {2222.060546875,5577.0146484375,53.834770202637, 469, 69, "Campo de Maconha"},
  {283.03845214844, -1926.1419677734, 29.670471191406, 469, 69, "Processamento de Maconha"},
  {-765.04040527344, 556.73400878906, 128.05986022949, 469, 69, "Venda de Maconha"},
  {-41.372623443604, 3033.3776855469, 41.020195007324, 497, 4, "Campo de Cocaina"},
  {340.14431762695, -1853.5443115234, 27.32195854187, 497, 4, "Processamento de Cocaina"},
  {738.06744384766, -292.49114990234, 63.202449798584, 497, 4, "Venda de Cocaina"},
  {180.66656494141, 2461.9802246094, 55.801990509033, 51, 57, "Campo de Metanfetamina"},
  {225.42935180664, -1982.7048339844, 19.73999786377, 51, 57, "Processamento de Metanfetamina"},
  {1251.0190429688, -435.5309753418, 69.309989929199, 51, 57, "Venda de Metanfetamina"},
  {2593.4228515625, 2825.0793457031, 36.088672637939, 355, 28, "Campo de Diamantes"},
  {-553.01434326172, 5325.3393554688, 73.599594116211, 355, 28, "Processamento de Diamantes"},
  {-619.66058349609, -233.47964477539, 38.057048797607, 355, 28, "Venda de Diamantes"},
  -- Oficina de armas
  {-1111.2841796875, 4937.4052734375, 218.386306762695, 387, 25, "Oficina de Armas"},
  {1539.01794433594, 1704.29174804688, 109.659622192383, 387, 25, "Oficina de Armas"},
  {981.412841796875, -1805.70349121094, 35.48456954956054, 387, 25, "Oficina de Armas"},
  -- Banco
  {150.266, -1040.203, 29.374, 108, 25, "Banco do Brasil"},
  {-1212.980,  -330.841, 37.787, 108, 25, "Banco do Brasil"},
  {-2962.582,  482.627, 15.703, 108, 25, "Banco do Brasil"},
  {-112.202,  6469.295, 31.626, 108, 25, "Banco do Brasil"},
  {314.187,  -278.621, 54.170, 108, 25, "Banco do Brasil"},
  {-351.534,  -49.529, 49.042, 108, 25, "Banco do Brasil"},
  {241.727,  220.706, 106.286, 108, 25, "Banco do Brasil"},
  -- Police Stations
  {425.130, -979.558, 30.711, 60, 26, "Departamento de Policia"},
  -- Hospitals
  {343.51895141602,-1398.6724853516,32.509265899658, 61, 11, "Hospital"},
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,17,"Academia"},
   -- Outros
  {253.90089416504,225.21408081055,101.87578582764, 134, 46, "Transferencia de Dinheiro"},
  {4095.5485839844,4464.8696289063,1.9822434186935, 365, 49, "Pesca Tartatuga"},
  {-119.17678833008,-1486.1040039063,36.98205947876, 480, 49, "Vender Tartaruga"},
  -- Casas
  {1980.0181884766,3816.54296875,32.275169372559, 374, 2, "Trailer"},
  {1980.0181884766,3816.54296875,32.275169372559, 374, 2, "Barraco"},
  {813.75073242188,-228.30000305176,66.156646728516, 374, 2, "Barraco"},
  {855.42395019531,-276.86361694336,65.750289916992, 374, 2, "Barraco"},
  {803.28216552734,-265.06622314453,66.127754211426, 374, 2, "Barraco"},
  {871.56030273438,-323.31463623047,62.218067169189, 374, 2, "Barraco"},
  {945.98492431641,-325.46697998047,66.887802124023, 374, 2, "Barraco"},
  {907.96179199219,-339.39178466797,65.07445526123, 374, 2, "Barraco"},
  {812.78125,-349.47622680664,53.743129730225, 374, 2, "Barraco"},
  {806.32751464844,-330.005859375,53.588771820068, 374, 2, "Barraco"},
  {724.10113525391,-376.22445678711,42.666450500488, 374, 2, "Barraco"},
  {658.74578857422,-346.78005981445,35.007331848145, 374, 2, "Barraco"},
  {664.99377441406,-304.40545654297,43.642772674561, 374, 2, "Barraco"},
  {730.86639404297,-143.7282409668,55.21019744873, 374, 2, "Barraco"},
  {702.20629882813,-90.933540344238,55.367206573486, 374, 2, "Barraco"},
  {683.11901855469,-108.36701202393,57.350063323975, 374, 2, "Barraco"},
  {603.01440429688,-271.93927001953,42.18510055542, 374, 2, "Barraco"},
  {575.64538574219,-226.19792175293,55.596530914307, 374, 2, "Barraco"},
  {1368.9050292969,-596.74865722656,74.337715148926, 374, 2, "Barraco Helipa"},
  {1309.0915527344,-541.64324951172,71.257713317871, 374, 2, "Barraco Helipa"},
  {1337.0686035156,-743.58239746094,66.896667480469, 374, 2, "Barraco Helipa"},
  {1372.0064697266,-757.55908203125,67.190277099609, 374, 2, "Barraco Helipa"},
  {1346.8712158203,-721.78070068359,66.987609863281, 374, 2, "Barraco Helipa"},
  {1315.1602783203,-711.81213378906,65.016632080078, 374, 2, "Barraco Helipa"},
  {1134.4449462891,-679.53234863281,56.743728637695, 374, 2, "Barraco Helipa"},
  {1282.3365478516,-653.77374267578,67.473915100098, 374, 2, "Barraco Helipa"},
  {1365.5888671875,-782.32000732422,67.177703857422, 374, 2, "Barraco Helipa"},
  {1388.2696533203,-794.68029785156,67.428787231445, 374, 2, "Barraco Helipa"},
  {1414.0897216797,-779.65924072266,66.454849243164, 374, 2, "Barraco Helipa"},
  {1083.1240234375,-690.49304199219,57.780662536621, 374, 2, "Barraco Helipa"},
  -- Galpoes
  {1454.4614257813,-1651.6026611328,66.99479675293, 374, 55, "Galpao"},
  {2846.6674804688,4449.4375,48.518280029297, 374, 55, "Galpao"},
  {-1461.5863037109,-382.83508300781,38.745960235596, 374, 55, "Galpao"},
  {939.76989746094,-1490.833984375,30.092649459839, 374, 55, "Galpao"},
  {759.47930908203,-909.537109375,25.280485153198, 374, 55, "Galpao"},
  {714.00598144531,-716.97760009766,26.128541946411, 374, 55, "Galpao"},
  {53.095752716064,6487.84765625,31.426488876343, 374, 55, "Galpao"},
  {-174.7043762207,217.1598815918,89.504409790039, 374, 55, "Galpao"},
  {670.56146240234,-2667.63671875,6.081184387207, 374, 55, "Galpao"},
  {-984.54089355469,-2227.4636230469,8.8616952896118, 374, 55, "Galpao"},
  {968.03076171875,-1810.7879638672,31.213417053223, 374, 55, "Galpao"},
  {387.69692993164,3585.9638671875,33.2922706604, 374, 55, "Galpao"},
      -- Cartões clonados
  {261.61892700195,204.29025268555,110.28720855713, 500, 59, "Cartões Clonáveis"},
  {-1054.0205078125,-230.26893615723,44.020957946777, 500, 59, "Clonar Cartões"},
  {-621.35168457031,36.309566497803,43.566032409668, 500, 59, "Vender Cartões Clonados"},
  -- Porte de armas
  {437.178802490234,-994.613525390625,30.6895904541016, 156, 26, "Porte de Armas"}

}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
{-41.372623443604,3033.3776855469,41.020195007324,1,1,0.8,204,204,0,150,35}, -- Campo de Cocaina
{340.14431762695,-1853.5443115234,27.32195854187,1,1,0.8,204,204,0,150,35}, -- Processamento de Cocaina
{738.06744384766,-292.49114990234,63.202449798584,1,1,0.8,204,204,0,150,35}, -- Venda de Cocaina
{180.66656494141,2461.9802246094,55.801990509033,1,1,0.8,204,204,0,150,35}, -- Campo de Metanfetamina
{225.42935180664,-1982.7048339844,19.73999786377,1,1,0.8,204,204,0,150,35}, -- Processamento de Metanfetamina
{1251.0190429688,-435.5309753418,69.309989929199,1,1,0.8,204,204,0,150,35}, -- Venda de Metanfetamina
{2593.4228515625,2825.0793457031,36.088672637939,1,1,0.8,204,204,0,150,35}, -- Campo de Diamantes
{-553.01434326172,5325.3393554688,73.599594116211,1,1,0.8,204,204,0,150,35}, -- Processamento de Diamantes
{-619.66058349609,-233.47964477539,38.057048797607,1,1,0.8,204,204,0,150,35}, -- Venda de Diamantes
{2222.060546875,5577.0146484375,53.834770202637,1,1,0.8,204,204,0,150,35}, -- Campo de Maconha
{283.03845214844,-1926.1419677734,29.670471191406,1,1,0.8,204,204,0,150,35}, -- Processamento de Maconha
{-765.04040527344,556.73400878906,128.05986022949,1,1,0.8,204,204,0,150,35}, -- Venda de Maconha
{261.61892700195,204.29025268555,110.28720855713,1,1,0.8,204,204,0,150,35}, -- Cartões Clonáveis
{-1054.0205078125,-230.26893615723,44.020957946777,1,1,0.8,204,204,0,150,35}, -- Clonar Cartões"
{-621.35168457031,36.309566497803,43.566032409668,1,1,0.8,204,204,0,150,35}, -- Vender Cartões Clonados"
{4095.5485839844,4464.8696289063,1.9822434186935,1,1,0.8,204,204,0,150,35}, -- Cacador Pescador de Tartaruga
{-119.17678833008,-1486.1040039063,36.98205947876,1,1,0.8,204,204,0,150,35} -- Vender Tartaruga
}

return cfg