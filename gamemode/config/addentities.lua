-- Rifles
DarkRP.createShipment("AK-47", {
    entity = "tfa_csgo_ak47",
    model = "models/weapons/tfa_csgo/w_ak47.mdl",
    amount = 5,
    price = 3000,
    pricesep = 500,
    noship = false,
    separate = true,
    category = "Rifles",
    allowed = {
        TEAM_GUN
    },
})

DarkRP.createShipment("Galil", {
    entity = "tfa_csgo_galil",
    model = "models/weapons/tfa_csgo/w_galil.mdl",
    amount = 5,
    price = 2200,
    pricesep = 350,
    noship = false,
    separate = true,
    category = "Rifles",
    allowed = {
        TEAM_GUN
    },
})

DarkRP.createShipment("M4A4", {
    entity = "tfa_csgo_m4a4",
    model = "models/weapons/tfa_csgo/w_m4a4.mdl",
    amount = 5,
    price = 3000,
    pricesep = 475,
    noship = false,
    separate = true,
    category = "Rifles",
    allowed = {
        TEAM_GUN
    },
})

DarkRP.createShipment("M4A1-S", {
    entity = "tfa_csgo_m4a1",
    model = "models/weapons/tfa_csgo/w_m4a1.mdl",
    amount = 5,
    price = 3500,
    pricesep = 550,
    noship = false,
    separate = true,
    category = "Rifles",
    allowed = {
        TEAM_GUN
    },
})

-- Snipers


DarkRP.createShipment("SSG 08", {
    entity = "tfa_csgo_ssg08",
    model = "models/weapons/tfa_csgo/w_scout.mdl",
    amount = 5,
    price = 2200,
    pricesep = 400,
    noship = false,
    separate = true,
    category = "Snipers",
    allowed = {
        TEAM_GUN
    },
})

-- SMG

DarkRP.createShipment("MP5-SD", {
    entity = "tfa_csgo_mp5sd",
    model = "models/weapons/tfa_csgo/w_smg_mp5sd.mdl",
    amount = 5,
    price = 4000,
    pricesep = 600,
    noship = false,
    separate = true,
    category = "SMGs",
    allowed = {
        TEAM_GUN
    },
})

DarkRP.createShipment("MAC10", {
    entity = "tfa_csgo_mac10",
    model = "models/weapons/tfa_csgo/w_mac10.mdl",
    amount = 4,
    price = 1800,
    pricesep = 300,
    noship = false,
    separate = true,
    category = "SMGs",
    allowed = {
        TEAM_GUN
    },
})

-- Pistol 
DarkRP.createShipment("Akimbo Beretta M9's", {
    entity = "tfa_csgo_elite",
    model = "models/weapons/tfa_csgo/w_elite.mdl",
    amount = 5,
    price = 1800,
    pricesep = 250,
    noship = false,
    separate = true,
    category = "Pistols",
    allowed = {
        TEAM_GUN
    },
})

DarkRP.createShipment("CZ75-Auto", {
    entity = "tfa_csgo_cz75",
    model = "models/weapons/tfa_csgo/w_cz75.mdl",
    amount = 3,
    price = 1800,
    pricesep = 275,
    noship = false,
    separate = true,
    category = "Pistols",
    allowed = {
        TEAM_GUN
    },
})

DarkRP.createShipment("P250", {
    entity = "tfa_csgo_p250",
    model = "models/weapons/tfa_csgo/w_p250.mdl",
    amount = 5,
    price = 1500,
    pricesep = 200,
    noship = false,
    separate = true,
    category = "Pistols",
    allowed = {
        TEAM_GUN
    },
})

-- Shotguns
DarkRP.createShipment("Nova", {
    entity = "tfa_csgo_nova",
    model = "models/weapons/tfa_csgo/w_nova.mdl",
    amount = 5,
    price = 3500,
    pricesep = 700,
    noship = false,
    separate = true,
    category = "Shotguns",
    allowed = {
        TEAM_GUN
    },
})

DarkRP.createShipment("Sawed-Off", {
    entity = "tfa_csgo_sawedoff",
    model = "models/weapons/tfa_csgo/w_nova.mdl",
    amount = 5,
    price = 2000,
    pricesep = 400,
    noship = false,
    separate = true,
    category = "Shotguns",
    allowed = {
        TEAM_GUN
    },
})

-- Heavy
DarkRP.createShipment("M249", {
    entity = "tfa_csgo_m249",
    model = "models/weapons/tfa_csgo/w_m249.mdl",
    amount = 3,
    price = 25000,
    pricesep = 10000,
    noship = false,
    separate = true,
    category = "Heavy",
    allowed = {
        TEAM_GUN
    },
})

-- tfa_csgo_m249

-- Explosive

DarkRP.createShipment("C4", {
    entity = "tfa_csgo_c4",
    model = "models/weapons/tfa_csgo/w_c4_pl.mdl",
    amount = 1,
    price = 100000,
    pricesep = 100000,
    noship = true,
    separate = true,
    category = "Other",
    allowed = {
        TEAM_MOB
    },
})

-- Healing

DarkRP.createShipment("Medi-Shot", {
    entity = "tfa_csgo_medishot",
    model = "models/weapons/tfa_csgo/w_eq_healthshot.mdl",
    amount = 5,
    price = 4500,
    pricesep = 1000,
    noship = false,
    separate = true,
    category = "Other",
    allowed = {
        TEAM_MEDIC
    },
})

-- Other

DarkRP.createEntity("Money printer", {
    ent = "money_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 1000,
    max = 10,
    cmd = "buymoneyprinter"
})

DarkRP.createEntity("Tip Jar", {
    ent = "darkrp_tip_jar",
    model = "models/props_lab/jar01a.mdl",
    price = 0,
    max = 2,
    cmd = "tipjar",
    allowTools = true,
})

DarkRP.createEntity("Gun lab", {
    ent = "gunlab",
    model = "models/props_c17/TrapPropeller_Engine.mdl",
    price = 500,
    max = 1,
    cmd = "buygunlab",
    allowed = TEAM_GUN
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    DarkRP.createEntity("Microwave", {
        ent = "microwave",
        model = "models/props/cs_office/microwave.mdl",
        price = 400,
        max = 1,
        cmd = "buymicrowave",
        allowed = TEAM_COOK
    })
end

DarkRP.createCategory{
    name = "Other",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Rifles",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "SMGs",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Shotguns",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 102,
}

DarkRP.createCategory{
    name = "Snipers",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 103,
}

DarkRP.createCategory{
    name = "Heavy",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 104,
}

DarkRP.createCategory{
    name = "Pistols",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 99,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "weapons",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "vehicles",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
