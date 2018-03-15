--[[BASE]]--
MySQL = module("vrp_mysql", "MySQL")
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_license")

--[[LANG]]--
local Lang = module("vrp", "lib/Lang")
local cfg = module("vrp", "cfg/base")
local lang = Lang.new(module("vrp", "cfg/lang/"..cfg.lang) or {})

--[[SQL]]--
MySQL.createCommand("vRP/gun_column", "ALTER TABLE vrp_users ADD GunLicense varchar(55) NOT NULL default 'Required'")
MySQL.createCommand("vRP/gun_success", "UPDATE vrp_users SET GunLicense='Passed' WHERE id = @id")
MySQL.createCommand("vRP/gun_search", "SELECT * FROM vrp_users WHERE id = @id AND GunLicense = 'Passed'")

-- init
--MySQL.query("vRP/gun_column")

RegisterServerEvent("gun:success")
AddEventHandler("gun:success", function()
	local user_id = vRP.getUserId({source})
	MySQL.query("vRP/gun_success", {id = user_id})
end)

RegisterServerEvent("gun:buysuccess")
AddEventHandler("gun:buysuccess", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	if vRP.tryPayment({user_id,5000}) then
        TriggerClientEvent('gun:EndBuyLicense',player)
	else
		vRPclient.notify(player,{"~r~Not enough money."})
	end
end)

--[[ ***** SPAWN CHECK ***** ]]
AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
	MySQL.query("vRP/gun_search", {id = user_id}, function(rows, affected)
      if #rows > 0 then
          TriggerClientEvent('gun:CheckLicStatus',source)
      end
    end)
end)

--[[POLICE MENU]]--
local choice_asklc = {function(player,choice)
  vRPclient.getNearestPlayer(player,{10},function(nplayer)
    local nuser_id = vRP.getUserId({nplayer})
    if nuser_id ~= nil then
      vRPclient.notify(player,{"Asking firearms license..."})
      vRP.request({nplayer,"Do you want to show your license?",15,function(nplayer,ok)
        if ok then
          MySQL.query("vRP/gun_search", {id = nuser_id}, function(rows, affected)
            if #rows > 0 then
			  vRPclient.notify(player,{"Firearms license: ~g~OK"})
			else
			  vRPclient.notify(player,{"Firearms license: ~r~Required"})
            end
          end)
        else
          vRPclient.notify(player,{lang.common.request_refused()})
        end
      end})
    else
      vRPclient.notify(player,{lang.common.no_player_near()})
    end
  end)
end, "Check firearms license from the nearest player."}

vRP.registerMenuBuilder({"police", function(add, data)
  local player = data.player

  local user_id = vRP.getUserId({player})
  if user_id ~= nil then
    local choices = {}

    -- build police menu
    if vRP.hasPermission({user_id,"police.weapon_search"}) then
       choices["Check firearms license"] = choice_asklc
    end
	
    add(choices)
  end
end})