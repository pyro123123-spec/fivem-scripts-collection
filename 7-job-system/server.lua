-- Job System
-- Verwaltung von Spieler-Jobs

local playerJobs = {}

RegisterCommand('setjob', function(source, args, rawCommand)
    if #args < 2 then
        TriggerClientEvent('chat:addMessage', source, {
            args = {'Job'},
            msg = 'Verwendung: /setjob [player_id] [job_name]'
        })
        return
    end
    
    local targetId = tonumber(args[1])
    local jobName = args[2]
    
    playerJobs[targetId] = jobName
    TriggerClientEvent('chat:addMessage', targetId, {
        args = {'Job'},
        msg = 'Dein neuer Job: ' .. jobName
    })
end)

RegisterCommand('getjob', function(source, args, rawCommand)
    local job = playerJobs[source] or 'Arbeitslos'
    TriggerClientEvent('chat:addMessage', source, {
        args = {'Job'},
        msg = 'Dein Job: ' .. job
    })
end)