
local cfg = {}

-- define customization parts
local parts = {
  ["Rosto"] = 0,
  ["Mascara"] = 1,
  ["Cabelos"] = 2,
  ["Mão"] = 3,
  ["Calcas"] = 4,
  ["Camisas"] = 8,
  ["Sapatos"] = 6,
  ["Jaquetas"] = 11,
  ["Chapeus"] = "p0",
  ["Oculos"] = "p1",
  ["Brincos"] = "p2",
  ["Relogios"] = "p6"
}

local mascara = {
  ["Mascara"] = 1,
  ["Chapeus"] = "p0"
}

-- changes prices (any change to the character parts add amount to the total price)
cfg.drawable_change_price = 20
cfg.texture_change_price = 5


-- skinshops list {parts,x,y,z}
cfg.skinshops = {
  {parts,72.2545394897461,-1399.10229492188,29.3761386871338},
  {parts,450.21002197266,-990.15246582031,30.689582824707},
  {parts,269.77203369141,-1360.2133789063,24.537786483765},
  {parts,-703.77685546875,-152.258544921875,37.4151458740234},
  {parts,-1039.2766113282,-2733.7561035156,13.756636619568},
  {parts,-167.863754272461,-298.969482421875,39.7332878112793},
  {parts,428.694885253906,-800.1064453125,29.4911422729492},
  {parts,-829.413269042969,-1073.71032714844,11.3281078338623},
  {parts,-1193.42956542969,-772.262329101563,17.3244285583496},
  {parts,-1447.7978515625,-242.461242675781,49.8207931518555},
  {parts,11.6323690414429,6514.224609375,31.8778476715088},
  {parts,1696.29187011719,4829.3125,42.0631141662598},
  {parts,123.64656829834,-219.440338134766,54.5578384399414},
  {parts,618.093444824219,2759.62939453125,42.0881042480469},
  {parts,1190.55017089844,2713.44189453125,38.2226257324219},
  {parts,-3172.49682617188,1048.13330078125,20.8632030487061},
  {parts,-1108.44177246094,2708.92358398438,19.1078643798828},
  {mascara,-1336.8549804688,-1277.5067138672,4.8771243095398},
  
}

return cfg
