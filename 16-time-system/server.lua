-- Time System
-- Zeit-Verwaltung

RegisterCommand('settime', function(source, args, rawCommand)
    if #args < 2 then
        TriggerClientEvent('chat:addMessage', source, {
            args = {'Time'},
            msg = 'Verwendung: /settime [hour] [minute]'
        })
        return
    end
    
    local hour = tonumber(args[1])
    local minute = tonumber(args[2])
    
    TriggerClientEvent('setTimeClient', -1, hour, minute)
    TriggerClientEvent('chat:addMessage', -1, {
        args = {'Time'},
        msg = 'Zeit auf ' .. hour .. ':' .. minute .. ' gesetzt'
    })
end)