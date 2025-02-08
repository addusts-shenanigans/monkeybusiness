// MOB SPAWNERS

///Syndicate Listening Post

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate
	name = "Syndicate Operative"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	prompt_name = "a syndicate technician"
	you_are_text = "You are a syndicate technician, employed in a top secret research facility developing biological weapons."
	flavour_text = "Unfortunately, your hated enemy, Nanotrasen, has begun mining in this sector. Continue your research as best you can, and try to keep a low profile."
	important_text = "The base is rigged with explosives, DO NOT abandon it or let it fall into enemy hands! Do not interfere with Nanotrasen mining operations either! While you can take the shuttle in the hangar to visit other active Syndicate outposts, you must stay within those outposts or the ship while in orbit. Do not attempt to explore space."
	outfit = /datum/outfit/lavaland_syndicate
	spawner_job_path = /datum/job/lavaland_syndicate

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/special(mob/living/new_spawn)
	. = ..()
	new_spawn.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

/datum/outfit/lavaland_syndicate
	name = "Lavaland Syndicate Agent"
	id = /obj/item/card/id/advanced/chameleon
	id_trim = /datum/id_trim/chameleon/operative
	uniform = /obj/item/clothing/under/syndicate
	back = /obj/item/storage/backpack
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/syndicate/alt
	shoes = /obj/item/clothing/shoes/combat
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	box = /obj/item/storage/box/survival/syndie

	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/lavaland_syndicate/post_equip(mob/living/carbon/human/syndicate, visualsOnly = FALSE)
	syndicate.faction |= ROLE_SYNDICATE


/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/scientist
	name = "Syndicate Researcher"
	prompt_name = "a syndicate scientist"
	you_are_text = "You are an Interdyne scientist, employed in a top secret research facility developing biological weapons."
	flavour_text = "Unfortunately, your hated enemy, Nanotrasen, has begun mining in this sector. Continue your research as best you can, and try to keep a low profile."
	outfit = /datum/outfit/lavaland_syndicate/scientist

/datum/outfit/lavaland_syndicate/scientist
	name = "Lavaland Syndicate Scientist"
	suit = /obj/item/clothing/suit/toggle/labcoat/interdyne
	backpack_contents = list(
		/obj/item/gun/ballistic/rifle/sniper_rifle/syndicate = 1, //makes it obvious that the gun fits in the backpack
		/obj/item/storage/medkit/surgery = 1 //interdyne does medicine too, you know
	)
	belt = /obj/item/storage/belt/utility/full //basic utility belt, but not as good as the technician's belt

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/engineer
	name = "Syndicate Technician"
	prompt_name = "a syndicate technician"
	you_are_text = "You are a Waffle Co engineer, employed in a top secret research facility developing biological weapons."
	flavour_text = "Unfortunately, your hated enemy, Nanotrasen, has begun mining in this sector. Maintain the outpost's integrity as best as you can, and try to keep a low profile."
	outfit = /datum/outfit/lavaland_syndicate/engineer

/datum/outfit/lavaland_syndicate/engineer
	name = "Lavaland Syndicate Technician"
	suit = /obj/item/clothing/suit/hazardvest/syndicate
	head = /obj/item/clothing/head/utility/hardhat/red //evil. EVIL. EVIL!!!!!
	backpack_contents = list(
		/obj/item/storage/box/emptysandbags = 1
	)
	belt = /obj/item/storage/belt/utility/full/engi
	glasses = /obj/item/clothing/glasses/welding
	uniform = /obj/item/clothing/under/syndicate/nova/overalls

/obj/item/clothing/suit/hazardvest/syndicate
	name = "syndicate hazard vest"
	desc = "A durathread-weave hazard vest in the signature colours of the Syndicate."
	icon_state = "hazard_syndicate"
	icon = 'icons/obj/clothing/suits/utility.dmi'
	worn_icon = 'icons/mob/clothing/suits/utility.dmi'
	inhand_icon_state = null
	blood_overlay_type = "armor"
	armor_type = /datum/armor/vest_durathread //not the best but it'll work


/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/commander
	name = "Syndicate Commander"
	prompt_name = "a syndicate commander"
	you_are_text = "You are the commander of the Syndicate's outpost on Lavaland, developing biological and chemical weapons."
	flavour_text = "Unfortunately, your hated enemy, Nanotrasen, has begun mining in this sector. Monitor enemy activity as best you can, and try to keep a low profile. If you wish, you may use the communication equipment to assist field agents and throw hostiles off your trail. Do not let the base fall into enemy hands!"
	important_text = "DO NOT abandon the base or attempt to interfere with Nanotrasen mining operations. While you are allowed to visit other syndicate outposts, don't spend too long in orbit. The base has been rigged with a self-destruct to prevent capture, located within the vault behind your office."
	outfit = /datum/outfit/lavaland_syndicate/commander
	spawner_job_path = /datum/job/lavaland_syndicate/commander

/datum/outfit/lavaland_syndicate/commander
	name = "Lavaland Syndicate Commander"
	id = /obj/item/card/id/advanced/chameleon/black
	id_trim = /datum/id_trim/chameleon/operative/nuke_leader //gets exclusive control over the self-destruct
	mask = /obj/item/clothing/mask/chameleon/gps
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	ears = /obj/item/radio/headset/syndicate/alt/leader //big man, needs authority. if you use it over common and get BSA'd, your fault.
	head = /obj/item/clothing/head/hats/hos/cap/syndicate
	uniform = /obj/item/clothing/under/syndicate/sniper //distinguished gentleman
	belt = /obj/item/gun/ballistic/automatic/pistol/aps/restricted //setting a precedent that commanders get cooler pistols. also their colleagues get fucking sniper rifles but there's no good weapons here for suppressive fire. this also keeps miners from using it with zero effort
	backpack_contents = list(
		/obj/item/melee/energy/sword/saber/red = 1
	)
	r_pocket = /obj/item/flashlight/lantern/syndicate //evil lamp

/obj/item/gun/ballistic/automatic/pistol/aps/restricted //miners have a bit more of an edge on planetary combat, so they should need more effort to commandeer the APS compared to their spaceborne counterparts
	pin = /obj/item/firing_pin/implant/pindicate

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

/area/ruin/syndicate_lava_base/control_room
	name = "Syndicate Lavaland Control Room"

/area/ruin/syndicate_lava_base/vault
	name = "Syndicate Lavaland Vault"

/area/ruin/syndicate_lava_base/shuttle_bay
	name = "Syndicate Lavaland Hangar"

/area/ruin/syndicate_lava_base/cargo
	name = "\improper Syndicate Lavaland Cargo Bay"

/area/ruin/syndicate_lava_base/chemistry
	name = "Syndicate Lavaland Chemistry"

/area/ruin/syndicate_lava_base/virology
	name = "Syndicate Lavaland Virology"

/area/ruin/syndicate_lava_base/genetics
	name = "Syndicate Lavaland Genetics"

/area/ruin/syndicate_lava_base/science
	name = "Syndicate Lavaland Research and Development"

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

// SHUTTLE THINGIES

/obj/machinery/computer/shuttle/syndicate_lavaland
	name = "syndicate cargo shuttle terminal"
	desc = "The terminal used to control the Syndicate cargo shuttle."
	circuit = /obj/item/circuitboard/computer/syndicate_lavaland_shuttle
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	light_color = COLOR_SOFT_RED
	req_access = list(ACCESS_SYNDICATE)
	shuttleId = "syndie_lavaland"
	possible_destinations = "syndicate_depot;syndicate_listening_post;syndicate_lavaland;deep_storage"

//UNIQUE OBJECTS

/obj/machinery/vending/syndichem
	name = "\improper SyndiChem"
	desc = "A vending machine full of grenades and grenade accessories. Sponsored by Donk Co."
	req_access = list(ACCESS_SYNDICATE)
	products = list(/obj/item/stack/cable_coil = 5,
					/obj/item/assembly/igniter = 20,
					/obj/item/assembly/prox_sensor = 5,
					/obj/item/assembly/signaler = 5,
					/obj/item/assembly/timer = 5,
					/obj/item/assembly/voice = 5,
					/obj/item/assembly/health = 5,
					/obj/item/assembly/infra = 5,
					/obj/item/grenade/chem_grenade = 5,
	                /obj/item/grenade/chem_grenade/large = 5,
	                /obj/item/grenade/chem_grenade/pyro = 5,
	                /obj/item/grenade/chem_grenade/cryo = 5,
	                /obj/item/grenade/chem_grenade/adv_release = 5,
					/obj/item/reagent_containers/cup/glass/bottle/holywater = 1)
	product_slogans = "It's not pyromania if you're getting paid!;You smell that? Plasma, son. Nothing else in the world smells like that.;I love the smell of Plasma in the morning."
	resistance_flags = FIRE_PROOF

/obj/structure/closet/crate/secure/freezer/commsagent
	name = "Assorted Tongues And Tongue Accessories"
	desc = "Unearthing this was probably a mistake."

/obj/structure/closet/crate/secure/freezer/commsagent/PopulateContents()
	. = ..() //Contains a variety of less exotic tongues (And tongue accessories) for the comms agent to mess with.
	new /obj/item/organ/internal/tongue(src)
	new /obj/item/organ/internal/tongue/lizard(src)
	new /obj/item/organ/internal/tongue/fly(src)
	new /obj/item/organ/internal/tongue/zombie(src)
	new /obj/item/organ/internal/tongue/bone(src)
	new /obj/item/organ/internal/tongue/robot(src) //DANGER! CRYSTAL HYPERSTRUCTURE-
	new /obj/item/organ/internal/tongue/ethereal(src)
	new /obj/item/autosurgeon/syndicate/commsagent(src)
	new /obj/item/book/granter/sign_language(src)
	new	/obj/item/clothing/gloves/radio(src)

/obj/machinery/power/supermatter_crystal/shard/syndicate
	name = "syndicate supermatter shard"
	desc = "A strangely transculent and iridescent crystal sat upon a plastitanium podium, with only a thin sheet of solid hypernoblium preventing it from turning the podium to dust. The signature serpentine emblem of the Syndicate is engraved on the podium."
	anchored = TRUE
	radio_key = /obj/item/encryptionkey/syndicate
	emergency_channel = "Syndicate"
	warning_channel = "Syndicate"
	include_in_cims = FALSE

/obj/machinery/power/supermatter_crystal/shard/syndicate/attackby(obj/item/item, mob/living/user, params)
	if(istype(item, /obj/item/scalpel/supermatter)) //You can already yoink the docs as a free objective win, another would be just gross
		to_chat(user, span_danger("This shard's already in Syndicate custody, taking it again would cause more harm than good."))
		return
	else
		. = ..()

/obj/machinery/porta_turret/syndicate/lavaland
	name = "hostile environment turret"
	desc = "A ballistic machine-gun auto-turret. Not only has it been reinforced against close-quarters attacks, it's also been equipped with a plasma cutter to deal with hostile fauna."
	stun_projectile = /obj/projectile/plasma/turret/syndicate
	stun_projectile_sound = 'sound/weapons/plasma_cutter.ogg'
	armor_type = /datum/armor/syndicate_turret/lavaland

/obj/projectile/plasma/turret/syndicate //go on, cross the moat, innocent legion. go on, i fucking dare you.
	name = "heavy plasma beam"
	damage = 30
	range = 10

/datum/armor/syndicate_turret/lavaland
	melee = 75
	bullet = 40
	laser = 60
	energy = 60
	bomb = 60
	fire = 100
	acid = 100
