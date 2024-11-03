//syndicate derelict dreadnought

//a cruiser of similar uses to the Starfury, basically a forgotten ship mk2

//only people left onboard are the Captain and a small crew, who are meant to try and re-secure the ship. this is impeded by a bunch of malfunctioning repair drones, major hull damage, and only one proper spacesuit
//explorers may decide to interfere either for better or worse

/obj/effect/mob_spawn/ghost_role/human/syndicate/dreadnought
	name = "syndicate stasis sleeper"
	desc = "A rugged stasis sleeper used by the Syndicate to protect against almost all hazards for long times."
	you_are_text = "You are a crew member aboard the Gorlex Marauders dreadnought 'Defiant'."
	flavour_text = "You vaguely recall fleeing into stasis as your ship was bombarded by fire from a Nanotrasen cruiser. With Nanotrasen presence in the system declining, it's time to pick up the pieces. Listen to your ship's Captain; for they will have a plan."
	important_text = "DO NOT approach Nanotrasen territory, lest you doom your entire ship! Follow orders from the Captain."
	spawner_job_path = /datum/job/lavaland_syndicate/space
	outfit = /datum/outfit/syndicate_empty/dreadnought

/obj/effect/mob_spawn/ghost_role/human/syndicate/dreadnought/special(mob/living/new_spawn)
	. = ..()
	new_spawn.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

/datum/outfit/syndicate_empty/dreadnought
	name = "Syndicate Dreadnought Crew Member"
	uniform = /obj/item/clothing/under/syndicate/camo
	r_pocket = /obj/item/tank/internals/emergency_oxygen/double
	mask = /obj/item/clothing/mask/gas/syndicate
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	box = /obj/item/storage/box/survival/syndie

/obj/effect/mob_spawn/ghost_role/human/syndicate/dreadnought/surgeon
	you_are_text = "You are the ship's surgeon of the Gorlex Marauders dreadnought 'Defiant'."
	flavour_text = "You volunteered to stay behind along with the Captain to rebuild the ship and help the crew when the coast was clear; and now, that time has arrived."
	important_text = "Keep the crew alive and well, follow the Captain's orders, and do not abandon ship!"
	outfit = /datum/outfit/syndicate_empty/dreadnought/surgeon

/datum/outfit/syndicate_empty/dreadnought/surgeon
	name = "Syndicate Dreadnought Surgeon"
	uniform = /obj/item/clothing/under/syndicate/scrubs
	suit = /obj/item/clothing/suit/toggle/labcoat/interdyne
	backpack_contents = list(
		/obj/item/storage/medkit/surgery = 1,
	)

/obj/effect/mob_spawn/ghost_role/human/syndicate/dreadnought/guard
	you_are_text = "You are the security guard of the Gorlex Marauders dreadnought 'Defiant'."
	flavour_text = "You were ordered to stay behind to enforce the Captain's rule when it was time to rebuild, and stay behind you did. Protect the ship and its crew, and enforce the Captain's will!"
	important_text = "Enforce the Captain's orders, and do not abandon ship!"
	outfit = /datum/outfit/syndicate_empty/dreadnought/guard

/datum/outfit/syndicate_empty/dreadnought/guard
	name = "Syndicate Dreadnought Guard"
	suit = /obj/item/clothing/suit/armor/vest
	suit_store = /obj/item/gun/ballistic/shotgun/riot/sol/evil
	backpack_contents = list(
		/obj/item/storage/box/lethalshot = 1,
		/obj/item/storage/box/rubbershot = 2,
	)
	mask = /obj/item/clothing/mask/gas
	head = /obj/item/clothing/head/helmet/swat

/obj/effect/mob_spawn/ghost_role/human/syndicate/dreadnought/engineer
	you_are_text = "You are an engineer onboard the Gorlex Marauders dreadnought 'Defiant'."
	flavour_text = "You chose to stay behind when the ship was going down in order to rebuild at a later date. Now, it's time to get to work."
	important_text = "Obey the orders of the Captain, and DO NOT approach Nanotrasen territory under any circumstances!"
	outfit = /datum/outfit/syndicate_empty/dreadnought/engineer

/datum/outfit/syndicate_empty/dreadnought/engineer
	name = "Syndicate Dreadnought Engineer"
	suit = /obj/item/clothing/suit/hazardvest
	head = /obj/item/clothing/head/utility/hardhat
	belt = /obj/item/storage/belt/utility/syndicate

/obj/effect/mob_spawn/ghost_role/human/syndicate/dreadnought/captain
	you_are_text = "You are the captain of the Defiant, a dreadnought operated by the Gorlex Marauders."
	flavour_text = "Nanotrasen nearly destroyed your ship, but you managed to freeze some of the crew until Nanotrasen presence finally started to wane. Now, it's time to rebuild the Defiant."
	important_text = "The ship must survive. Do not allow anyone to go near Nanotrasen territory. Enforce your will with an iron fist; lest your ship rot in the void."
	outfit = /datum/outfit/syndicate_empty/dreadnought/captain

/datum/outfit/syndicate_empty/dreadnought/captain
	name = "Syndicate Dreadnought Captain"
	uniform = /obj/item/clothing/under/syndicate/sniper
	head = /obj/item/clothing/head/hats/hos/cap/syndicate
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	ears = /obj/item/radio/headset/syndicate/alt/leader
	mask = /obj/item/clothing/mask/gas/chameleon
	l_pocket = /obj/item/melee/energy/sword/saber/red
	backpack_contents = list(
		/obj/item/folder/syndicate/red,
		/obj/item/gun/ballistic/revolver/mateba,
		/obj/item/megaphone/sec,
	)
	accessory = /obj/item/clothing/accessory/medal/gold


// areas
/area/ruin/space/syndicate_dreadnought
	name = "Syndicate Dreadnought 'Defiant'"

/area/ruin/space/syndicate_dreadnought/armoury
	name = "Syndicate Dreadnought 'Defiant' Armoury"

/area/ruin/space/syndicate_dreadnought/bridge
	name = "Syndicate Dreadnought 'Defiant' Bridge"

/area/ruin/space/syndicate_dreadnought/crew
	name = "Syndicate Dreadnought 'Defiant' Crew Quarters"

/area/ruin/space/syndicate_dreadnought/engineering
	name = "Syndicate Dreadnought 'Defiant' Engineering"

/area/ruin/space/syndicate_dreadnought/engineering/atmos
	name = "Syndicate Dreadnought 'Defiant' Life Support"

/area/ruin/space/syndicate_dreadnought/engineering/gravity
	name = "Syndicate Dreadnought 'Defiant' Gravity Generator"

/area/ruin/space/syndicate_dreadnought/eva_locker
	name = "Syndicate Dreadnought 'Defiant' EVA Lockup"

/area/ruin/space/syndicate_dreadnought/medical
	name = "Syndicate Dreadnought 'Defiant' Infirmary"

/area/ruin/space/syndicate_dreadnought/mess_hall
	name = "Syndicate Dreadnought 'Defiant' Mess Hall"

/area/ruin/space/syndicate_dreadnought/munitions
	name = "Syndicate Dreadnought 'Defiant' Munitions Bay"

/area/ruin/space/syndicate_dreadnought/vault
	name = "Syndicate Dreadnought 'Defiant' Vault"

/area/ruin/space/syndicate_dreadnought/mining
	name = "Syndicate Dreadnought 'Defiant' Salvage Bay"
