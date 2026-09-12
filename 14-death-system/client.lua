-- Death System
-- Tod-Verwaltung

local isDead = false

TriggerEvent('chat:addSuggestion', '/revive', 'Belebe einen Spieler wieder (Serverseite noetig)')

RegisterCommand('revive', function(source, args, rawCommand)
    local ped = PlayerPedId()
    if IsEntityDead(ped) then
        local coords = GetEntityCoords(ped)
        NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, GetEntityHeading(ped), true, false)
        TriggerEvent('chat:addMessage', {
            args = {'Revive'},
            msg = 'Du wurdest wiederbelebt'
        })
    end
end)