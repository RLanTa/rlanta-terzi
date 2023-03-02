Config = {}

Config.Locations = {
    ["fabrika"] = {
        label = "Dikim Fabrikası",
        coords = vector3(715.96, -961.57, 30.72),
    },
    ["toptanci"] = {
        label = "Dikim Toptancısı",
        coords = vector3(2488.65, 4961.41, 44.8),
    },
}

Config.Peds = {

	[1] = { handle = nil, model ="a_m_m_farmer_01", coords = vector3(2488.65, 4961.41, 44.8), heading = 130.0, text = "Kumaşçı Jhones", weapon = "WEAPON_UNARMED", anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- scene
	[2] = { handle = nil, model ="cs_lestercrest", coords = vector3(718.91, -964.68, 30.4), heading = 130.0, text = "Terzi Lester", weapon = "WEAPON_UNARMED", anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- armored npc
	-- [3] = { handle = nil, model ="a_m_m_hillbilly_01", coords = vector3(556.12, 2726.2, 42.08), heading = 97.12, text = "Richard Murphy", weapon = "WEAPON_UNARMED", anim = { type = 2, dict = "mini@repair", name = "fixing_a_ped"} }, -- anim
	
}

Config.KumasItem = "kumas"
Config.IpItem = "ip"
Config.DugmeItem = "dugme"

Config.KumasFiyat = 3
Config.IpFiyat = 2
Config.DugmeFiyat = 1

Config.TisortItem = "tisort"
Config.BereItem = "bere"
Config.GomlekItem = "gomlek"

Config.JetonA = "jetona"
Config.JetonB = "jetonb"
Config.JetonC = "jetonc"

Config.JetonAFiyat = 1000
Config.JetonBFiyat = 500
Config.JetonCFiyat = 200