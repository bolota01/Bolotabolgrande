local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_stationaryRadars")

RegisterServerEvent('cobrarMulta')
AddEventHandler('cobrarMulta', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local multa = 300
	if vRP.hasGroup({user_id,"cop"}) or vRP.hasGroup({user_id,"ems"}) then
		TriggerClientEvent('Radar:notify', source, 'Você foi multado em $300 mas o governo retirou sua multa.')
	else
	TriggerClientEvent('Radar:notify', source, 'Você foi multado em $300 por excesso de velocidade.')
	vRP.tryFullPayment({user_id,multa})
	end
end)
