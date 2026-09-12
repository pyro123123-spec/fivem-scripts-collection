-- Godmode Script
-- Schalte Godmode an/aus

local godmodeEnabled = false

TriggerEvent('chat:addSuggestion', '/godmode', 'Aktiviere/Deaktiviere Godmode')

RegisterCommand('godmode', function(source, args, rawCommand)
    godmodeEnabled = not godmodeEnabled
    local ped = PlayerPedId()
    
    if godmodeEnabled then
        SetEntityInvincible(ped, true)
        TriggerEvent('chat:addMessage', {
            args = {'Godmode'},
            msg = 'Godmode aktiviert'
        })
    else
        SetEntityInvincible(ped, false)
        TriggerEvent('chat:addMessage', {
            args = {'Godmode'},
            msg = 'Godmode deaktiviert'
        })
    end
end)

Tick(function()
    if godmodeEnabled then
        local ped = PlayerPedId()
        SetEntityInvincible(ped, true)
    end
end)