/// Nanotrasen Blacksite away mission

/area/awaymission/blacksite
	name = "Blacksite"

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

// LIGHT CONTAINMENT ZONE

/area/awaymission/blacksite/light_containment
	name = "Blacksite Light Containment Zone"
	icon_state = "awaycontent2"

/area/awaymission/blacksite/light_containment/checkpoint
	name = "Blacksite Light Containment Zone Checkpoint 1"

/area/awaymission/blacksite/light_containment/checkpoint/hcz
	name = "Blacksite Light Containment Zone Checkpoint 2"

/area/awaymission/blacksite/light_containment/checkpoint/engi
	name = "Blacksite Light Containment Zone Auxiliary Checkpoint"

/area/awaymission/blacksite/light_containment/mrnd
	name = "Blacksite Mining Research"

/area/awaymission/blacksite/light_containment/prison
	name = "Blacksite Prison"





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

/obj/itme/card/id/advanced/old/blacksite
	name = "blacksite ID card"

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
		if(SM.shuttle_id == "blacksite_submarine")

			var/area/A = get_area(landing_spot)

			Mport = new(landing_spot)
			Mport.shuttle_id = "landing_zone_dock"
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
	qdel() //heheheha

/obj/structure/blacksite_sub_beacon/proc/clear_cooldown()
	anti_spam_cd = 0

/obj/structure/blacksite_sub_beacon/attack_robot(mob/user)
	return attack_hand(user) //So borgies can help

#undef ZONE_SET
#undef BAD_ZLEVEL
#undef BAD_AREA
#undef BAD_COORDS
#undef BAD_TURF
#undef BAD_LAYER
