-- Anti-Lag System
-- Reduziere Grafik-Last

TriggerEvent('chat:addSuggestion', '/antilag', 'Aktiviere/Deaktiviere Anti-Lag')

local antiLagEnabled = false

RegisterCommand('antilag', function(source, args, rawCommand)
    antiLagEnabled = not antiLagEnabled
    if antiLagEnabled then
        SetReducePeds(true)
        SetReduceVehicles(true)
        TriggerEvent('chat:addMessage', {
            args = {'AntiLag'},
            msg = 'Anti-Lag aktiviert'
        })
    else
        SetReducePeds(false)
        SetReduceVehicles(false)
        TriggerEvent('chat:addMessage', {
            args = {'AntiLag'},
            msg = 'Anti-Lag deaktiviert'
        })
    end
end)