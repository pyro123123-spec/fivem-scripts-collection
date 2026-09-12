-- Player Info Script
-- Zeigt Spieler-Informationen an

TriggerEvent('chat:addSuggestion', '/playerinfo', 'Zeigt deine Spieler-Informationen an')

RegisterCommand('playerinfo', function(source, args, rawCommand)
    local player = PlayerId()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    
    TriggerEvent('chat:addMessage', {
        args = {'Player Info'},
        msg = 'ID: ' .. player .. ' | X: ' .. math.floor(coords.x) .. ' | Y: ' .. math.floor(coords.y) .. ' | Z: ' .. math.floor(coords.z)
    })
end)