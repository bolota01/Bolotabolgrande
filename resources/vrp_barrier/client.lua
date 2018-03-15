vRPpm = {}
Tunnel.bindInterface("vrp_barrier",vRPpm)
Proxy.addInterface("vrp_barrier",vRPpm)
PMserver = Tunnel.getInterface("vrp_barrier","vrp_barrier")
vRPserver = Tunnel.getInterface("vRP","vrp_barrier")
vRP = Proxy.getInterface("vRP")

function vRPpm.setConeOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cone = GetHashKey("prop_mp_cone_02")

    RequestModel(cone)
    while not HasModelLoaded(cone) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cone, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setBarrierOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	barrier = GetHashKey("prop_mp_barrier_02b")

    RequestModel(barrier)
    while not HasModelLoaded(barrier) do
      Citizen.Wait(1)
    end

    local object = CreateObject(barrier, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setposteOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	poste = GetHashKey("stt_prop_race_gantry_01")

    RequestModel(poste)
    while not HasModelLoaded(poste) do
      Citizen.Wait(1)
    end

    local object = CreateObject(poste, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setpedraOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	pedra = GetHashKey("prop_mp_barrier_01b")

    RequestModel(pedra)
    while not HasModelLoaded(pedra) do
      Citizen.Wait(1)
    end

    local object = CreateObject(pedra, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setconesOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cones = GetHashKey("prop_barrier_wat_03b")

    RequestModel(cones)
    while not HasModelLoaded(cones) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cones, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setsinalOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	sinal = GetHashKey("prop_rail_signals03")

    RequestModel(sinal)
    while not HasModelLoaded(sinal) do
      Citizen.Wait(1)
    end

    local object = CreateObject(sinal, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setconcretoOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	concreto = GetHashKey("prop_barier_conc_05b")

    RequestModel(concreto)
    while not HasModelLoaded(concreto) do
      Citizen.Wait(1)
    end

    local object = CreateObject(concreto, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setBarrierWorkOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	barrier2 = GetHashKey("prop_barrier_work05")

    RequestModel(barrier2)
    while not HasModelLoaded(barrier2) do
      Citizen.Wait(1)
    end

    local object = CreateObject(barrier2, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

function vRPpm.setSpikesOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
	spike = GetHashKey("P_ld_stinger_s")

    RequestModel(spike)
    while not HasModelLoaded(spike) do
      Citizen.Wait(1)
    end

    local object = CreateObject(spike, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
	SetEntityHeading(object, h+90)
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)
    local vehCoord = GetEntityCoords(veh)
    if IsPedInAnyVehicle(ped, false) then
      if DoesObjectOfTypeExistAtCoords(vehCoord["x"], vehCoord["y"], vehCoord["z"], 0.9, GetHashKey("prop_mp_cone_02"), true) then
         SetVehicleTyreBurst(veh, 0, true, 1000.0)
         SetVehicleTyreBurst(veh, 1, true, 1000.0)
         SetVehicleTyreBurst(veh, 2, true, 1000.0)
         SetVehicleTyreBurst(veh, 3, true, 1000.0)
         SetVehicleTyreBurst(veh, 4, true, 1000.0)
         SetVehicleTyreBurst(veh, 5, true, 1000.0)
         SetVehicleTyreBurst(veh, 6, true, 1000.0)
         SetVehicleTyreBurst(veh, 7, true, 1000.0)
         vRPpm.removeSpikes()
       end
     end
   end
end)

function vRPpm.isCloseToSpikes()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("P_ld_stinger_s"), true) then
	  return true
	else 
	  return false
	end
end

function vRPpm.isCloseToCone()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_mp_cone_02"), true) then
	  return true
	else 
	  return false
	end
end

function vRPpm.isCloseToBarrier()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_mp_barrier_02b"), true) then
	  return true
	else 
	  return false
	end
end

function vRPpm.isCloseToBarrier2()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_barrier_work05"), true) then
	  return true
	else 
	  return false
	end
end

function vRPpm.removeCone()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_mp_cone_02"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_mp_cone_02"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removeBarrier()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_mp_barrier_02b"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_mp_barrier_02b"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removeBarrier2()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_barrier_work05"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_barrier_work05"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removeposte()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("stt_prop_race_gantry_01"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("stt_prop_race_gantry_01"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removepedra()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_mp_barrier_01b"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_mp_barrier_01b"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removecones()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_barrier_wat_03b"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_barrier_wat_03b"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removesinal()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_rail_signals03"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_rail_signals03"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removeconcreto()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_barier_conc_05b"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_barier_conc_05b"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end

function vRPpm.removeSpikes()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("P_ld_stinger_s"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("P_ld_stinger_s"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end