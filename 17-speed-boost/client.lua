-- Speed Boost Script
-- Erhoehe Spieler-Geschwindigkeit

local speedBoostActive = false

TriggerEvent('chat:addSuggestion', '/speedboost', 'Aktiviere Speed Boost')

RegisterCommand('speedboost', function(source, args, rawCommand)
    speedBoostActive = not speedBoostActive
    if speedBoostActive then
        TriggerEvent('chat:addMessage', {
            args = {'Speed'},
            msg = 'Speed Boost aktiviert'
        })
    else
        TriggerEvent('chat:addMessage', {
            args = {'Speed'},
            msg = 'Speed Boost deaktiviert'
        })
    end
end)

Tick(function()
    if speedBoostActive then
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)
        if vehicle ~= 0 then
            local speed = GetEntitySpeed(vehicle)
            if speed < 50 then
                ApplyForceToEntity(vehicle, 1, 0, 50, 0, 0, 0, 0, 0, true, true, true, false)
            end
        end
    end
end)