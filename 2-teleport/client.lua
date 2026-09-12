-- Teleport Script
-- Teleportiere dich zu Koordinaten

TriggerEvent('chat:addSuggestion', '/tp', 'Teleportiere dich zu Koordinaten (x y z)')

RegisterCommand('tp', function(source, args, rawCommand)
    if #args < 3 then
        TriggerEvent('chat:addMessage', {
            args = {'Teleport'},
            msg = 'Verwendung: /tp [x] [y] [z]'
        })
        return
    end
    
    local x = tonumber(args[1])
    local y = tonumber(args[2])
    local z = tonumber(args[3])
    
    local ped = PlayerPedId()
    SetEntityCoords(ped, x, y, z + 1, false, false, false, false)
    
    TriggerEvent('chat:addMessage', {
        args = {'Teleport'},
        msg = 'Teleportiert zu ' .. x .. ', ' .. y .. ', ' .. z
    })
end)