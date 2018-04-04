-- SCRIPT POR SHADOW
-- CONVERTIDO POR VICTORKILLER
-- NÂO RETIRAR 

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPdv = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","correio_sedex")
TSclient = Tunnel.getInterface("correio_sedex","correio_sedex")
Tunnel.bindInterface("correio_sedex",vRPdv)

RegisterServerEvent('delivery:checkjob')
AddEventHandler('delivery:checkjob', function()
	local source = source
	local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})

    if vRP.hasPermission({user_id,"delivery.gopostal"}) then --here check if you have permission
      TriggerClientEvent('yesdelivery', source)
    else
      TriggerClientEvent('nodelivery', source)
    end
end)
 
RegisterServerEvent('delivery:success')
AddEventHandler('delivery:success', function(price)
	local player = source
	local user_id = vRP.getUserId(player)
    vRP.giveMoney(user_id, price)
	
	vRPclient._notify(player,"Recebido ~g~"..price..".")
end)
