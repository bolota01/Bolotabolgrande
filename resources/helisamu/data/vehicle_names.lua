function AddTextEntry(key, value)	
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	-- 2016 SW4 Hilux
	AddTextEntry('0x7C264F05', 'samumav')

end)