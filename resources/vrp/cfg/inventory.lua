
local cfg = {}

cfg.inventory_weight_per_strength = 10 -- weight for an user inventory per strength level (no unit, but thinking in "kg" is a good norm)

-- default chest weight for vehicle trunks
cfg.default_vehicle_chest_weight = 50

-- define vehicle chest weight by model in lower case
cfg.vehicle_chest_weights = {
  ["bmws"] = 15,
  ["bmwz"] = 15,
  ["harley"] = 15, 
  ["kx450f"] = 15,
  ["r1"] = 15,
  ["titan"] = 15,
  ["xt66"] = 15,
  ["silverado"] = 150,
  ["urus"] = 70,
  ["golquadrado"] = 35,
  ["fiesta"] = 35,
  ["fusca"] = 35,
  ["chevette"] = 35,
}

return cfg
