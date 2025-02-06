// MOB SPAWNERS

///Syndicate Listening Post

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate
	name = "Syndicate Bioweapon Scientist"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	prompt_name = "a syndicate science technician"
	you_are_text = "You are a syndicate science technician, employed in a top secret research facility developing biological weapons."
	flavour_text = "Unfortunately, your hated enemy, Nanotrasen, has begun mining in this sector. Continue your research as best you can, and try to keep a low profile."
	important_text = "The base is rigged with explosives, DO NOT abandon it or let it fall into enemy hands! While you can take the shuttle in the hangar to visit other active Syndicate outposts, you must stay within those outposts or the ship while in orbit. Do not attempt to explore space."
	outfit = /datum/outfit/lavaland_syndicate
	spawner_job_path = /datum/job/lavaland_syndicate

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/special(mob/living/new_spawn)
	. = ..()
	new_spawn.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/commander
	name = "Syndicate Commander"
	prompt_name = "a syndicate comms agent"
	you_are_text = "You are the commander of the Syndicate's outpost on Lavaland, developing biological and chemical weapons."
	flavour_text = "Unfortunately, your hated enemy, Nanotrasen, has begun mining in this sector. Monitor enemy activity as best you can, and try to keep a low profile. Use the communication equipment to provide support to any field agents, and sow disinformation to throw Nanotrasen off your trail. Do not let the base fall into enemy hands!"
	important_text = "DO NOT abandon the base or attempt to interfere with Nanotrasen mining operations. While you are allowed to visit other syndicate outposts, don't spend too long in orbit. Be warned: the base is rigged with explosives."
	outfit = /datum/outfit/lavaland_syndicate/commander

/datum/outfit/lavaland_syndicate
	name = "Lavaland Syndicate Agent"
	id = /obj/item/card/id/advanced/chameleon
	id_trim = /datum/id_trim/chameleon/operative
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/toggle/labcoat/interdyne
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/syndicate/alt
	shoes = /obj/item/clothing/shoes/combat
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	r_hand = /obj/item/gun/ballistic/rifle/sniper_rifle
	box = /obj/item/storage/box/survival/syndie

	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/lavaland_syndicate/post_equip(mob/living/carbon/human/syndicate, visualsOnly = FALSE)
	syndicate.faction |= ROLE_SYNDICATE

/datum/outfit/lavaland_syndicate/commander
	name = "Lavaland Syndicate Commander"
	mask = /obj/item/clothing/mask/chameleon/gps


// AREAS

/area/ruin/syndicate_lava_base
	name = "\improper Secret Base"
	ambience_index = AMBIENCE_DANGER
	ambient_buzz = 'sound/ambience/magma.ogg'


/area/ruin/syndicate_lava_base/engineering
	name = "Syndicate Lavaland Engineering"

/area/ruin/syndicate_lava_base/medbay
	name = "Syndicate Lavaland Medbay"

/area/ruin/syndicate_lava_base/arrivals
	name = "Syndicate Lavaland Arrivals"

/area/ruin/syndicate_lava_base/bar
	name = "\improper Syndicate Lavaland Bar"

/area/ruin/syndicate_lava_base/main
	name = "\improper Syndicate Lavaland Primary Hallway"

/area/ruin/syndicate_lava_base/shuttle_bay
	name = "Syndicate Lavaland Hangar"

/area/ruin/syndicate_lava_base/cargo
	name = "\improper Syndicate Lavaland Cargo Bay"

/area/ruin/syndicate_lava_base/chemistry
	name = "Syndicate Lavaland Chemistry"

/area/ruin/syndicate_lava_base/virology
	name = "Syndicate Lavaland Virology"

/area/ruin/syndicate_lava_base/testlab
	name = "\improper Syndicate Lavaland Experimentation Lab"

/area/ruin/syndicate_lava_base/dormitories
	name = "\improper Syndicate Lavaland Dormitories"

/area/ruin/syndicate_lava_base/telecomms
	name = "\improper Syndicate Lavaland Telecommunications"

/obj/item/clothing/mask/chameleon/gps
	desc = "A modified version of the standard chameleon gas mask, integrated with a medical and coordinate tracker linked directly to Syndicate Command. Unfortunately, this also means that it produces a very obvious GPS signal."

/obj/item/clothing/mask/chameleon/gps/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/gps, "Encrypted Signal")

