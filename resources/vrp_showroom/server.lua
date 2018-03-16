local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

MySQL = module("vrp_mysql", "MySQL")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_showroom")
Gclient = Tunnel.getInterface("vRP_garages","vRP_showroom")

-- vehicle db / garage and lscustoms compatibility
MySQL.createCommand("vRP/showroom_columns", [[
ALTER TABLE vrp_user_vehicles ADD veh_type varchar(255) NOT NULL DEFAULT 'default' ;
ALTER TABLE vrp_user_vehicles ADD vehicle_plate varchar(255) NOT NULL;
]])

MySQL.createCommand("vRP/add_name_vehicle", [[
ALTER TABLE vrp_user_vehicles ADD veh_name varchar(255) NOT NULL DEFAULT 'Old vehicle' ;
]])

--MySQL.query("vRP/showroom_columns")
--MySQL.query("vRP/add_name_vehicle")

MySQL.createCommand("vRP/add_custom_vehicle","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,vehicle_plate,veh_type,veh_name) VALUES(@user_id,@vehicle,@vehicle_plate,@veh_type,@veh_name)")

-- SHOWROOM
RegisterServerEvent('veh_SR:CheckMoneyForVeh')
AddEventHandler('veh_SR:CheckMoneyForVeh', function(vehicle, price ,veh_type, veh_name)
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  MySQL.query("vRP/get_vehicle", {user_id = user_id, vehicle = vehicle}, function(pvehicle, affected)
	if #pvehicle > 0 then
		vRPclient.notify(player,{"~r~Vehicle already owned."})
	else
		if vRP.tryFullPayment({user_id,price}) then
			vRP.getUserIdentity({user_id, function(identity)
              MySQL.query("vRP/add_custom_vehicle", {user_id = user_id, vehicle = vehicle, vehicle_plate = "P "..identity.registration, veh_type = veh_type, veh_name = veh_name})
			end})
			
			TriggerClientEvent('veh_SR:CloseMenu', player, vehicle, veh_type)
			vRPclient.notify(player,{"Paid ~r~"..price.."$."})
		else
			vRPclient.notify(player,{"~r~Not enough money."})
		end
	end
  end)
end)

RegisterServerEvent('veh_SR:CheckMoneyForBasicVeh')
AddEventHandler('veh_SR:CheckMoneyForBasicVeh', function(user_id, vehicle, price ,veh_type, veh_name)
  local player = vRP.getUserSource({user_id})
  MySQL.query("vRP/get_vehicle", {user_id = user_id, vehicle = vehicle}, function(pvehicle, affected)
	if #pvehicle > 0 then
		vRPclient.notify(player,{"~r~Vehicle already owned."})
		vRP.giveMoney({user_id,price})
	else
        vRPclient.notify(player,{"Paid ~r~"..price.."$."})
		vRP.getUserIdentity({user_id, function(identity)
          MySQL.query("vRP/add_custom_vehicle", {user_id = user_id, vehicle = vehicle, vehicle_plate = "P "..identity.registration, veh_type = veh_type, veh_name = veh_name})
		end})
		Gclient.spawnBoughtVehicle(player,{veh_type, vehicle})
	end
  end)
end)
