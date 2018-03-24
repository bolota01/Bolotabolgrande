function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('13E9E58D', 'CHARGERPF')
  AddTextEntry('13E9E58D', 'CHARGERPF')
end)
