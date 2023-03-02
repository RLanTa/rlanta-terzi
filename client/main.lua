QBCore = exports['qb-core']:GetCoreObject()


-- Functions

local function setupfabrikaBlip()
    fabrikaBlip = AddBlipForCoord(Config.Locations["fabrika"].coords.x, Config.Locations["fabrika"].coords.y, Config.Locations["fabrika"].coords.z)
    SetBlipSprite(fabrikaBlip, 208)
    SetBlipDisplay(fabrikaBlip, 4)
    SetBlipScale(fabrikaBlip, 0.7)
    SetBlipAsShortRange(fabrikaBlip, true)
    SetBlipColour(fabrikaBlip, 5)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Locations["fabrika"].label)
    EndTextCommandSetBlipName(fabrikaBlip)
end

local function setuptoptanciBlip()
    toptanciBlip = AddBlipForCoord(Config.Locations["toptanci"].coords.x, Config.Locations["toptanci"].coords.y, Config.Locations["toptanci"].coords.z)
    SetBlipSprite(toptanciBlip, 208)
    SetBlipDisplay(toptanciBlip, 4)
    SetBlipScale(toptanciBlip, 0.7)
    SetBlipAsShortRange(toptanciBlip, true)
    SetBlipColour(toptanciBlip, 5)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Locations["toptanci"].label)
    EndTextCommandSetBlipName(toptanciBlip)
end

local function SpawnPeds()
    for k,v in pairs(Config.Peds) do
		RequestModel(v.model)
		while not HasModelLoaded(v.model) do Citizen.Wait(1) end
		v.handle = CreatePed(4, v.model, v.coords.x, v.coords.y, v.coords.z-1.0, v.heading, false, false)
		GiveWeaponToPed(v.handle, v.weapon, 10, 1, 1)
		SetPedFleeAttributes(v.handle, 0, 0)
		SetPedDropsWeaponsWhenDead(v.handle, false)
		SetPedDiesWhenInjured(v.handle, false)
		SetEntityInvincible(v.handle , true)
		FreezeEntityPosition(v.handle, true)
		SetBlockingOfNonTemporaryEvents(v.handle, true)
		if v.anim.type == 1 then
			TaskStartScenarioInPlace(v.handle, v.anim.name, 0, true)
		elseif v.anim.type == 2 then
			RequestAnimDict(v.anim.dict)
			while not HasAnimDictLoaded(v.anim.dict) do Citizen.Wait(1) end
			TaskPlayAnim(v.handle, v.anim.dict, v.anim.name, 8.0, 1, -1, 49, 0, false, false, false)
		end
	end
end

-- Events

RegisterNetEvent("rlanta-terzi:makineA", function()
    exports["qb-menu"]:openMenu({
        {
            header = "Dikiş Makinesi (A Kalite)",
            txt = "Kalite dikim süresini etkiler",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Tişört Dik",
            txt = "2x Kumaş, 1x Düğme",
            params = {
                event = "rlanta-terzi:tişörtA",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Bere Dik",
            txt = "1x Kumaş, 1x İp",
            params = {
                event = "rlanta-terzi:bereA",
                args = {
                    number = 2,
                }
            }
        },
        {
            header = "Gömlek Dik",
            txt = "2x Kumaş, 2x Düğme",
            params = {
                event = "rlanta-terzi:gömlekA",
                args = {
                    number = 3,
                }
            }
        },
    })
end)

RegisterNetEvent("rlanta-terzi:makineB", function()
    exports["qb-menu"]:openMenu({
        {
            header = "Dikiş Makinesi (B Kalite)",
            txt = "Kalite dikim süresini etkiler",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Tişört Dik",
            txt = "2x Kumaş, 1x Düğme",
            params = {
                event = "rlanta-terzi:tişörtB",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Bere Dik",
            txt = "1x Kumaş, 1x İp",
            params = {
                event = "rlanta-terzi:bereB",
                args = {
                    number = 2,
                }
            }
        },
        {
            header = "Gömlek Dik",
            txt = "2x Kumaş, 2x Düğme",
            params = {
                event = "rlanta-terzi:gömlekB",
                args = {
                    number = 3,
                }
            }
        },
    })
end)

RegisterNetEvent("rlanta-terzi:makineC", function()
    exports["qb-menu"]:openMenu({
        {
            header = "Dikiş Makinesi (C Kalite)",
            txt = "Kalite dikim süresini etkiler",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Tişört Dik",
            txt = "2x Kumaş, 1x Düğme",
            params = {
                event = "rlanta-terzi:tişörtC",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Bere Dik",
            txt = "1x Kumaş, 1x İp",
            params = {
                event = "rlanta-terzi:bereC",
                args = {
                    number = 2,
                }
            }
        },
        {
            header = "Gömlek Dik",
            txt = "2x Kumaş, 2x Düğme",
            params = {
                event = "rlanta-terzi:gömlekC",
                args = {
                    number = 3,
                }
            }
        },
    })
end)

RegisterNetEvent("rlanta-terzi:buykumaş", function()
    TriggerServerEvent("rlanta-terzi:server:buykumaş")
end)

RegisterNetEvent("rlanta-terzi:buyip", function()
    TriggerServerEvent("rlanta-terzi:server:buyip")
end)

RegisterNetEvent("rlanta-terzi:buydüğme", function()
    TriggerServerEvent("rlanta-terzi:server:buydüğme")
end)

RegisterNetEvent("rlanta-terzi:jetona", function()
    TriggerServerEvent("rlanta-terzi:server:jetona")
end)

RegisterNetEvent("rlanta-terzi:jetonb", function()
    TriggerServerEvent("rlanta-terzi:server:jetonb")
end)

RegisterNetEvent("rlanta-terzi:jetonc", function()
    TriggerServerEvent("rlanta-terzi:server:jetonc")
end)

RegisterNetEvent("rlanta-terzi:satici", function()
    exports["qb-menu"]:openMenu({
        {
            header = "Dikim Toptancısı",
            txt = "",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Kumaş Satın Al",
            txt = "1x Kumaş $5",
            params = {
                event = "rlanta-terzi:buykumaş",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Düğme Satın Al",
            txt = "1x Düğme $2",
            params = {
                event = "rlanta-terzi:buydüğme",
                args = {
                    number = 2,
                }
            }
        },
        {
            header = "İp Satın Al",
            txt = "1x İp $3",
            params = {
                event = "rlanta-terzi:buyip",
                args = {
                    number = 3,
                }
            }
        },
    })
end)

RegisterNetEvent("rlanta-terzi:jeton", function()
    exports["qb-menu"]:openMenu({
        {
            header = "Terzi Lester",
            txt = "Buradan jeton alanarak dikiş makinelerini kullanabilirsiniz.",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Jeton (A) Satın Al",
            txt = "A Makine jetonu",
            params = {
                event = "rlanta-terzi:jetona",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Jeton (B) Satın Al",
            txt = "B Makine jetonu",
            params = {
                event = "rlanta-terzi:jetonb",
                args = {
                    number = 2,
                }
            }
        },
        {
            header = "Jeton (C) Satın Al",
            txt = "C Makine jetonu",
            params = {
                event = "rlanta-terzi:jetonc",
                args = {
                    number = 3,
                }
            }
        },
    })
end)

RegisterNetEvent("rlanta-terzi:tişörtA", function()
    local JetonA = Config.JetonA

    if QBCore.Functions.HasItem(JetonA) then
    QBCore.Functions.Progressbar("dikisyapA", "Dikim Yapılıyor...", math.random(1000,2000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:tişörtver")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (A) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:bereA", function()
    local JetonA = Config.JetonA

    if QBCore.Functions.HasItem(JetonA) then
    QBCore.Functions.Progressbar("dikisyapA", "Dikim Yapılıyor...", math.random(1000,2000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:berever")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (A) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:gömlekA", function()
    local JetonA = Config.JetonA

    if QBCore.Functions.HasItem(JetonA) then
    QBCore.Functions.Progressbar("dikisyapA", "Dikim Yapılıyor...", math.random(1000,2000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:gömlekver")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (A) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:tişörtB", function()
    local JetonB = Config.JetonB

    if QBCore.Functions.HasItem(JetonB) then
    QBCore.Functions.Progressbar("dikisyapB", "Dikim Yapılıyor...", math.random(5000,10000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:tişörtver")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (B) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:bereB", function()
    local JetonB = Config.JetonB

    if QBCore.Functions.HasItem(JetonB) then
    QBCore.Functions.Progressbar("dikisyapB", "Dikim Yapılıyor...", math.random(5000,10000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:berever")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (B) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:gömlekB", function()
    local JetonB = Config.JetonB

    if QBCore.Functions.HasItem(JetonB) then
    QBCore.Functions.Progressbar("dikisyapB", "Dikim Yapılıyor...", math.random(5000,10000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:gömlekver")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (B) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:tişörtC", function()
    local JetonC = Config.JetonC

    if QBCore.Functions.HasItem(JetonC) then
    QBCore.Functions.Progressbar("dikisyapC", "Dikim Yapılıyor...", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:tişörtver")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (C) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:bereC", function()
    local JetonC = Config.JetonC

    if QBCore.Functions.HasItem(JetonC) then
    QBCore.Functions.Progressbar("dikisyapC", "Dikim Yapılıyor...", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:berever")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (C) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:gömlekC", function()
    local JetonC = Config.JetonC

    if QBCore.Functions.HasItem(JetonC) then
    QBCore.Functions.Progressbar("dikisyapC", "Dikim Yapılıyor...", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("rlanta-terzi:gömlekver")
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
    end, function()
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("İşlem iptal edildi.", "error")
    end)
else
    QBCore.Functions.Notify("Bu makineyi Jeton (C) olmadan kullanamazsın.", "error")
end
end)

RegisterNetEvent("rlanta-terzi:tişörtver", function()
    TriggerServerEvent("rlanta-terzi:server:tişörtver")
end)

RegisterNetEvent("rlanta-terzi:berever", function()
    TriggerServerEvent("rlanta-terzi:server:berever")
end)

RegisterNetEvent("rlanta-terzi:gömlekver", function()
    TriggerServerEvent("rlanta-terzi:server:gömlekver")
end)

-- Base Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    setupfabrikaBlip()
    setuptoptanciBlip()
    SpawnPeds()
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        setupfabrikaBlip()
        setuptoptanciBlip()
        SpawnPeds()
    end
end)