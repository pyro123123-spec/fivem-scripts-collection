-- Admin Panel
-- Einfaches Admin-Panel

local adminMenu = false

RegisterCommand('admin', function(source, args, rawCommand)
    adminMenu = not adminMenu
    if adminMenu then
        TriggerEvent('chat:addMessage', {
            args = {'Admin'},
            msg = 'Admin Panel geoeffnet - /help fuer Befehle'
        })
    end
end)

RegisterCommand('help', function(source, args, rawCommand)
    TriggerEvent('chat:addMessage', {
        args = {'Help'},
        msg = '/playerinfo | /tp [x] [y] [z] | /car [model] | /godmode | /heal | /giveweapon [model]'
    })
end)