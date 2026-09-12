-- NPC Spawn Script
-- Spawne NPCs

TriggerEvent('chat:addSuggestion', '/npc', 'Spawne einen NPC (npc modelname)')

RegisterCommand('npc', function(source, args, rawCommand)
    if #args < 1 then
        TriggerEvent('chat:addMessage', {
            args = {'NPC'},
            msg = 'Verwendung: /npc [model]'
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
    local npc = CreatePed(4, GetHashKey(model), coords.x + 2, coords.y, coords.z, 0.0, true, false)
    
    TriggerEvent('chat:addMessage', {
        args = {'NPC'},
        msg = 'NPC ' .. model .. ' gespawnt'
    })
end)