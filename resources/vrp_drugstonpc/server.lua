local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_kekmememememes")

RegisterServerEvent('drugs:item')
AddEventHandler('drugs:item', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local drugs = {"cocaina", "metanfetamina", "cannabis"} -- total drugs list
    local t = math.random(1,#drugs) -- count and choose one drugs list
    if vRP.tryGetInventoryItem({user_id,drugs[t],1,true}) then
      TriggerClientEvent('cancel', player)
    else
      TriggerClientEvent('done', player)
      TriggerClientEvent('cancel', player)
    end
  end)

RegisterServerEvent('drugs:money')
AddEventHandler('drugs:money', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local reward = math.random(150,300)
	vRP.giveMoney({user_id,reward})
end)

RegisterServerEvent('vRP_drugNPC:policia')
AddEventHandler('vRP_drugNPC:policia', function(x,y,z)
     vRP.sendServiceAlert({nil, "police",x,y,z,"Alguém está me oferecendo drogas."})
end)