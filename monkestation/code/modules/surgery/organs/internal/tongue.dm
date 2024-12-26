/obj/item/organ/internal/tongue/robot/clockwork
	name = "dynamic micro-phonograph"
	desc = "An old-timey looking device connected to an odd, shifting cylinder."
	icon = 'monkestation/icons/obj/medical/organs/organs.dmi'
	icon_state = "tongueclock"

/obj/item/organ/internal/tongue/robot/clockwork/better
	name = "amplified dynamic micro-phonograph"

/obj/item/organ/internal/tongue/robot/clockwork/better/handle_speech(datum/source, list/speech_args)
	speech_args[SPEECH_SPANS] |= SPAN_ROBOT
	//speech_args[SPEECH_SPANS] |= SPAN_REALLYBIG  //i disabled this, its abnoxious and makes their chat take 3 times as much space in chat

/obj/item/organ/internal/tongue/arachnid
	name = "arachnid tongue"
	desc = "The tongue of an Arachnid. Mostly used for lying."
	say_mod = "chitters"
	modifies_speech = TRUE
	disliked_foodtypes = NONE // Okay listen, i don't actually know what irl spiders don't like to eat and i'm pretty tired of looking for answers.
	liked_foodtypes = GORE | MEAT | BUGS | GROSS

/obj/item/organ/internal/tongue/arachnid/get_scream_sound()
	return 'monkestation/sound/voice/screams/arachnid/arachnid_scream.ogg'

/obj/item/organ/internal/tongue/arachnid/get_laugh_sound()
	return 'monkestation/sound/voice/laugh/arachnid/arachnid_laugh.ogg'

/obj/item/organ/internal/tongue/arachnid/modify_speech(datum/source, list/speech_args) //This is flypeople speech
	var/static/regex/fly_buzz = new("z+", "g")
	var/static/regex/fly_buZZ = new("Z+", "g")
	var/message = speech_args[SPEECH_MESSAGE]
	if(message[1] != "*")
		message = fly_buzz.Replace(message, "zzz")
		message = fly_buZZ.Replace(message, "ZZZ")
		message = replacetext(message, "s", "z")
		message = replacetext(message, "S", "Z")
	speech_args[SPEECH_MESSAGE] = message

/obj/item/organ/internal/tongue/arachnid/get_possible_languages()
	return ..() + /datum/language/buzzwords
