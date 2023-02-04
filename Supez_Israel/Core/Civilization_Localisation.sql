/*
	Civilization Text Entries
	Authors: MC, Supez
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Leader_Localisation.sql, are where we define the text that will actually display, in-game. Fundamentally, certain unique code strings have associated 'localisation' strings. In this file, we specify the exact string of characters that will display in place of the unique code string.

-- In all cases, localisation strings always start with LOC_ - such that we can easily tell them apart from game code.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization

-- Defines the text strings that identify your custom civilization by name.
-----------------------------------------------

	('en_US',	'LOC_CIVILIZATION_SUPEZ_ISRAEL_NAME',			'Israel'			),
	('en_US',	'LOC_CIVILIZATION_SUPEZ_ISRAEL_DESCRIPTION',	'Israelite Empire'	),
	('en_US',	'LOC_CIVILIZATION_SUPEZ_ISRAEL_ADJECTIVE',  	'Israelite'			),
	
-----------------------------------------------
-- Civilization Unique Ability

-- Defines the text strings that name and describe your custom civilization's Unique Ability.

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

	('en_US',	'LOC_TRAIT_CIVILIZATION_SUPEZ_ISRAEL_NAME',				'Let the Gods feed us!'						),
	('en_US',	'LOC_TRAIT_CIVILIZATION_SUPEZ_ISRAEL_DESCRIPTION',	
	'Holy Site buildings will yield an additional +2 [ICON_Food] Food, alongside their usual [ICON_Faith] Faith.'	),

-----------------------------------------------
-- Civilization Unique Infrastructure (Improvement)

-- Defines the text strings that name and describe your custom civilization's Unique Infrastructure (in this case, Improvement) and its capability.

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

	('en_US',	'LOC_IMPROVEMENT_SUPEZ_SANHEDRIN_NAME',				'Colossal Head'								),
	('en_US',	'LOC_IMPROVEMENT_SUPEZ_SANHEDRIN_DESCRIPTION',
	'Unlocks the Builder ability to construct a Colossal Head, unique to the Olmec. [NEWLINE][NEWLINE] +1 [ICON_Faith] Faith, +1 [ICON_SCIENCE] Science. +1 [ICON_Faith] Faith if adjacent to a Campus, +1 [ICON_Science] Science if adjacent to a Holy Site. Cities with at least four Colossal heads provide a [ICON_GreatArtist] Great Artist Point. May be built on Rainforest. Cannot be constructed adjacent to another Colossal Head.'	),

	('en_US',	'LOC_WONDER_SUPEZ_SOLOMONS_TEMPLE_NAME',				'Solomons Temple'								),
	('en_US',	'LOC_WONDER_SUPEZ_SOLOMONS_TEMPLE_DESCRIPTION',
	'UFaHoly Site.orest. Cannot be constructed adjacent to another Colossal Head.'	),

-----------------------------------------------
-- Civilization Unique Unit

-- Defines the text strings that name and describe your custom civilization's Unique Unit and its capability. Where this replaces an existing unit, it's customary to mention this.

-- The LOC_ABILITY_UNITNAME is a brief description that appears in a separate Civilopedia entry, as well as part of a hover 'tooltip' in-game (I think).

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

	('en_US',	'LOC_UNIT_SUPEZ_MACCABEE_NAME',	'Maccabee'	),
	('en_US',	'LOC_UNIT_SUPEZ_MACCABEE_DESCRIPTION',	 
	'The elite warriors of the Olmec military, these fearsome, masked warriors replace the Spearman and receive a [ICON_Strength] Combat Strength boost during [ICON_Glory_Golden_Age] Golden Ages.'	),

	('en_US',	'LOC_ABILITY_SUPEZ_MACCABEE',  '+5 [ICON_Strength] Combat Strength during a [ICON_Glory_Golden_Age] Golden Age.'	),

-----------------------------------------------
-- Mountains

-- Defines the text strings to be used for the custom mountain range names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom mountain range names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

	('en_US',	'LOC_NAMED_MOUNTAIN_JUDAEAN_MOUNTAINS',		'Judaean Mountains'	),
	('en_US',	'LOC_NAMED_MOUNTAIN_MOUNT_GILBOA',			'Mount Gilboa'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_MOUNT_CARMEL',			'Mount Carmel'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_EILAT_MOUNTAINS',		'Eilat Mountains'	),

-----------------------------------------------
-- Rivers

-- Defines the text strings to be used for the custom river names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom river names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

	('en_US',	'LOC_NAMED_RIVER_KISHON',		'Kishon River'		),
	('en_US',	'LOC_NAMED_RIVER_JABBOK',		'Jabbok River'		),
	('en_US',	'LOC_NAMED_RIVER_LAKHISH',		'Lachish River'		),
	('en_US',	'LOC_NAMED_RIVER_BESOR',		'Besor River'		),
	('en_US',	'LOC_NAMED_RIVER_SOREK',		'Sorek River'		),
	('en_US',	'LOC_NAMED_RIVER_ALEXANDER',	'Alexander River'	),
	('en_US',	'LOC_NAMED_RIVER_HADERA',		'Hadera River'		),
	('en_US',	'LOC_NAMED_RIVER_YARKON',		'Yarkon River'		),

-----------------------------------------------
-- Lakes

-- Defines the text strings to be used for the custom lake names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom lake names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

	('en_US',	'LOC_NAMED_LAKE_KINNERET',		'Kinneret'	),
	('en_US',	'LOC_NAMED_LAKE_MEROM',			'Merom'		),
	('en_US',	'LOC_NAMED_LAKE_RAM',			'Ram'		),

-----------------------------------------------
-- Deserts

-- Defines the text strings to be used for the custom desert names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom desert names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

	('en_US',	'LOC_NAMED_DESERT_NEGEV',		'Negev'				),
	('en_US',	'LOC_NAMED_DESERT_ZIN',			'Zin Desert'		),
	('en_US',	'LOC_NAMED_DESERT_JUDAEAN',		'Judaean Desert' 	),
	('en_US',	'LOC_NAMED_DESERT_ARAVA',		'Arava' 			),

-----------------------------------------------
-- Volcanoes

-- Defines the text strings to be used for the custom volcano names that were defined in Civilization_Config.sql. As per the note in that file, these should only be present if you are developing a mod that will leverage/require Gathering Storm (Expansion2) functionality.

-- These entries need only be here if custom volcano names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

-----------------------------------------------
-- Cities

-- Defines the text strings to be used for city names by the custom civilization, that were defined in Civilization_Config.sql.

-- The order in which city names for a civilization appear is partly affected by the value set for the RandomCityNameDepth within the Civilizations table (again, in Civilization_Config.sql).
-----------------------------------------------

	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_1',		'Jerusalem'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_2',		'Hebron'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_3',		'Lachish'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_4',		'Samaria'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_5',		'Beersheba'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_6',		'Hazor'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_7',		'Gibeon'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_8',		'Gezer'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_9',		'Shiloh'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_10',	'Megiddo'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_11',	'Jezreel'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_12',	'Shechem'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_13',	'Jericho'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_14',	'Beit She''an'	),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_15',	'Bethlehem'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_16',	'Yavne'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_17',	'Magdala'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_18',	'Modi''in'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_19',	'Mahanaim'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_20',	'Jaffa'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_21',	'Dan'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_22',	'Lod'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_23',	'Tzipori'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_24',	'Kinneret'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_25',	'Shikhin'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_26',	'Dor'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_27',	'Maresha'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_28',	'Adullam'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_29',	'Dothan'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_30',	'Kedesh'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_31',	'Azekah'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_32',	'Yodfat'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_33',	'Gamla'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_34',	'Adora'			),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_35',	'Tirzah'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_36',	'Keilah'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_37',	'Jabesh-Gilead'	),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_38',	'Ashdod'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_39',	'Penuel'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_40',	'Michmas'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_41',	'Mizpah'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_42',	'Arbatta'		),
	('en_US',	'LOC_CITY_NAME_SUPEZ_ISRAEL_43',	'Benebarak'		),
	
-----------------------------------------------
-- Citizens

-- Defines the text strings to be used for the names of citizens by the custom civilization, that were defined in Civilization_Config.sql.
-----------------------------------------------
	
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_1',				'Nathan'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_2',				'Noah'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_3',				'Joshua'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_4',				'Jacob'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_5',				'Isaac'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_6',				'Abraham'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_7',				'Isaiah'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_8',				'Hezekiah'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_9',				'Elijah'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_10',				'Samuel'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_1',			'Sarah'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_2',			'Rachel'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_3',			'Esther'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_4',			'Miriam'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_5',			'Abigail'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_6',			'Salome'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_7',			'Ruth'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_8',			'Rebecca'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_9',			'Hannah'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_10',			'Leah'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_1',		'Adam'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_2',		'Ethan'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_3',		'Jonathan'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_4',		'Aaron'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_5',		'Daniel'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_6',		'Levi'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_7',		'Benjamin'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_8',		'Menachem'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_9',		'Avi'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_10',		'Eliyahu'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_1',		'Tamar'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_2',		'Yael'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_3',		'Shira'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_4',		'Talia'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_5',		'Naomi'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_6',		'Malka'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_7',		'Shoshana'	),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_8',		'Yaffa'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_9',		'Orly'		),
	('en_US',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_10',	'Hadassa'	),
	
-----------------------------------------------
-- Info

-- These define the text strings that primarily appear in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.
-----------------------------------------------

	('en_US',	'LOC_CIVINFO_SUPEZ_ISRAEL_LOCATION',		'Asia'			),
	('en_US',	'LOC_CIVINFO_SUPEZ_ISRAEL_SIZE',			''				),
	('en_US',	'LOC_CIVINFO_SUPEZ_ISRAEL_POPULATION',		''				),
	('en_US',	'LOC_CIVINFO_SUPEZ_ISRAEL_CAPITAL',			'Jerusalem'		),

-----------------------------------------------
-- Civilopedia

-- The content of the below entries represents the detailed entry for your custom civilization in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_PREFIX_CIVNAME_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number).

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_1',		
	'The Olmecs were the earliest known major Mesoamerican civilization. Following a progressive development in Soconusco, they occupied the tropical lowlands of the modern-day Mexican states of Veracruz and Tabasco. It has been speculated that the Olmecs derived in part from the neighboring Mokaya or Mixe–Zoque cultures.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_2',		
	'The Olmecs flourished during the Mesoamerican formative period, dating roughly from as early as 1500 BCE to about 400 BCE. Pre-Olmec cultures had flourished since about 2500 BCE, but by 1600–1500 BCE, early Olmec culture had emerged, centered on the San Lorenzo Tenochtitlan site near the coast in southeast Veracruz. They were the first Mesoamerican civilization, and laid many of the foundations for the civilizations that followed. Among other "firsts", the Olmec appeared to practice ritual bloodletting and played the Mesoamerican ballgame, hallmarks of nearly all subsequent Mesoamerican societies. The aspect of the Olmecs most familiar now is their artwork, particularly the aptly named "colossal heads". The Olmec civilization was first defined through artifacts which collectors purchased on the pre-Columbian art market in the late 19th century and early 20th century. Olmec artworks are considered among ancient America`s most striking.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_3',	
	'The Olmec heartland is the area in the Gulf lowlands where it expanded after early development in Soconusco, Veracruz. This area is characterized by swampy lowlands punctuated by low hills, ridges, and volcanoes. The Tuxtlas Mountains rise sharply in the north, along the Bay of Campeche. Here, the Olmec constructed permanent city-temple complexes at San Lorenzo Tenochtitlan, La Venta, Tres Zapotes, and Laguna de los Cerros. In this region, the first Mesoamerican civilization emerged and reigned from c. 1400–400 BCE.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_4',	
	'Origins'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_5',	
	'The beginnings of Olmec civilization have traditionally been placed between 1400 and 1200 BCE. Past finds of Olmec remains ritually deposited at El Manati shrine (near San Lorenzo) moved this back to at least 1600–1500 BCE. It seems that the Olmec had their roots in early farming cultures of Tabasco, which began between 5100 BCE and 4600 BCE. These shared the same basic food crops and technologies of the later Olmec civilization.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_6',	
	'What is today called Olmec first appeared fully within the city of San Lorenzo Tenochtitlan, where distinctive Olmec features occurred around 1400 BCE. The rise of civilization was assisted by the local ecology of well-watered alluvial soil, as well as by the transportation network provided by the Coatzacoalcos River basin. This environment may be compared to that of other ancient centers of civilization: the Nile, Indus, and Yellow River valleys, and Mesopotamia. This highly productive environment encouraged a densely concentrated population, which in turn triggered the rise of an elite class. The elite class created the demand for the production of the symbolic and sophisticated luxury artifacts that define Olmec culture. Many of these luxury artifacts were made from materials such as jade, obsidian, and magnetite, which came from distant locations and suggest that early Olmec elites had access to an extensive trading network in Mesoamerica. The source of the most valued jade was the Motagua River valley in eastern Guatemala, and Olmec obsidian has been traced to sources in the Guatemala highlands, such as El Chayal and San Martin Jilotepeque, or in Puebla, distances ranging from 200 to 400 km (120–250 miles) away, respectively.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_7',	
	'The state of Guerrero, and in particular its early Mezcala culture, seem to have played an important role in the early history of Olmec culture. Olmec-style artifacts tend to appear earlier in some parts of Guerrero than in the Veracruz-Tabasco area. In particular, the relevant objects from the Amuco-Abelino site in Guerrero reveal dates as early as 1530 BCE. The city of Teopantecuanitlan in Guerrero is also relevant in this regard.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_8',	
	'La Venta'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_9',	
	'The first Olmec center, San Lorenzo, was all but abandoned around 900 BCE at about the same time that La Venta rose to prominence. A wholesale destruction of many San Lorenzo monuments also occurred circa 950 BCE, which may indicate an internal uprising or, less likely, an invasion. The latest thinking, however, is that environmental changes may have been responsible for this shift in Olmec centers, with certain important rivers changing course.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_10',	
	'In any case, following the decline of San Lorenzo, La Venta became the most prominent Olmec center, lasting from 900 BCE until its abandonment around 400 BCE. La Venta sustained the Olmec cultural traditions with spectacular displays of power and wealth. The Great Pyramid was the largest Mesoamerican structure of its time. Even today, after 2500 years of erosion, it rises 34 m (112 ft) above the naturally flat landscape. Buried deep within La Venta lay opulent, labor-intensive "offerings" – 1000 tons of smooth serpentine blocks, large mosaic pavements, and at least 48 separate deposits of polished jade celts, pottery, figurines, and hematite mirrors.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_11',	
	'Decline'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_12',	
	'Scholars have yet to determine the cause of the eventual extinction of the Olmec culture. Between 400 and 350 BCE, the population in the eastern half of the Olmec heartland dropped precipitously, and the area was sparsely inhabited until the 19th century. According to archaeologists, this depopulation was probably the result of "very serious environmental changes that rendered the region unsuited for large groups of farmers", in particular changes to the riverine environment that the Olmec depended upon for agriculture, hunting and gathering, and transportation. These changes may have been triggered by tectonic upheavals or subsidence, or the silting up of rivers due to agricultural practices.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_13',	
	'One theory for the considerable population drop during the Terminal Formative period is that the Olmec relocated their settlements due to volcanism, instead of suffering from extinction. Volcanic eruptions during the Early, Late and Terminal Formative periods would have blanketed the lands and forced the Olmec to move their settlements.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_SUPEZ_ISRAEL_CHAPTER_HISTORY_PARA_14',	
	'Whatever the cause, within a few hundred years of the abandonment of the last Olmec cities, successor cultures became firmly established. The Tres Zapotes site, on the western edge of the Olmec heartland, continued to be occupied well past 400 BCE, but without the hallmarks of the Olmec culture. This post-Olmec culture, often labeled Epi-Olmec, has features similar to those found at Izapa, some 550 km (330 miles) to the southeast.'),

	-----------------------------------------------
-- Unique Unit Civilopedia Entry

-- The content of the below entry represents the detailed entry for your custom civilization's unique unit in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_UNITS_PAGE_UNIT_PREFIX_CIVNAME_UU_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number). Other entries are possible for different unique element-types - such as BUILDINGS or IMPROVEMENTS. These require replacing UNITS, UNIT and UU respectively in the below example with the appropriate strings.

-- Unique Building example:			LOC_PEDIA_BUILDINGS_PAGE_BUILDING_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X
-- Unique Improvement example:		LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_SUPEZ_ISRAEL_UU_CHAPTER_HISTORY_PARA_1',  	
	'The Olmecs first used warfare to expand trade and access to resources. Fighters from the Olmec city of San Lorenzo utilized obsidian-edged weapons. Sleight of hand and nimble of foot, they wore carved masks to intimidate their foes.'	);

