/obj/item/weapon/gun/projectile/automatic/sol
	name = "FS CAR .25 CS \"Sol\""
	desc = "A standard-issue weapon used by Aegis operatives. Compact and reliable. Uses .25 Caseless rounds."
	icon = 'icons/obj/guns/projectile/sol.dmi'
	icon_state = "sol"
	item_state = "sol"
	w_class = ITEM_SIZE_BULKY
	ammo_mag = "ih_sol"
	load_method = MAGAZINE
	mag_well = MAG_WELL_IH
	caliber = CAL_CLRIFLE
	magazine_type = /obj/item/ammo_magazine/ihclrifle
	auto_eject = 1
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 12)
	price_tag = 2300
	rarity_value = 24
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	recoil_buildup = 5
	damage_multiplier = 1.25
	penetration_multiplier = 1.1
	one_hand_penalty = 5 //bullpup rifle (this one is smaller and carbine, so it's 5)
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_SOL)

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		BURST_3_ROUND
		)

/obj/item/weapon/gun/projectile/automatic/sol/proc/update_charge()
	if(!ammo_magazine)
		return
	var/ratio = ammo_magazine.stored_ammo.len / ammo_magazine.max_ammo
	if(ratio < 0.25 && ratio != 0)
		ratio = 0.25
	ratio = round(ratio, 0.25) * 100
	overlays += "sol_[ratio]"

/obj/item/weapon/gun/projectile/automatic/sol/update_icon()
	..()

	icon_state = initial(icon_state) + (ammo_magazine ?  "-full" : "")
	set_item_state(ammo_magazine ?  "-full" : "", back = TRUE)
	overlays.Cut()
	update_charge()

/obj/item/weapon/gun/projectile/automatic/sol/rds
	desc = "A standard-issue weapon used by Aegis operatives. Compact and reliable. Uses .25 Caseless Rifle rounds. This one comes with red dot sight."
	icon_state = "sol-eot"
	price_tag = 2350
	zoom_factor = 0.2
