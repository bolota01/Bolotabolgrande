local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","radar")

RegisterServerEvent('cobrarMulta')
AddEventHandler('cobrarMulta', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local multa = 1000
	if vRP.hasPermission({user_id,"radar.pass"}) then
        vRPclient.notify(player,{"Você está passando por um radar! Diminua!"}) 		
	else
--TriggerClientEvent('Radar:notify', source, 'Você foi multado em $1000 por excesso de velocidade.')
    vRP.tryFullPayment({user_id,multa})
    end
end)
