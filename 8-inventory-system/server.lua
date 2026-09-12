-- Inventory System
-- Einfaches Inventar-System

local playerInventory = {}

local function addItem(playerId, itemName, amount)
    if not playerInventory[playerId] then
        playerInventory[playerId] = {}
    end
    
    if not playerInventory[playerId][itemName] then
        playerInventory[playerId][itemName] = 0
    end
    
    playerInventory[playerId][itemName] = playerInventory[playerId][itemName] + amount
end

local function getItem(playerId, itemName)
    if not playerInventory[playerId] then
        return 0
    end
    return playerInventory[playerId][itemName] or 0
end

RegisterCommand('additem', function(source, args, rawCommand)
    if #args < 2 then return end
    local itemName = args[1]
    local amount = tonumber(args[2])
    addItem(source, itemName, amount)
    TriggerClientEvent('chat:addMessage', source, {
        args = {'Inventory'},
        msg = amount .. 'x ' .. itemName .. ' hinzugefuegt'
    })
end)