local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_stationaryRadars")

RegisterServerEvent('cobrarMulta')
AddEventHandler('cobrarMulta', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local multa = 300
	vRP.tryFullPayment({user_id,multa})
end)
