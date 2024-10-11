
//spawners and jobs

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/icemoon
	name = "syndicate cryogenic sleeper"
	you_are_text = "You are a Syndicate operative, assigned to an outpost in the frigid wastes of the icemoon."
	flavour_text = "Monitor Nanotrasen activity from afar and protect your base no matter the cost. Do not let it fall into enemy hands."
	important_text = "DO NOT go near active Nanotrasen holdings or personnel, and do not leave the base unless absolutely necessary."
	outfit = /datum/outfit/icemoon_syndicate

/datum/outfit/icemoon_syndicate
	name = "Icemoon Syndicate Agent"
	id = /obj/item/card/id/advanced/chameleon
	id_trim = /datum/id_trim/chameleon/operative
	uniform = /obj/item/clothing/under/syndicate/coldres
	suit = /obj/item/clothing/suit/hooded/wintercoat/nova/syndicate
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/syndicate/alt
	shoes = /obj/item/clothing/shoes/combat
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	neck = /obj/item/clothing/neck/large_scarf/syndie
	box = /obj/item/storage/box/survival/syndie
	implants = list(/obj/item/implant/weapons_auth)

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/icemoon/guard
	you_are_text = "You are a Gorlex Marauder, assigned to guard a Syndicate outpost in the frigid wastes of the icemoon."
	flavour_text = "Defend your assigned outpost from any intruders using your issued equipment. Enforce cooperation between organisations under the directives of the Captain."
	important_text = "DO NOT go near active Nanotrasen holdings or personnel, and do not leave the base unless absolutely necessary."
	outfit = /datum/outfit/icemoon_syndicate/guard

/datum/outfit/icemoon_syndicate/guard
	name = "Icemoon Syndicate Guard"
	suit = /obj/item/clothing/suit/armor/vest
	back = /obj/item/storage/backpack/security
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	box = /obj/item/storage/box/survival/syndie
	head = /obj/item/clothing/head/helmet/swat
	mask = /obj/item/clothing/mask/gas
	backpack_contents = list(
		/obj/item/choice_beacon/syndicate_icemoon = 1,
		/obj/item/storage/box/handcuffs = 1,
		/obj/item/melee/baton/security = 1,
		)

/obj/item/choice_beacon/syndicate_icemoon
	name = "firearms beacon"
	desc = "A beacon used to request longarms from your superiors."
	company_source = "Gorlex Marauders Logistics Corps"
	company_message = span_bold("We hear you. Delivery enroute. Spare ammo should be in the checkpoint.")
	icon_state = "gangtool_red" //we can get more evil

/obj/item/choice_beacon/blueshield/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Surplus Bolt-Action Rifle" = /obj/item/storage/toolbox/guncase/soviet/sakhno, //god help you
		"Sindano Submachinegun Case" = /obj/item/storage/toolbox/guncase/skyrat/carwo_large_case/sindano/evil,
		"Carwo-Cawil Battle Rifle" = /obj/item/gun/ballistic/automatic/sol_rifle/evil, //how absolutely astonishingly evil a battle rifle can be
		"Renoster Shotgun" = /obj/item/gun/ballistic/shotgun/riot/sol/evil
	)

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/icemoon/surgeon
	you_are_text = "You are an Interdyne surgeon, assigned to a Syndicate outpost in the frigid wastes of the icemoon."
	flavour_text = "Keep your colleagues alive and well and assist scientists where necessary. Enforce proper sanitary practice."
	important_text = "DO NOT go near active Nanotrasen holdings or personnel, and do not leave the base unless absolutely necessary."
	outfit = /datum/outfit/icemoon_syndicate/surgeon

/datum/outfit/icemoon_syndicate/surgeon
	name = "Icemoon Syndicate Surgeon"
	mask = /obj/item/clothing/mask/surgical
	glasses = /obj/item/clothing/glasses/hud/health
	back = /obj/item/storage/backpack/medic
	belt = /obj/item/defibrillator/compact/combat/loaded
	accessory = /obj/item/clothing/accessory/armband/medblue
	backpack_contents = list(
		/obj/item/storage/medkit/tactical = 1,
	)

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/icemoon/researcher
	you_are_text = "You are a Cybersun researcher, assigned to a Syndicate outpost in the frigid wastes of the icemoon."
	flavour_text = "Perform research and development to better humanity - and the Syndicate. Work together with your colleagues from the other member organisations of the Syndicate."
	important_text = "DO NOT go near active Nanotrasen holdings or personnel, and do not leave the base unless absolutely necessary."
	outfit = /datum/outfit/icemoon_syndicate/researcher

/datum/outfit/icemoon_syndicate/researcher
	name = "Icemoon Syndicate Researcher"
	glasses = /obj/item/clothing/glasses/hud/diagnostic
	accessory = /obj/item/clothing/accessory/armband/science
	backpack_contents = list(
		/obj/item/clipboard = 1,
		/obj/item/pen = 1,
		/obj/item/paper = 1,
		/obj/item/storage/box/beakers = 1,
	)

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/icemoon/researcher/interdyne
	you_are_text = "You are an Interdyne researcher, assigned to a Syndicate outpost in the frigid wastes of the icemoon."
	flavour_text = "Perform medical research and development alongside your colleagues from Cybersun. Assist the base's surgeon."
	outfit = /datum/outfit/icemoon_syndicate/researcher/interdyne

/datum/outfit/icemoon_syndicate/researcher/interdyne
	name = "Icemoon Syndicate Interdyne Researcher"
	glasses = /obj/item/clothing/glasses/hud/health
	suit = /obj/item/clothing/suit/toggle/labcoat/interdyne

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/icemoon/engineer
	you_are_text = "You are a Waffle Co engineer, assigned to a Syndicate outpost in the frigid wastes of the icemoon."
	flavour_text = "Maintain and deploy the base's equipment, and repair any damage to the structure. Take responsibility for any digging that occurs."
	important_text = "DO NOT go near active Nanotrasen holdings or personnel, and do not leave the base unless absolutely necessary."
	outfit = /datum/outfit/icemoon_syndicate/engineer

/datum/outfit/icemoon_syndicate/engineer
	name = "Icemoon Syndicate Engineer"
	accessory = /obj/item/clothing/accessory/armband/engine
	head = /obj/item/clothing/head/utility/hardhat/welding/orange
	belt = /obj/item/storage/belt/utility/syndicate
	backpack_contents = list(
		/obj/item/storage/box/emptysandbags = 1,
		/obj/item/stack/sheet/mineral/wood/fifty = 1,
	)

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/icemoon/captain
	name = "syndicate captain's sleeper"
	you_are_text = "You are an MI13 officer, assigned to coordinate a Syndicate outpost in the frigid wastes of the icemoon."
	flavour_text = "Oversee your outpost's operations, use your chameleon gas mask to impede Nanotrasen activity using radio intelligence, and coordinate your base's crew."
	important_text = "You hold complete authority over the base and its crew, and are responsible for ensuring that inter-organisational conflict does not occur. You will be held responsible should the base be lost."
	outfit = /datum/outfit/icemoon_syndicate/captain

/datum/outfit/icemoon_syndicate/captain
	name = "Icemoon Syndicate Captain"
	id = /obj/item/card/id/advanced/chameleon/black
	id_trim = /datum/id_trim/chameleon/operative/nuke_leader //if this somehow impacts nukies more than the normal chameleon id, skill issue lmao.
	uniform = /obj/item/clothing/under/syndicate/sniper
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	back = /obj/item/storage/backpack/satchel/leather
	r_pocket = /obj/item/flashlight/lantern/syndicate
	mask = /obj/item/clothing/mask/chameleon/gps
	head = /obj/item/clothing/head/hats/hos/beret/syndicate
	glasses = /obj/item/clothing/glasses/thermal/eyepatch
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/mateba/pindicate = 1,
		/obj/item/ammo_box/a357 = 2,
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/megaphone/sec = 1,
	)

//secure weapon(s)
/obj/item/gun/ballistic/revolver/mateba/pindicate
	desc = "A retro high-powered autorevolver typically used by officers of the New Russia military. Uses .357 ammo. This one has a Syndicate serpent engraved on the grip."
	pin = /obj/item/firing_pin/implant/pindicate

//fluff

/obj/machinery/computer/terminal/icemoon_syndicate
	name = "syndicate terminal"
	desc = "A terminal used by Syndicate outposts to handle certain pieces of complex equipment."
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	light_color = COLOR_SOFT_RED
	content = list("No connection.")
	upperinfo = "Property of Cybersun Industries."

/obj/machinery/computer/terminal/icemoon_syndicate/cargo
	name = "syndicate cargo platform controller"
	desc = "A terminal used to control the cargo platforms responsible for moving supplies in and out of the Syndicate's Icemoon base."
	upperinfo = "cybersun_cargoman.exe - Critical Error"
	content = list("<center><b>CRITICAL ERROR!</b></center> <BR> <BR> Contact lost with external station. Please attempt to retrieve un-shipped cargo manually if possible and contact a qualified Cybersun Industries technician immediately.")
