-- Advanced Chat System
-- Erweitertes Chat-System

RegisterCommand('announce', function(source, args, rawCommand)
    if #args < 1 then return end
    
    local message = table.concat(args, ' ')
    TriggerClientEvent('chat:addMessage', -1, {
        args = {'ANNOUNCEMENT'},
        msg = message
    })
end)

RegisterCommand('pm', function(source, args, rawCommand)
    if #args < 2 then return end
    
    local targetId = tonumber(args[1])
    table.remove(args, 1)
    local message = table.concat(args, ' ')
    
    TriggerClientEvent('chat:addMessage', targetId, {
        args = {'PRIVATE'},
        msg = message
    })
end)