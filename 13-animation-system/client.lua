-- Animation System
-- Animations abspielen

TriggerEvent('chat:addSuggestion', '/anim', 'Spiele eine Animation ab')

RegisterCommand('anim', function(source, args, rawCommand)
    if #args < 2 then
        TriggerEvent('chat:addMessage', {
            args = {'Animation'},
            msg = 'Verwendung: /anim [dict] [name]'
        })
        return
    end
    
    local dict = args[1]
    local name = args[2]
    
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(100)
    end
    
    local ped = PlayerPedId()
    TaskPlayAnim(ped, dict, name, 8.0, -8.0, -1, 0, 0, false, false, false)
    
    TriggerEvent('chat:addMessage', {
        args = {'Animation'},
        msg = 'Animation ' .. name .. ' abgespielt'
    })
end)