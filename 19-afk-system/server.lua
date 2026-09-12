-- AFK System
-- Erkennung von AFK-Spielern

local afkPlayers = {}
local AFK_TIME = 300000 -- 5 Minuten

RegisterCommand('afkcheck', function(source, args, rawCommand)
    for playerId, lastActivity in pairs(afkPlayers) do
        local afkTime = GetGameTimer() - lastActivity
        if afkTime > AFK_TIME then
            TriggerClientEvent('chat:addMessage', source, {
                args = {'AFK'},
                msg = 'Spieler ' .. playerId .. ' ist AFK seit ' .. math.floor(afkTime/1000) .. 's'
            })
        end
    end
end)

AddEventHandler('playerConnecting', function()
    afkPlayers[source] = GetGameTimer()
end)