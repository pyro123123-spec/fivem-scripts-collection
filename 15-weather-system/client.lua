-- Weather Client

RegisterNetEvent('setWeatherClient')
AddEventHandler('setWeatherClient', function(weather)
    SetWeatherTypeNow(weather)
end)