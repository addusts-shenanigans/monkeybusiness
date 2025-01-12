// syndicate overwatch, meant to coordinate all syndicate activity and oversee all activity. the Final Boss of syndicate ghostroles.

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/overwatch
	name = "Syndicate Overwatch Station Crew Member"
	prompt_name = "a syndicate overwatch worker"
	you_are_text = "You are a worker, employed at a Syndicate command station."
	flavour_text = "Work to maintain the Overwatch station and follow the orders of the on-site Rear Admiral. Do not let the base fall into enemy hands!"
	important_text = "DO NOT abandon the base or approach active Nanotrasen installations."
	outfit = /datum/outfit/syndicate_empty/overwatch
	spawner_job_path = /datum/job/lavaland_syndicate/space

/datum/outfit/syndicate_empty/overwatch
	name = "Syndicate Overwatch Station Agent"
	suit = /obj/item/clothing/suit/armor/vest
	back = /obj/item/storage/backpack
	head = /obj/item/clothing/head/soft/black
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	r_pocket = /obj/item/flashlight
	box = /obj/item/storage/box/survival/syndie

/obj/effect/mob_spawn/ghost_role/human/lavaland_syndicate/overwatch/rear_admiral
	name = "Syndicate Rear Admiral"
	prompt_name = "a syndicate rear admiral"
	you_are_text = "You are a Syndicate rear admiral, assigned to oversee operations in the local sector."
	flavour_text = "Produce and move supplies for Syndicate bases in the region, as well as ensure they are safely evacuated should they be lost. Do not let the base fall into enemy hands!"
	important_text = "You are an agent of Syndicate Command, and are subordinate to them. Prevent drawing attention from Nanotrasen forces, and stick to Syndicate bases."
	outfit = /datum/outfit/syndicate_empty/overwatch/rear_admiral

/datum/outfit/syndicate_empty/overwatch/rear_admiral
	name = "Syndicate Rear Admiral"
	id_trim = /datum/id_trim/chameleon/operative/nuke_leader //extra access, including opening EVA storage
	uniform = /obj/item/clothing/under/syndicate/sniper
	ears = /obj/item/radio/headset/syndicate/alt/leader
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	back = /obj/item/storage/backpack/satchel/leather
	head = /obj/item/clothing/head/hats/hos/cap/syndicate
	l_pocket = /obj/item/melee/energy/sword/saber
	r_pocket = /obj/item/flashlight/lantern/syndicate
	mask = /obj/item/clothing/mask/chameleon
	l_hand = /obj/item/gun/ballistic/revolver/mateba
