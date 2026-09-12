-- Custom Commands
-- Eigene Befehle definieren

local customCommands = {
    {
        name = 'dance',
        description = 'Tanzen',
        func = function()
            TriggerEvent('chat:addMessage', {
                args = {'Dance'},
                msg = 'Du tanzt!'
            })
        end
    },
    {
        name = 'sit',
        description = 'Sitzen',
        func = function()
            TriggerEvent('chat:addMessage', {
                args = {'Sit'},
                msg = 'Du sitzt!'
            })
        end
    }
}

for _, cmd in ipairs(customCommands) do
    RegisterCommand(cmd.name, function(source, args, rawCommand)
        cmd.func()
    end)
    TriggerEvent('chat:addSuggestion', '/' .. cmd.name, cmd.description)
end