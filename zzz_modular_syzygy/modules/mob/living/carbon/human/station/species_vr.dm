//Intent behind the Akula Mods. I'm wanting to make a species that's a little more resistant to pressure,
//takes a little less oxygen, and is a little more sensitive to temperature changes.

/datum/species/akula
  breath_pressure = 13

	oxy_mod = 0.95 //Have you ever tried to choke out a shark?
	flash_mod = 1.1 //MY BRAND!

  cold_level_1 = 270 //Default 260
	cold_level_2 = 220 //Default 200
	cold_level_3 = 140  //Default 120

	heat_level_1 = 350 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000

//A little hardier for warmer temperatures, surviving on the plains of their homeworld. A little faster as well.
/datum/species/fl_zorren

	slowdown = -0.15 //Same as Tajaran.

  cold_level_1 = 270 //Default 260
  cold_level_2 = 220 //Default 200
  cold_level_3 = 140  //Default 120

  heat_level_1 = 370 //Default 360
  heat_level_2 = 420 //Default 400
  heat_level_3 = 1200 //Default 1000

//A little easier to breathe, a little hardier for cold temperatures, fluff makes them a little more likely to overheat
/datum/species/hi_zoxxen
  breath_pressure = 13 //Highlander Zorren, Living in the mountains makes them used to having less air available.

  cold_level_1 = 250 //Default 260
	cold_level_2 = 190 //Default 200
	cold_level_3 = 130  //Default 120

	heat_level_1 = 340 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000

/datum/species/sergal



/datum/species/nevrean


/*Intent behind the Teshari mods; Birbs, well, fluffraptors. Wanted to try something else out here,
Not wanting to go for the pure glass cannon, lore says that they came to up around Tajarans, so it makes sense that the bigger species
would bully them into the colder climates. */
/datum/species/teshari
  darksight = 8 //Big fucking eyes, you're damn right they can see better than everyone else in the dark.
  flash_mod = 2 //Big fucking eyes, you're damn right they get fucking ass blasted by a flash.

  brute_mod = 0.95 // Big fluffy fuckin feathers, might just get a big mouthful of fluff if you tried to bite them.
	burn_mod = 1.15 // Big fluffy fuckin feathers, might just light make a nice candle.

  cold_level_1 = 190 //Default 260 Like Tajarans, but better.
	cold_level_2 = 130 //Default 200
	cold_level_3 = 90  //Default 120

	heat_level_1 = 320 //Default 360 Like Tajarans, but worse.
	heat_level_2 = 370 //Default 400
	heat_level_3 = 7500 //Default 1000

/datum/species/vulpkanin
