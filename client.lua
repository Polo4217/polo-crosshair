
local on = true






Citizen.CreateThread(function()
	while true do
		if on and IsAimCamActive() then
			HideHudComponentThisFrame(14)
			drawCrosshair()
		end
	Citizen.Wait(6)
	end
end)


RegisterNetEvent('cl:update_c')
AddEventHandler('cl:update_c', function(bool)
	on = bool
end)




RegisterCommand('togglecrosshair', function()
	if on then
		on = false
	elseif not on then 
		on = true
	end
end)





function drawCrosshair()
	local sprite = DrawRect(0.5, 0.5, 0.001, 0.001, 255, 255, 255, 255)
end
