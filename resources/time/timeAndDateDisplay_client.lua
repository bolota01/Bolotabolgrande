local displayTime = true
local useMilitaryTime = true
local displayDayOfWeek = true
local displayDate = true

local timeAndDateString = nil
local hour
local minute
local dayOfWeek
local month
local dayOfMonth
local year

-- Display Time and Date at top right of screen -- format: | 12:13 | Wednesday | 17 Janeiro 2017 |
Citizen.CreateThread(function()
	while true do
		Wait(1)
		timeAndDateString = "|"
		
		if displayTime == true then
			CalculateTimeToDisplay()
			timeAndDateString = timeAndDateString .. " " .. hour .. ":" .. minute .. " |"
		end
		if displayDayOfWeek == true then
			CalculateDayOfWeekToDisplay()
			timeAndDateString = timeAndDateString .. " " .. dayOfWeek .. " |"
		end
		if displayDate == true then
			CalculateDateToDisplay()
			timeAndDateString = timeAndDateString .. " " .. dayOfMonth .. " " .. month .. " " .. year .. " |"
		end
		
		SetTextFont(0)
		SetTextProportional(1)
		SetTextScale(0.35, 0.35)
		SetTextColour(255, 255, 255, 255)
		SetTextDropshadow(0, 0, 0, 0, 255)
		SetTextEdge(1, 0, 0, 0, 255)
		SetTextDropShadow()
		SetTextOutline()
		SetTextRightJustify(true)
		SetTextWrap(0,0.97)
		SetTextEntry("STRING")
		
		AddTextComponentString(timeAndDateString)
		DrawText(0.5, 0.96)
	end
end)

function CalculateTimeToDisplay()
	hour = GetClockHours()
	minute = GetClockMinutes()

	if useMilitaryTime == false then
		if hour == 0 or hour == 24 then
			hour = 12
		elseif hour >= 13 then
			hour = hour - 12
		end
	end

	if hour <= 9 then
		hour = "0" .. hour
	end
	if minute <= 9 then
		minute = "0" .. minute
	end
end

function CalculateDayOfWeekToDisplay()
	dayOfWeek = GetClockDayOfWeek()
	
	if dayOfWeek == 0 then
		dayOfWeek = "Domingo"
	elseif dayOfWeek == 1 then
		dayOfWeek = "Segunda-feira"
	elseif dayOfWeek == 2 then
		dayOfWeek = "Terça-feira"
	elseif dayOfWeek == 3 then
		dayOfWeek = "Quarta-feira"
	elseif dayOfWeek == 4 then
		dayOfWeek = "Quinta-feira"
	elseif dayOfWeek == 5 then
		dayOfWeek = "Sexta-feira"
	elseif dayOfWeek == 6 then
		dayOfWeek = "Sabado"
	end
end

function CalculateDateToDisplay()
	month = GetClockMonth()
	dayOfMonth = GetClockDayOfMonth()
	year = GetClockYear()
	
	if month == 0 then
		month = "Janeiro"
	elseif month == 1 then
		month = "Fevereiro"
	elseif month == 2 then
		month = "Março"
	elseif month == 3 then
		month = "Abril"
	elseif month == 4 then
		month = "Maio"
	elseif month == 5 then
		month = "Junho"
	elseif month == 6 then
		month = "Julho"
	elseif month == 7 then
		month = "Agosto"
	elseif month == 8 then
		month = "Setembro"
	elseif month == 9 then
		month = "Outubro"
	elseif month == 10 then
		month = "Novembro"
	elseif month == 11 then
		month = "Dezembro"
	end
end
