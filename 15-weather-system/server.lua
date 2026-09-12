-- Weather System
-- Wetter-Verwaltung

local currentWeather = 'CLEAR'

RegisterCommand('setweather', function(source, args, rawCommand)
    if #args < 1 then
        TriggerClientEvent('chat:addMessage', source, {
            args = {'Weather'},
            msg = 'Verwendung: /setweather [weathertype]'
        })
        return
    end
    
    currentWeather = string.upper(args[1])
    TriggerClientEvent('setWeatherClient', -1, currentWeather)
    
    TriggerClientEvent('chat:addMessage', -1, {
        args = {'Weather'},
        msg = 'Wetter zu ' .. currentWeather .. ' geaendert'
    })
end)