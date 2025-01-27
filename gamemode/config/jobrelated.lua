-- People often copy jobs. When they do, the GM table does not exist anymore.
-- This line makes the job code work both inside and outside of gamemode files.
-- You should not copy this line into your code.
local GAMEMODE = GAMEMODE or GM

--[[--------------------------------------------------------
Default teams. Please do not edit this file. Please use the darkrpmod addon instead.
--------------------------------------------------------]]
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {"models/echo/raptor/ark_raptor_new.mdl", "models/echo/ark/argentavis_pm.mdl", "models/player/soigebib.mdl", "models/models/monogarovka/egorka.mdl", "models/player/fortnite/characters/ninja/ninja_pm.mdl", "models/fort/nite/jonesy.mdl", "models/ianmata1998/cryoffear/simon_chair.mdl", "models/boyohboy/umokay/umokay.mdl", "models/player/jermrat/jermrat.mdl", "models/player/funnyrat/rat.mdl", "models/eradium/rexouium.mdl"},
    description = [[ ]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_HITMAN = DarkRP.createJob("Hitman", {
    color = Color(25, 25, 25, 255),
    model = "models/player/smith.mdl",
    description = [[Kill them for money.
        They don't matter.]],
    weapons = {"lockpick", "unarrest_stick", "bkeypads_cracker", "tfa_csgo_ssg08"},
    command = "hitman",
    max = 2,
    salary = GAMEMODE.Config.normalsalary * 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
    ammo = {
        ["sniperround"] = 30,
    },
})

TEAM_TERRORIST = DarkRP.createJob("Terrorist", {
    color = Color(25, 25, 25, 255),
    model = {"models/dannio/noahg/willsmith_belair.mdl","models/eradium/rexouium.mdl"},
    description = [[They need to all be killed.
    YOU ONLY GET ONE SHOT AND THEN YOU'RE DEMOTED]],
    weapons = {"weapon_jihadbomb"},
    command = "terrorist",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan(TEAM_TERRORIST)
        ply:Freeze(true)

        timer.Simple(30, function()
            ply:Freeze(false)
        end)

        ply:changeTeam(GAMEMODE.DefaultTeam, true)
    end,
})

TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {"models/player/chimp/chimp.mdl", "models/player/nosaczt37/nosacz.mdl"},
    description = [[The lowest person of crime.
        A gangster generally works for the Mobboss who runs the crime family.
        The Mob boss sets your agenda and you follow it or you might be punished.]],
    weapons = {"lockpick", "bkeypads_cracker", "tfa_iw7_tactical_knife"},
    command = "gangster",
    max = 10,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_MOB = DarkRP.createJob("Mob boss", {
    color = Color(25, 25, 25, 255),
    model = "models/sonicthemovie/characters/doctorrobotnikpm.mdl",
    description = [[The Mob boss is the boss of the criminals in the city.
        With his power he coordinates the gangsters and forms an efficient crime organization.
        He has the ability to break into houses by using a lockpick.
        The Mob boss posesses the ability to unarrest you.]],
    weapons = {"lockpick", "unarrest_stick", "bkeypads_cracker", "tfa_iw7_tactical_knife", "tfa_csgo_tec9"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 3,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
    ammo = {
        ["pistol"] = 60,
    },
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = {"models/patrickbateman/playermodels/patrickbateman.mdl", "models/kuma96/joshuagraham/joshuagraham_pm.mdl"},
    description = [[A Gun Dealer is the only person who can sell guns to other people.
        IT IS AGAINST THE RULES TO SELF SUPPLY WITHOUT IT SPECIFICALLY BEING TO DEFEND YOUR BUSINESS.
        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "gundealer",
    max = 4,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),
    model = "models/player/kleiner.mdl",
    description = [[With your medical knowledge you work to restore players to full health.
        Without a medic, people cannot be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
    weapons = {"med_kit"},
    command = "medic",
    max = 5,
    salary = GAMEMODE.Config.normalsalary * 3,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

TEAM_POLICE = DarkRP.createJob("Police Officer", {
    color = Color(25, 25, 170, 255),
    model = {"models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl", "models/gonzo/monkcop/monkcop.mdl"},
    description = [[It's your job to enforce the law. If you are caught breaking the law, you may be banned from the job.
        You have the power to arrest criminals and protect innocents.
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "robotnik_mw2_usp", "stunstick", "lockpick", "bkeypads_cracker", "zwf_sniffer", "vs_policemod_gps", "vs_policemod_radio", "vs_policemod_tablet"},
    command = "cp",
    max = 10,
    salary = GAMEMODE.Config.normalsalary * 4,
    admin = 0,
    vote = false,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Police",
})

TEAM_CHIEF = DarkRP.createJob("Police Chief", {
    color = Color(20, 20, 255, 255),
    model = {"models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl", "models/player/falloutnewvegas/ncr/ncr_ranger_playermodel.mdl", "models/ninja/jc_denton.mdl", "models/player/neckbeard.mdl"},
    description = [[The Chief is the leader of the Police unit.
        Coordinate the police force to enforce law in the city.
        Use /agenda to set the agenda for law enforcement.
        Use your tablet to control the police dispatch.]],
    weapons = {"arrest_stick", "unarrest_stick", "robotnik_mw2_g18", "tfa_csgo_aug", "stunstick", "lockpick", "bkeypads_cracker", "zwf_sniffer", "tfa_csgo_flash", "tfa_csgo_smoke", "tfa_csgo_frag", "tfa_csgo_item_defuser", "vs_policemod_gps", "vs_policemod_radio", "vs_policemod_tablet"},
    command = "chief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 6,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
    NeedToChangeFrom = TEAM_POLICE,
    ammo = {
        ["pistol"] = 60,
        ["ar2"] = 300,
    },
    category = "Police",
})

TEAM_MAYOR = DarkRP.createJob("President Joe Biden", {
    color = Color(150, 20, 20, 255),
    model = "models/dannio/pm/joebiden.mdl",
    description = [[Sign executive orders with /addlaw
    You may create and accept warrants.
    Type /wanted <name> to warrant a player.
    Type /lockdown initiate a lockdown of the city.
    Everyone must be inside during a lockdown.
    The cops patrol the area.
    /unlockdown to end a lockdown]],
    weapons = {"unarrest_stick", "tfa_iw7_tactical_knife", "wowozela", "vs_policemod_gps", "vs_policemod_radio", "vs_policemod_tablet"},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 8,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Police",
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(80, 45, 0, 255),
    model = "models/headphones1999/h1999/h1999_gmod.mdl",
    description = [[The lowest member of society. Everybody laughs at you.
        You have no home.
        You collect more money than the citizens through welfare.
        Beg for your food and money
        Sing for everyone who passes to get money
        Make your own wooden home somewhere in a corner or outside someone else's door]],
    weapons = {"weapon_bugbait"},
    command = "hobo",
    max = 5,
    salary = GAMEMODE.Config.normalsalary * 0.1,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Citizens",
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("Cook", {
        color = Color(238, 99, 99, 255),
        model = "models/player/mossman.mdl",
        description = [[As a cook, it is your responsibility to feed the other members of your city.
            You can spawn a microwave and sell the food you make:
            /buymicrowave]],
        weapons = {},
        command = "cook",
        max = 2,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true
    })
end

-- Compatibility for when default teams are disabled
TEAM_CITIZEN = TEAM_CITIZEN or -1
TEAM_POLICE = TEAM_POLICE or -1
TEAM_GANG = TEAM_GANG or -1
TEAM_MOB = TEAM_MOB or -1
TEAM_GUN = TEAM_GUN or -1
TEAM_MEDIC = TEAM_MEDIC or -1
TEAM_CHIEF = TEAM_CHIEF or -1
TEAM_MAYOR = TEAM_MAYOR or -1
TEAM_HOBO = TEAM_HOBO or -1
TEAM_COOK = TEAM_COOK or -1
TEAM_TERRORIST = TEAM_TERRORIST or -1
TEAM_HITMAN = TEAM_HITMAN or -1
-- Door groups
AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
AddDoorGroup("Gundealer only", TEAM_GUN)

-- Agendas
DarkRP.createAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})

DarkRP.createAgenda("Police agenda", {TEAM_MAYOR, TEAM_CHIEF}, {TEAM_POLICE})

-- Group chats
DarkRP.createGroupChat(function(ply) return ply:isCP() end)
DarkRP.createGroupChat(TEAM_MOB, TEAM_GANG)
DarkRP.createGroupChat(function(listener, ply) return not ply or ply:Team() == listener:Team() end)
-- Initial team when first spawning
GAMEMODE.DefaultTeam = TEAM_CITIZEN

-- Teams that belong to Police
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}

-- Hitman team
DarkRP.addHitmanTeam(TEAM_HITMAN)

-- Demote groups
DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})

DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_MOB})

-- Default categories
DarkRP.createCategory{
    name = "Citizens",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Police",
    categorises = "jobs",
    startExpanded = true,
    color = Color(25, 25, 170, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Criminals",
    categorises = "jobs",
    startExpanded = true,
    color = Color(75, 75, 75, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 102,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
