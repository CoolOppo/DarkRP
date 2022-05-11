DarkRP.createAmmoType("pistol", {
    name = "Pistol Ammo",
    model = "models/Items/BoxSRounds.mdl",
    price = 80,
    amountGiven = 48
})

DarkRP.createAmmoType("pistol", {
    name = "Pistol Ammo x3",
    model = "models/Items/BoxSRounds.mdl",
    price = 250,
    amountGiven = 144
})

DarkRP.createAmmoType("buckshot", {
    name = "Buckshot",
    model = "models/Items/BoxBuckshot.mdl",
    price = 800,
    amountGiven = 8
})


DarkRP.createAmmoType("ar2", {
    name = "Assault Ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 300,
    amountGiven = 30
})

DarkRP.createAmmoType("ar2", {
    name = "Assault Ammo x3",
    model = "models/Items/BoxMRounds.mdl",
    price = 900,
    amountGiven = 90
})

DarkRP.createAmmoType("smg1", {
    name = "SMG Ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 300,
    amountGiven = 30
})

DarkRP.createAmmoType("smg1", {
    name = "SMG Ammo x3",
    model = "models/Items/BoxMRounds.mdl",
    price = 900,
    amountGiven = 90
})

DarkRP.createAmmoType("SniperPenetratedRound", {
    name = "Sniper Ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 300,
    amountGiven = 10
})

DarkRP.createCategory{
    name = "Other",
    categorises = "ammo",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
