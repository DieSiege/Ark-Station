/obj/machinery/light_color_switch
	name = "light color switch"
	desc = "Paint it, Black."
	icon = 'icons/obj/power.dmi'
	icon_state = "light-p"
	anchored = TRUE
	idle_power_usage = 20
	var/area_light_color = "#FFFFFF"
	var/area/connected_area = null

/obj/machinery/light_color_switch/Initialize()
	. = ..()
	connected_area = get_area(src)
	if(name == initial(name))
		SetName("light color switch ([connected_area.name])")

	for(var/obj/machinery/light/L in connected_area)
		if(!L.lightbulb)
			continue

		area_light_color = L.lightbulb.b_colour
		break

	update_icon()

/obj/machinery/light_color_switch/on_update_icon()
	overlays.Cut()
	if(stat & (NOPOWER|BROKEN))
		set_light(0)
	else
		var/image/I = image('code_ark/icons/obj/power.dmi', "light-overlay-blank")
		I.color = area_light_color
		overlays += I
		set_light(0.1, 0.1, 1, 2, area_light_color)

/obj/machinery/light_color_switch/examine(mob/user, distance)
	. = ..()
	if(distance)
		to_chat(user, "A light color switch. It is has <font color='[area_light_color]'><b>color set</b></font>.")

/obj/machinery/light_color_switch/interface_interact(mob/user)
	if(stat & (NOPOWER|BROKEN))
		return FALSE
	if(CanInteract(user, DefaultTopicState()))
		switch_color(user, input("Input a color for this room.",, area_light_color) as null|color)
		playsound(src, "switch", 30)
		return TRUE

/obj/machinery/light_color_switch/proc/switch_color(mob/user, color)
	if(!color)
		return
	if(color == area_light_color)
		return
	if(stat & (NOPOWER|BROKEN))
		return
	if(!user.Adjacent(src))
		return

	for(var/obj/machinery/light/L in connected_area)
		if(!L.lightbulb)
			continue

		L.lightbulb.b_colour = color
		L.update_icon()

	area_light_color = color
	update_icon()
	to_chat(user, SPAN_NOTICE("You changed the area light color to a <font color='[color]'><b>new</b></font>."))

/obj/machinery/light_color_switch/emp_act(severity)
	if(stat & (BROKEN|NOPOWER))
		return

