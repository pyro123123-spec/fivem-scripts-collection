-- Money System Script
-- Geld-Management System

local playerMoney = {}

RegisterCommand('givemoney', function(source, args, rawCommand)
    if #args < 2 then
        TriggerClientEvent('chat:addMessage', source, {
            args = {'Money'},
            msg = 'Verwendung: /givemoney [player_id] [amount]'
        })
        return
    end
    
    local targetId = tonumber(args[1])
    local amount = tonumber(args[2])
    
    if not playerMoney[targetId] then
        playerMoney[targetId] = 0
    end
    
    playerMoney[targetId] = playerMoney[targetId] + amount
    
    TriggerClientEvent('chat:addMessage', targetId, {
        args = {'Money'},
        msg = 'Du hast $' .. amount .. ' erhalten'
    })
end)

RegisterCommand('checkmoney', function(source, args, rawCommand)
    local money = playerMoney[source] or 0
    TriggerClientEvent('chat:addMessage', source, {
        args = {'Money'},
        msg = 'Dein Geld: $' .. money
    })
end)