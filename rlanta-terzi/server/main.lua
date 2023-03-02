local QBCore = exports['qb-core']:GetCoreObject()

-- Kumaş Satın Al

RegisterNetEvent('rlanta-terzi:server:buykumaş', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.KumasItem
    local nakit = Player.PlayerData.money['cash']
    local price = Config.KumasFiyat

if nakit >= price then
    Player.Functions.AddItem(item, 1)
    Player.Functions.RemoveMoney("cash", price)
else
    TriggerClientEvent('QBCore:Notify', src, "Yeterli nakitin bulunmuyor.", 'error')
end

end)


-- Düğme Satın Al

RegisterNetEvent('rlanta-terzi:server:buydüğme', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.DugmeItem
    local nakit = Player.PlayerData.money['cash']
    local price = Config.DugmeFiyat

if nakit >= price then
    Player.Functions.AddItem(item, 1)
    Player.Functions.RemoveMoney("cash", price)
else
    TriggerClientEvent('QBCore:Notify', src, "Yeterli nakitin bulunmuyor.", 'error')
end

end)


-- İp Satın Al

RegisterNetEvent('rlanta-terzi:server:buyip', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.IpItem
    local nakit = Player.PlayerData.money['cash']
    local price = Config.IpFiyat

if nakit >= price then
    Player.Functions.AddItem(item, 1)
    Player.Functions.RemoveMoney("cash", price)
else
    TriggerClientEvent('QBCore:Notify', src, "Yeterli nakitin bulunmuyor.", 'error')
end
end)

-- Tisort Dikim

RegisterNetEvent('rlanta-terzi:server:tişörtver', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.TisortItem
    local Item1 = Player.Functions.GetItemByName(Config.KumasItem)
    local Item2 =  Player.Functions.GetItemByName(Config.DugmeItem)

    if Item1 == nil then
        TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
    else
        if Item2 == nil then
            TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
        else
            if Item1.amount >= 2 and Item2.amount >= 1 then
                Player.Functions.AddItem(item, 1)
                Player.Functions.RemoveItem(Config.KumasItem, 2)
                Player.Functions.RemoveItem(Config.DugmeItem, 1)
    else
        TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
    end
end
end
end)

-- Bere Dikim

RegisterNetEvent('rlanta-terzi:server:berever', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.BereItem
    local Item1 = Player.Functions.GetItemByName(Config.KumasItem)
    local Item2 =  Player.Functions.GetItemByName(Config.IpItem)

    if Item1 == nil then
        TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
    else
        if Item2 == nil then
            TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
        else
            if Item1.amount >= 1 and Item2.amount >= 1 then
                Player.Functions.AddItem(item, 1)
                Player.Functions.RemoveItem(Config.KumasItem, 1)
                Player.Functions.RemoveItem(Config.IpItem, 1)
    else
        TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
    end
end
end
end)

-- Gomlek Dikim

RegisterNetEvent('rlanta-terzi:server:gömlekver', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.GomlekItem
    local Item1 = Player.Functions.GetItemByName(Config.KumasItem)
    local Item2 =  Player.Functions.GetItemByName(Config.DugmeItem)

    if Item1 == nil then
        TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
    else
        if Item2 == nil then
            TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
        else
            if Item1.amount >= 2 and Item2.amount >= 2 then
                Player.Functions.AddItem(item, 1)
                Player.Functions.RemoveItem(Config.KumasItem, 2)
                Player.Functions.RemoveItem(Config.DugmeItem, 2)
    else
        TriggerClientEvent('QBCore:Notify', src, "Yeterli malzeme bulunmuyor.", 'error')  
    end
end
end
end)

-- Jeton

RegisterNetEvent('rlanta-terzi:server:jetona', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.JetonA
    local nakit = Player.PlayerData.money['cash']
    local price = Config.JetonAFiyat

if nakit >= price then
    Player.Functions.AddItem(item, 1)
    Player.Functions.RemoveMoney("cash", price)
else
    TriggerClientEvent('QBCore:Notify', src, "Yeterli nakitin bulunmuyor.", 'error')
end
end)

RegisterNetEvent('rlanta-terzi:server:jetonb', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.JetonB
    local nakit = Player.PlayerData.money['cash']
    local price = Config.JetonBFiyat

if nakit >= price then
    Player.Functions.AddItem(item, 1)
    Player.Functions.RemoveMoney("cash", price)
else
    TriggerClientEvent('QBCore:Notify', src, "Yeterli nakitin bulunmuyor.", 'error')
end
end)

RegisterNetEvent('rlanta-terzi:server:jetonc', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.JetonC
    local nakit = Player.PlayerData.money['cash']
    local price = Config.JetonCFiyat

if nakit >= price then
    Player.Functions.AddItem(item, 1)
    Player.Functions.RemoveMoney("cash", price)
else
    TriggerClientEvent('QBCore:Notify', src, "Yeterli nakitin bulunmuyor.", 'error')
end
end)