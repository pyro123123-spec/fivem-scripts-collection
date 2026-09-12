-- Weapon System
-- Waffen-Verwaltung

TriggerEvent('chat:addSuggestion', '/giveweapon', 'Gib dir eine Waffe (giveweapon model)')
TriggerEvent('chat:addSuggestion', '/removeweapon', 'Entferne eine Waffe')

RegisterCommand('giveweapon', function(source, args, rawCommand)
    if #args < 1 then
        TriggerEvent('chat:addMessage', {
            args = {'Weapon'},
            msg = 'Verwendung: /giveweapon [weapon_model]'
        })
        return
    end
    
    local ped = PlayerPedId()
    local weaponHash = GetHashKey(args[1])
    GiveWeaponToPed(ped, weaponHash, 250, false, true)
    
    TriggerEvent('chat:addMessage', {
        args = {'Weapon'},
        msg = 'Waffe ' .. args[1] .. ' erhalten'
    })
end)

RegisterCommand('removeweapon', function(source, args, rawCommand)
    local ped = PlayerPedId()
    RemoveAllPedWeapons(ped, true)
    TriggerEvent('chat:addMessage', {
        args = {'Weapon'},
        msg = 'Alle Waffen entfernt'
    })
end)