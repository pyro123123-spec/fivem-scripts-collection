-- Health & Food Script
-- Heilung und Essen

TriggerEvent('chat:addSuggestion', '/heal', 'Heile dich selbst')
TriggerEvent('chat:addSuggestion', '/food', 'Essen fuer Hunger')

RegisterCommand('heal', function(source, args, rawCommand)
    local ped = PlayerPedId()
    SetEntityHealth(ped, 200)
    TriggerEvent('chat:addMessage', {
        args = {'Health'},
        msg = 'Du bist geheilt worden'
    })
end)

RegisterCommand('food', function(source, args, rawCommand)
    local ped = PlayerPedId()
    AddAttributeIncrement(ped, 'hunger', -100)
    TriggerEvent('chat:addMessage', {
        args = {'Food'},
        msg = 'Du hast gegessen'
    })
end)