-- Vehicle Spawn Script
-- Spawne ein Fahrzeug

TriggerEvent('chat:addSuggestion', '/car', 'Spawne ein Fahrzeug (car modelname)')

RegisterCommand('car', function(source, args, rawCommand)
    if #args < 1 then
        TriggerEvent('chat:addMessage', {
            args = {'Vehicle'},
            msg = 'Verwendung: /car [model]'
        })
        return
    end
    
    local model = args[1]
    RequestModel(GetHashKey(model))
    
    while not HasModelLoaded(GetHashKey(model)) do
        Wait(100)
    end
    
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local vehicle = CreateVehicle(GetHashKey(model), coords.x + 2, coords.y, coords.z, 0.0, true, false)
    
    SetPedIntoVehicle(ped, vehicle, -1)
    TriggerEvent('chat:addMessage', {
        args = {'Vehicle'},
        msg = 'Fahrzeug ' .. model .. ' erfolgreich gespawnt'
    })
end)