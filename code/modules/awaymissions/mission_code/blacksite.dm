/// Nanotrasen Blacksite away mission

/area/awaymission/blacksite
	name = "Blacksite Caves"
	requires_power = TRUE //caves are unpowered

// Split into 4 sectors - Entrance Zone (low threat, some dead bodies), Light Containment Zone (some anomalous/occult hostiles), Engineering (massive biomass heart and some production machines), and Heavy Containment (worst of the anomalies but also some cool shit and the plasma drill for cargo)

// ENTRANCE ZONE

/area/awaymission/blacksite/entrance_zone
	name = "Blacksite Entrance Zone"
	icon_state = "awaycontent1"

/area/awaymission/blacksite/entrance_zone/gateway
	name = "Blacksite Gateway"

/area/awaymission/blacksite/entrance_zone/dock
	name = "Blacksite Main Submarine Dock"

/area/awaymission/blacksite/entrance_zone/dock/secondary
	name = "Blacksite Secondary Submarine Dock"

/area/awaymission/blacksite/entrance_zone/canteen
	name = "Blacksite Canteen"

/area/awaymission/blacksite/entrance_zone/substation
	name = "Blacksite Entrance Zone Substation"

/area/awaymission/blacksite/entrance_zone/infirmary
	name = "Blacksite Infirmary"

/area/awaymission/blacksite/entrance_zone/security
	name = "Blacksite Security Department"

/area/awaymission/blacksite/entrance_zone/checkpoint
	name = "Blacksite Entrance Zone Checkpoint"

/area/awaymission/blacksite/entrance_zone/offices
	name = "Blacksite Offices"

/area/awaymission/blacksite/entrance_zone/cargo
	name = "Blacksite Cargo Department"

/area/awaymission/blacksite/entrance_zone/dorms
	name = "Blacksite Dormitories"

/area/awaymission/blacksite/entrance_zone/bar
	name = "Blacksite Bar"

/area/awaymission/blacksite/entrance_zone/ridge_checkpoint
	name = "Blacksite Plasma Extraction Entrance Checkpoint"

/area/awaymission/blacksite/entrance_zone/wrecked_submarine
	name = "NTSB-902"

// LIGHT CONTAINMENT ZONE

/area/awaymission/blacksite/light_containment
	name = "Blacksite Light Containment Zone"
	icon_state = "awaycontent2"

/area/awaymission/blacksite/light_containment/checkpoint
	name = "Blacksite Light Containment Zone Checkpoint 1"

/area/awaymission/blacksite/light_containment/checkpoint/hcz
	name = "Blacksite Light Containment Zone Checkpoint 2"

/area/awaymission/blacksite/light_containment/checkpoint/engi
	name = "Blacksite Light Containment Zone Auxiliary Checkpoint 1"

/area/awaymission/blacksite/light_containment/mrnd
	name = "Blacksite Mining Research"

/area/awaymission/blacksite/light_containment/prison
	name = "Blacksite Prison"

// PLASMA EXTRACTION FACILITY - THE RIDGE

/area/awaymission/blacksite/ridge
	name = "Blacksite Plasma Extraction Facility"
	icon_state = "awaycontent3"

/area/awaymission/blacksite/ridge/chasm
	name = "Blacksite Ridge"

/area/awaymission/blacksite/ridge/checkpoint
	name = "Blacksite Plasma Extraction Facility Checkpoint"

/area/awaymission/blacksite/ridge/bottling
	name = "Blacksite Plasma Bottling Facility"

/area/awaymission/blacksite/ridge/powerstation
	name = "Blacksite Plasma Extraction Facility Power Station"

/area/awaymission/blacksite/ridge/dock
	name = "Blacksite Plasma Extraction Facility Dock"

/area/awaymission/blacksite/ridge/extraction
	name = "Blacksite Plasma Drill Chamber"


// BLACKSITE EXTERNAL AREAS

/area/awaymission/blacksite/submarine
	name = "NTSB-032" //NanoTrasen SuBmersible no. 32


/area/shuttle/blacksite
	name = "NTSB-032 Exterior Hull" //the submarine interiors arent shuttle areas and are instead accessed via a ladder on the top deck of the submarine (which is the ACTUAL shuttle)

/obj/machinery/computer/shuttle/blacksite
	name = "NTSB-032 control console"
	desc = "The control console of a Nanotrasen submersible vessel."
	flight_message = "Submarine moving. Please remain inside the vessel until it has arrived at its destination."
	shuttleId = "blacksite_submarine"
	possible_destinations = "blacksite_gateway_sub_dock;blacksite_sub_debug_dock;blacksite_ridge_sub_dock;blacksite_sub_harbor_dock;blacksite_lcz_dock;blacksite_hcz_dock"

/obj/docking_port/mobile/blacksite
	name = "NTSB-032"
	shuttle_id = "blacksite_submarine"
	movement_force = list("KNOCKDOWN" = 0, "THROW" = 0)

/obj/docking_port/mobile/blacksite/request(obj/docking_port/stationary/S) //No transit, no ignition, just a simple up/down platform
	initiate_docking(S, force=TRUE)

/datum/map_template/shuttle/blacksite
	port_id = "blacksite"
	who_can_purchase = null

/datum/map_template/shuttle/blacksite/submarine
	suffix = "submarine"
	name = "Blacksite Submarine"
	admin_notes = "You probably shouldn't spawn this. It's just the roof of the actual submarine (which is on the blacksite away map) and doesn't have any controls or anything."

/obj/effect/baseturf_helper/liquid_plasma
	name = "liquid plasma baseturf editor"
	baseturf = /turf/open/lava/plasma

/obj/effect/baseturf_helper/liquid_plasma/normal_air
	name = "liquid plasma baseturf editor (normal airmix)"
	baseturf = /turf/open/lava/plasma/normal_air

/turf/open/lava/plasma/normal_air
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = FALSE


// BLACKSITE ID CARDS

/obj/item/card/id/advanced/old/blacksite
	name = "blacksite ID card"
	desc = "An ID card bearing the insignia of the Nanotrasen Corporation's Higher Dimensional Affairs division."

/datum/id_trim/job/away/blacksite
	minimal_access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_COMMAND,
		ACCESS_AWAY_MAINTENANCE,
		ACCESS_AWAY_GENERIC1,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_ENGINE_EQUIP,
		ACCESS_RESEARCH
	)

/datum/id_trim/job/away/blacksite/service
	assignment = "Blacksite Service Staff"
	minimal_access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_MAINTENANCE,
		ACCESS_AWAY_GENERIC1
	)

/datum/id_trim/job/away/blacksite/engineer
	assignment = "Blacksite Engineer"
	minimal_access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_COMMAND,
		ACCESS_AWAY_MAINTENANCE,
		ACCESS_AWAY_GENERIC1,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_ENGINE_EQUIP,
		ACCESS_AWAY_ENGINEERING,
		ACCESS_AWAY_GENERIC2
	)

/datum/id_trim/job/away/blacksite/nt_rep
	assignment = "Nanotrasen Representative"
	sechud_icon_state = SECHUD_CENTCOM
	minimal_access = list(
		ACCESS_AWAY_GENERAL,
		ACCESS_AWAY_COMMAND,
		ACCESS_AWAY_MAINTENANCE,
		ACCESS_AWAY_GENERIC1,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_AWAY_MAINTENANCE
	)



//used to unlock new areas for the sub to travel to
//thanks whoever coded the mining shuttle beacon for making everything so obscenely specific
/obj/structure/blacksite_sub_beacon
	name = "submarine buoy"
	desc = "A submarine buoy rigged to the side of the dock that seems to have been folded out of the water. You could drop it back in to allow submarine access to this dock."
	anchored = TRUE
	density = FALSE
	var/has_activated = FALSE //is it on yet
	var/shuttle_ID = "landing_zone_dock"
	var/shuttle_name = "submarine docking point"
	icon = 'icons/obj/objects.dmi'
	icon_state = "miningbeacon"
	var/obj/docking_port/stationary/Mport //Linked docking port for the mining shuttle
	pressure_resistance = 200 //So it does not get blown into lava.
	var/anti_spam_cd = 0 //The linking process might be a bit intensive, so this here to prevent over use.

/obj/structure/blacksite_sub_beacon/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	if(has_activated)
		to_chat(user, span_warning("Buoy already activated!"))
		return

	if(anti_spam_cd)
		to_chat(user, span_warning("[src] is currently recalibrating. Please wait."))
		return

	anti_spam_cd = 1
	addtimer(CALLBACK(src, PROC_REF(clear_cooldown)), 50)

	var/turf/landing_spot = get_turf(src)
	for(var/S in SSshuttle.stationary_docking_ports)
		var/obj/docking_port/stationary/SM = S //SM is declared outside so it can be checked for null
		if(SM.shuttle_id == "blacksite_gateway_sub_dock")

			var/area/A = get_area(landing_spot)

			Mport = new(landing_spot)
			Mport.shuttle_id = shuttle_ID
			Mport.port_destinations = "landing_zone_dock"
			Mport.name = shuttle_name
			Mport.dwidth = SM.dwidth
			Mport.dheight = SM.dheight
			Mport.width = SM.width
			Mport.height = SM.height
			Mport.setDir(dir)
			Mport.area_type = A.type

			break

	var/obj/docking_port/mobile/mining_shuttle
	var/list/landing_turfs = list() //List of turfs where the submarine may dock.
	for(var/obj/docking_port/mobile/MS as anything in SSshuttle.mobile_docking_ports)
		if(MS.shuttle_id != "blacksite_submarine")
			continue
		mining_shuttle = MS
		landing_turfs = mining_shuttle.return_ordered_turfs(x,y,z,dir)
		break

	if(mining_shuttle.canDock(Mport) != SHUTTLE_CAN_DOCK)
		to_chat(user, span_warning("Obstruction detected. Please remove the obstruction before deploying the buoy."))
		SSshuttle.stationary_docking_ports.Remove(Mport)
		qdel(Mport)
		return

	to_chat(user, span_notice("Docking system online."))
	has_activated = TRUE
	playsound(loc, 'sound/machines/ping.ogg', 50, FALSE)
	log_shuttle("[key_name(usr)] has registered the blacksite submarine beacon at [COORD(landing_spot)].")
	Destroy()

/obj/structure/blacksite_sub_beacon/proc/clear_cooldown()
	anti_spam_cd = 0

/obj/structure/blacksite_sub_beacon/attack_robot(mob/user)
	return attack_hand(user) //So borgies can help

/obj/machinery/camera/autoname/blacksite
	network = list("blacksite")
	status = 0

MAPPING_DIRECTIONAL_HELPERS(/obj/machinery/camera/autoname/blacksite, 0)

/obj/machinery/computer/security/blacksite
	name = "blacksite security camera console"
	desc = "Used to access the facility's camera network."
	network = list("blacksite")
	circuit = /obj/item/circuitboard/computer/security/blacksite

/obj/item/circuitboard/computer/security/blacksite
	name = "Blacksite Security Cameras"
	greyscale_colors = CIRCUIT_COLOR_SECURITY
	build_path = /obj/machinery/computer/security/blacksite

// blacksite ghostroles

/datum/job/blacksite_survivor
	title = ROLE_BLACKSITE_SURVIVOR
	policy_index = ROLE_LAVALAND_SYNDICATE

/obj/effect/mob_spawn/ghost_role/human/blacksite
	name = "nanotrasen emergency sleeping bag"
	desc = "A kevlar-layered sleeping bag that seems to be anchored to the floor. You swear you see it moving slightly..."
	icon = 'icons/obj/bodybag.dmi'
	icon_state = "ntenvirobag"
	spawner_job_path = /datum/job/blacksite_survivor

/datum/outfit/blacksite
	name = "Blacksite Survivor Base"
	uniform = /obj/item/clothing/under/color/black

/obj/effect/mob_spawn/ghost_role/human/blacksite/representative
	name = "representative's emergency sleeping bag"
	desc = "A kevlar-layered sleeping bag bearing the insignia of Central Command, anchored securely to the floor. It moves slowly and rythmically, as if its occupant is still alive."
	density = 0
	prompt_name = "a nanotrasen liasion"
	you_are_text = "You are a CentCom liasion, stranded in a Nanotrasen blacksite."
	flavour_text = "When the containment breach happened, you ran into your office and locked down, praying none of the horrors this facility once held would find you. However, with the noises you've heard from the gateway across the Entrance Zone, help might be here. If they're cleared to know what's down here is another matter."
	important_text = "Keep an eye on whoever arrives as they roam the Blacksite. Encourage them to recover the plasma extraction facility, accessed through the south end of the Entrance Zone. Withhold information unless necessary - this is a top-secret facility."
	outfit = /datum/outfit/blacksite/ntrep

/datum/outfit/blacksite/ntrep
	name = "Blacksite Nanotrasen Representative"
	id = /obj/item/card/id/advanced/old/blacksite
	id_trim = /datum/id_trim/job/away/blacksite/nt_rep
	uniform = /obj/item/clothing/under/rank/centcom/nanotrasen_representative
	suit = /obj/item/clothing/suit/armor/vest/nanotrasen_representative
	head = /obj/item/clothing/head/hats/nanotrasen_representative
	backpack_contents = list(
		/obj/item/stamp/centcom = 1,
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/folder/blue = 1,
	)
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/storage/toolbox/emergency
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/headset_cent/representative
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/laceup
	back = /obj/item/storage/backpack/satchel/leather
	implants = list(/obj/item/implant/mindshield)
	skillchips = list(
		/obj/item/skillchip/disk_verifier,
	)


// blacksite ladder
// code stolen from HL13 (marmio version), who in turn stole it from stonekeep. beats trying to get ladders to behave like they used to before multi-Z though.
/obj/structure/travel_ladder
	name = "ladder"
	desc = "A sturdy metal ladder."
	icon = 'icons/obj/structures.dmi'
	icon_state = "ladder11"
	density = FALSE
	anchored = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF //dont break the fuckign ladder
	layer = ABOVE_OPEN_TURF_LAYER
	var/aportalid = "REPLACETHIS"
	var/aportalgoesto = "REPLACETHIS"
	var/aallmig

/obj/structure/travel_ladder/Initialize()
	GLOB.traveltiles += src
	. = ..()

/obj/structure/travel_ladder/Destroy()
	GLOB.traveltiles -= src
	. = ..()

/obj/structure/travel_ladder/attack_ghost(mob/dead/observer/user)
	if(user.Adjacent(src))
		if(!aportalgoesto)
			return
		var/fou
		for(var/obj/structure/travel_ladder/T in shuffle(GLOB.traveltiles))
			if(T.aportalid == aportalgoesto)
				if(T == src)
					continue
				user.forceMove(T.loc)
				fou = TRUE
				break
		if(!fou)
			to_chat(user, "<b>It is a dead end.</b>")


/obj/structure/travel_ladder/attack_hand(mob/user)
	var/fou
	if(!aportalgoesto)
		return
	for(var/obj/structure/travel_ladder/T in shuffle(GLOB.traveltiles))
		if(T.aportalid == aportalgoesto)
			if(T == src)
				continue
			if(!can_go(user))
				return
			if(user.pulledby)
				return
			to_chat(user, "<b>I begin to travel...</b>")
			if(do_after(user, 4 SECONDS, target = src))
				var/mob/living/L = user
				var/atom/movable/pullingg = L.pulling
				L.recent_travel = world.time
				if(pullingg)
					pullingg.forceMove(T.loc)
					pullingg.recent_travel = world.time
				L.forceMove(T.loc)
				if(pullingg)
					L.start_pulling(pullingg, supress_message = TRUE)
			fou = TRUE
			break
	if(!fou)
		to_chat(user, "<b>It is a dead end.</b>")
	. = ..()

/obj/structure/travel_ladder/attack_basic_mob(mob/user)
	var/fou
	if(!aportalgoesto)
		return
	for(var/obj/structure/travel_ladder/T in shuffle(GLOB.traveltiles))
		if(T.aportalid == aportalgoesto)
			if(T == src)
				continue
			if(!can_go(user))
				return
			if(user.pulledby)
				return
			to_chat(user, "<b>I begin to travel...</b>")
			if(do_after(user, 4 SECONDS, target = src))
				var/mob/living/L = user
				var/atom/movable/pullingg = L.pulling
				L.recent_travel = world.time
				if(pullingg)
					pullingg.forceMove(T.loc)
					pullingg.recent_travel = world.time
				L.forceMove(T.loc)
				if(pullingg)
					L.start_pulling(pullingg, supress_message = TRUE)
			fou = TRUE
			break
	if(!fou)
		to_chat(user, "<b>It is a dead end.</b>")
	. = ..()

/obj/structure/travel_ladder/proc/can_go(atom/movable/AM)
	if(AM.recent_travel)
		if(world.time < AM.recent_travel + 5 DECISECONDS) //half-a-second cooldown
			return FALSE
	return TRUE

/atom/movable
	var/recent_travel = 0

//mobs, such as the blacksite version of the statues

/mob/living/basic/statue/blacksite
	desc = "An excellently well-carved marble statue. You swear it's looking at you."
	icon = 'icons/mob/simple/blacksite.dmi'
	faction = list(FACTION_BLACKSITE, FACTION_STATUE)
	icon_state = "statue_demon"
	maxHealth = 500
	health = 500
	obj_damage = 100
	melee_damage_lower = 45
	melee_damage_upper = 80
	attack_verb_continuous = "slams"
	attack_verb_simple = "punch"

/mob/living/basic/blacksite

/mob/living/basic/blacksite/clown_demon
	name = "clown statue"
	desc = "A statue of a clown. It gives you the creeps."
	faction = list(FACTION_BLACKSITE, FACTION_STATUE, FACTION_NEUTRAL) //by default it ignores things
	icon = 'icons/mob/simple/blacksite.dmi'
	icon_state = "statue_demon_clown"
	maxHealth = 400
	health = 400
	obj_damage = 50
	melee_damage_lower = 35
	melee_damage_upper = 45
	speed = -1 //if you hit it it turns into a miniboss and WILL kick your ass; while more fragile than the regular statues, it goes fast and cant be stunned by observation
	ai_controller = /datum/ai_controller/basic_controller/blacksite_clown
	/// Type of bullet we use
	var/casingtype = /obj/item/ammo_casing/caseless/blacksite_clown
	/// Sound to play when firing weapon
	var/projectilesound = 'sound/items/airhorn.ogg'
	/// number of burst shots
	var/burst_shots = 2
	/// Time between taking shots
	var/ranged_cooldown = 1 SECONDS
	var/enraged = FALSE //is +ENRAGED?

/mob/living/basic/blacksite/clown_demon/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/relay_attackers)
	RegisterSignal(src, COMSIG_ATOM_WAS_ATTACKED, PROC_REF(on_attacked))
	AddComponent(\
		/datum/component/ranged_attacks,\
		casing_type = casingtype,\
		projectile_sound = projectilesound,\
		cooldown_time = ranged_cooldown,\
		burst_shots = burst_shots,\
	)
	if (ranged_cooldown <= 1 SECONDS)
		AddComponent(/datum/component/ranged_mob_full_auto)

/mob/living/basic/blacksite/clown_demon/proc/on_attacked(mob/source, mob/living/attacker) //YOU ARE IN FOR A WORLD OF HURT
	SIGNAL_HANDLER
	if (enraged != TRUE)
		to_chat(attacker, span_warning("You may have made a very slight mistake there."))
		desc = "A bananium statue with a huge, gaping maw in place of the neck. It's not happy."
		speed = 5
		faction = list(FACTION_BLACKSITE, FACTION_STATUE)
		icon_state = "statue_demon_clown_enraged"
		visible_message(span_boldannounce("The statue's mouth suddenly snaps open, and it SCREAMS!"))
		playsound(get_turf(src), 'sound/hallucinations/wail.ogg', 100, vary = TRUE, pressure_affected = TRUE)
		enraged = TRUE

/obj/item/ammo_casing/caseless/blacksite_clown
	name = "bananium fragment"
	desc = "A fragment of bananium that seems to have fallen off something bigger."
	projectile_type = /obj/projectile/bullet/honker/slow

/obj/projectile/bullet/honker/slow
	speed = 1.4

/datum/ai_controller/basic_controller/blacksite_clown //I HAVE NO IDEA HOW ANY OF THIS CODE WORKS RATVAR HAVE MERCY
	blackboard = list(
		BB_BASIC_MOB_STOP_FLEEING = TRUE,
	)

	ai_movement = /datum/ai_movement/basic_avoidance
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_nearest_target_to_flee,
		/datum/ai_planning_subtree/flee_target,
		/datum/ai_planning_subtree/basic_ranged_attack_subtree/blacksite_clown,
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/attack_obstacle_in_path,
		/datum/ai_planning_subtree/basic_melee_attack_subtree,
	)

/datum/ai_planning_subtree/basic_ranged_attack_subtree/blacksite_clown
	ranged_attack_behavior = /datum/ai_behavior/basic_ranged_attack/blacksite_clown

/datum/ai_behavior/basic_ranged_attack/blacksite_clown
	action_cooldown = 2 SECONDS
	required_distance = 3
	avoid_friendly_fire = FALSE //get stunned idiot
