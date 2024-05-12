--[[--------------------------]]--
--[[      Made by Mo1810      ]]--
--[[--------------------------]]--

-- vv vv vv vv vv vv vv vv vv vv --
-- -- -- -- -- -- -- -- -- -- -- --
-- -- -- -- !EDIT HERE! -- -- -- --
-- -- -- -- -- -- -- -- -- -- -- --
-- vv vv vv vv vv vv vv vv vv vv --

RegisterNetEvent('teleporter:drawInfoText')
AddEventHandler('teleporter:drawInfoText', function(label)
--	ESX.ShowHelpNotification(label) -- if you want to display ESX notification, enable this
--[[VVV HERE YOU CAN INSERT YOUR OWN WAY OF NOTIFICATION VVV]]--
	
	
	
end)

-- ^^ ^^ ^^ ^^ ^^ ^^ ^^ ^^ ^^ ^^ --
-- -- -- -- -- -- -- -- -- -- -- --
-- -- -- -- !EDIT HERE! -- -- -- --
-- -- -- -- -- -- -- -- -- -- -- --
-- ^^ ^^ ^^ ^^ ^^ ^^ ^^ ^^ ^^ ^^ --

Citizen.CreateThread(function()
	while true do
		for k,teleporter in ipairs(Config.teleporter) do
			while GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), teleporter.from) <= teleporter.markerDistance do
				Marker(vector3(teleporter.from.x, teleporter.from.y, teleporter.from.z), teleporter.marker)
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), teleporter.from) <= teleporter.distance then
					ControlListener(vector3(teleporter.from.x, teleporter.from.y, teleporter.from.z), teleporter.from.w)
					TriggerEvent('teleporter:drawInfoText', teleporter.label)
				end
				Citizen.Wait(4)
			end
			while (GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), teleporter.to) <= teleporter.markerDistance and teleporter.reversable) do
				Marker(vector3(teleporter.to.x, teleporter.to.y, teleporter.to.z), teleporter.marker)
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), teleporter.to) <= teleporter.distance then
					ControlListener(vector3(teleporter.from.x, teleporter.from.y, teleporter.from.z), teleporter.from.w)
					TriggerEvent('teleporter:drawInfoText', teleporter.label)
				end
				Citizen.Wait(4)
			end
		end
		Citizen.Wait(1000)
	end
end)

function Marker(coords, marker) 
	DrawMarker(
		marker.type, 
		coords, 
		0.0, 0.0, 0.0, --dirXYZ
		0.0, 0.0, 0.0, --rotXYZ
		marker.scale, marker.scale, marker.scale, 
		marker.color.x, marker.color.y, marker.color.z, math.tointeger(marker.color.w), 
		false, 
		marker.faceCamera, 
		2, 
		marker.rotate, 
		nil, 
		nil, 
		false
	)
end

function ControlListener(coords, heading)
	if IsControlJustReleased(0, Config.triggerKey) then
		SetEntityCoords(PlayerPedId(), coords-vec3(0,0,1), true, true, false, false)
		SetEntityHeading(PlayerPedId(), heading)
	end
end

--[[--------------------------]]--
--[[      Made by Mo1810      ]]--
--[[--------------------------]]--
