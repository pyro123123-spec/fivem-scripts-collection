-- Time Client

RegisterNetEvent('setTimeClient')
AddEventHandler('setTimeClient', function(hour, minute)
    SetClockTime(hour, minute, 0)
end)