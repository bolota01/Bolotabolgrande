--===============================================--===============================================
--= stationary radars based on 	https://github.com/DreanorGTA5Mods/StationaryRadar	         =
--===============================================--===============================================

local radares = {
{x = 379.68807983398, y = -1048.3527832031, z = 29.250692367554},
{x = -253.10794067383, y = -630.20385742188, z = 33.002685546875},
{x = -300.74865722656, y = -831.45989990234, z = 29.319780349731},
{x = 170.1071472168, y = -820.81530761719, z = 31.186040878296},
{x = -186.86769104004, y = -892.01495361328, z = 29.34253692627},
{x = 356.18356323242, y = -664.17907714844, z = 29.337747573853},
{x = 51.64575958252, y = -1131.6890869141, z = 29.333297729492},
{x = 665.13397216797, y = -402.58926391602, z = 41.760562896729},
}

Citizen.CreateThread(function()
  while true do
    Wait(0)
	for k,v in pairs(radares) do
	local player = GetPlayerPed(-1)
	local coords = GetEntityCoords(player, true)
	if Vdist2(radares[k].x, radares[k].y, radares[k].z, coords["x"], coords["y"], coords["z"]) < 10 then
	Citizen.Trace("Você está passando por um radar.")
		checkSpeed()
	end
  end
 end
end)

  function checkSpeed()
  local pP = GetPlayerPed(-1)
  local speed = GetEntitySpeed(pP)
  local vehicle = GetVehiclePedIsIn(pP, false)
  local driver = GetPedInVehicleSeat(vehicle, -1)
  local maxspeed = 80
	local kmhspeed = math.ceil(speed*3.6)
		if kmhspeed > maxspeed and driver == pP then
			Citizen.Wait(250)
      TriggerServerEvent('cobrarMulta')
	  end
end


-- Display a notification above the minimap.
function ShowNotification(text, blink)
  if blink == nil then blink = false end
  SetNotificationTextEntry("STRING")
  AddTextComponentSubstringPlayerName(text)
  DrawNotification(blink, false)
end

RegisterNetEvent('Radar:notify')
AddEventHandler('Radar:notify', function(message, blink)
  ShowNotification(message, blink)
end)

