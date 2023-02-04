/*
	Main Civilization Configuration
	Authors: MC, Supez
*/

-----------------------------------------------
-- Types

-- This inserts the civilization reference into the primary Data Types table as a playable Civilization. This is mandatory. The string listed under 'Type' must be used throughout the mod when referring to the CivilizationType.

-- It is customary for this to take the following format: CIVILIZATION_PREFIX_CIVNAME

-- PREFIX: A 'unique', brief string of characters - often derived from the modder's initials, name or other alias (e.g. MC, MATT or MYALIAS). This is used to differentiate from other mods, primarily.
-- CIVNAME: The name of the civilization itself (e.g. FRANCE, GERMANY or RUSSIA).
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind					)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'KIND_CIVILIZATION'		);
		
-----------------------------------------------
-- Civilizations

-- This inserts some basic configuration into the list of Civilizations that the game recognises. The below entry contains all seven columns required for this table to be fully populated - no fields are ommitted in the below example.

-- Locally-referenced values (i.e. those defined in this mod): CivilizationType, Name, Description, Adjective
-- Game-referenced values (i.e. those drawn from the base game):

-- StartingCivilizationLevelType: For a playable civilization, this must always be: CIVILIZATION_LEVEL_FULL_CIV. The game utilises this string to differentiate between playable civilizations and city-states (and any other lesser entities).
-- RandomCityNameDepth: An integer value, this is the size of the pool of city names from which the game chooses the next built city's name. The capital will always be built first; after which, the game will pick randomly from the next X cities listed (where X = value).
-- Ethnicity: Picked from an explicit list of defined ethnicities, this must be one of ETHNICITY_AFRICAN, ETHNICITY_ASIAN, ETHNICITY_EURO, ETHNICITY_MEDIT or ETHNICITY_SOUTHAM
-----------------------------------------------

INSERT INTO	Civilizations
		(
			CivilizationType,
			Name,
			Description,
			Adjective,
			StartingCivilizationLevelType,
			RandomCityNameDepth,
			Ethnicity
		)
VALUES	
		(
			'CIVILIZATION_SUPEZ_ISRAEL', --CivilizationType
			'LOC_CIVILIZATION_SUPEZ_ISRAEL_NAME', -- Name
			'LOC_CIVILIZATION_SUPEZ_ISRAEL_DESCRIPTION', -- Description
			'LOC_CIVILIZATION_SUPEZ_ISRAEL_ADJECTIVE', -- Adjective
			'CIVILIZATION_LEVEL_FULL_CIV', -- StartingCivilizationLevelType
			10, -- RandomCityNameDepth
			'ETHNICITY_MEDIT' -- Ethnicity
		);

-----------------------------------------------
-- NamedMountains

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named mountain range has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom mountain range names defined in the NamedMountainCivilizations, below.

-- Compatibility: NamedMountains were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,						Name										)
VALUES	('NAMED_MOUNTAIN_JUDAEAN_MOUNTAINS',	'LOC_NAMED_MOUNTAIN_JUDAEAN_MOUNTAINS',		),
		('NAMED_MOUNTAIN_MOUNT_GILBOA',			'LOC_NAMED_MOUNTAIN_MOUNT_GILBOA',			),
		('NAMED_MOUNTAIN_MOUNT_CARMEL',			'LOC_NAMED_MOUNTAIN_MOUNT_CARMEL',			),
		('NAMED_MOUNTAIN_EILAT_MOUNTAINS',		'LOC_NAMED_MOUNTAIN_EILAT_MOUNTAINS',		);

-----------------------------------------------
-- NamedMountainCivilizations

-- This ties named mountain ranges to your custom civilization. This is optional. The entries for NamedMountainType can either be new, custom mountain ranges or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedMountainCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType							)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_NAMED_MOUNTAIN_JUDAEAN_MOUNTAINS',		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_NAMED_MOUNTAIN_MOUNT_GILBOA',			),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_NAMED_MOUNTAIN_MOUNT_CARMEL',			),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_NAMED_MOUNTAIN_EILAT_MOUNTAINS',		);

-----------------------------------------------
-- NamedRivers

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named river has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom river names defined in the NamedRiverCivilizations, below.

-- Compatibility: NamedRivers were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name							)
VALUES	('NAMED_RIVER_JORDAN',		'LOC_NAMED_RIVER_JORDAN_NAME'	),
		('NAMED_RIVER_KISHON',		'LOC_NAMED_RIVER_KISHON'		),
		('NAMED_RIVER_JABBOK',		'LOC_NAMED_RIVER_JABBOK'		),
		('NAMED_RIVER_LAKHISH',		'LOC_NAMED_RIVER_LAKHISH'		),
		('NAMED_RIVER_BESOR',		'LOC_NAMED_RIVER_BESOR'			),
		('NAMED_RIVER_SOREK',		'LOC_NAMED_RIVER_SOREK'			),
		('NAMED_RIVER_ALEXANDER',	'LOC_NAMED_RIVER_ALEXANDER'		),
		('NAMED_RIVER_HADERA',		'LOC_NAMED_RIVER_HADERA'		),
		('NAMED_RIVER_YARKON',		'LOC_NAMED_RIVER_YARKON'		);

-----------------------------------------------
-- NamedRiverCivilizations

-- This ties named rivers to your custom civilization. This is optional. The entries for NamedRiverType can either be new, custom rivers or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedRiverCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,				NamedRiverType				)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_JORDAN'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_KISHON'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_JABBOK'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_LAKHISH'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_BESOR'			),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_SOREK'			),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_ALEXANDER'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_HADERA'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_RIVER_YARKON'		);

-----------------------------------------------
-- NamedLakes

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named lake has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom lake names defined in the NamedLakeCivilizations, below.

-- Compatibility: NamedLakes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT OR REPLACE INTO NamedLakes
		(NamedLakeType,				Name						)
VALUES	('NAMED_LAKE_KINNERET',		'LOC_NAMED_LAKE_KINNERET'	),
		('NAMED_LAKE_MEROM',		'LOC_NAMED_LAKE_MEROM'		),
		('NAMED_LAKE_RAM',			'LOC_NAMED_LAKE_RAM'		);

-----------------------------------------------
-- NamedLakeCivilizations

-- This ties named lakes to your custom civilization. This is optional. The entries for NamedLakeType can either be new, custom lakes or those that exist in the Gathering Storm (Expansion2) files. In the below example, the first entry exists already in the game - all of the others we have created ourselves.

-- Compatibility: NamedLakeCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedLakeCivilizations
		(CivilizationType,				NamedLakeType			)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_LAKE_KINNERET'	),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_LAKE_MEROM'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_LAKE_RAM'		);

-----------------------------------------------
-- NamedSeas

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named sea has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom sea names defined in the NamedSeaCivilizations, below.

-- In order to present the code required for NamedSeas, but also to showcase the use of another SQL command - INSERT OR IGNORE - I have chosen, for this example, to only stipulate two NamedSeas, both of which already exist in the game files. Using 'INSERT OR IGNORE', our attempts to create duplicate entries will be ignored. As all of our entries already exist, the four lines of code are not actually needed at all - they are here to provide a representative code example only.

-- Compatibility: NamedSeas were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT OR IGNORE INTO NamedSeas
		(NamedSeaType,						Name										)
VALUES	('NAMED_SEA_MEDITERRANEAN_SEA',		'LOC_NAMED_SEA_MEDITERRANEAN_SEA_NAME'		),
		('NAMED_SEA_RED_SEA',				'LOC_NAMED_SEA_RED_SEA_NAME'				);

-----------------------------------------------
-- NamedSeaCivilizations

-- This ties named seas to your custom civilization. This is optional. The entries for NamedSeaType can either be new, custom seas or those that exist in the Gathering Storm (Expansion2) files. In the below example, both of the entries already exist in the Gathering Storm game files.

-- Compatibility: NamedSeaCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedSeaCivilizations
		(CivilizationType,				NamedSeaType					)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_SEA_MEDITERRANEAN_SEA'	),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_SEA_RED_SEA'				);

-----------------------------------------------
-- NamedDeserts

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named desert has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom desert names defined in the NamedDesertCivilizations, below.

-- Learning Point: In this example, we're configuring three named deserts. Two of these deserts do not exist in the game's NamedDeserts table. However, NAMED_DESERT_SONORAN does. This example illustrates the usefulness of the REPLACE command. It will replace the Name value for NAMED_DESERT_SONORAN with the one we specify. For the other entries - which we're creating - it will add them to the table.

-- The LOC_NAMED_DESERT_SONORA will allow us to give the NAMED_DESERT_SONORAN a new display name, whilst still maintaining the link between NAMED_DESERT_SONORAN and CIVILIZATION_AMERICA. It's a small amendment, but it allows us to adjust the display/flavour text and implement a link to our custom civilization, in one go. If we did not want to adjust the display/flavour text, we could just exclude the entry from the NamedDeserts table, directly below, and include it only in the NamedDesertCivilizations table (in the section after the one below).

-- Compatibility: NamedDeserts were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,			Name						)
VALUES	('NAMED_DESERT_NEGEV',		'LOC_NAMED_DESERT_NEGEV'	),
		('NAMED_DESERT_ZIN',		'LOC_NAMED_DESERT_ZIN'		),
		('NAMED_DESERT_JUDAEAN',	'LOC_NAMED_DESERT_JUDAEAN'	),
		('NAMED_DESERT_ARAVA',		'LOC_NAMED_DESERT_ARAVA'	);

-----------------------------------------------
-- NamedDesertCivilizations

-- This ties named deserts to your custom civilization. This is optional. The entries for NamedDesertType can either be new, custom deserts (those defined above) or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedDeserts were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,				NamedDesertType			)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_DESERT_NEGEV'	),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_DESERT_ZIN'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_DESERT_JUDAEAN'	),
		('CIVILIZATION_SUPEZ_ISRAEL',	'NAMED_DESERT_ARAVA'	);

-----------------------------------------------
-- NamedVolcanoes

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named volcano has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom desert names defined in the NamedVolcanoCivilizations, below.

-- Compatibility: Volcanoes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

-----------------------------------------------
-- NamedVolcanoCivilizations

-- This ties named volcanoes to your custom civilization. This is optional. The entries for NamedVolcanoType can either be new, custom volcanoes or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: Volcanoes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

-----------------------------------------------
-- CityNames

-- This list of locally-referenced values ensures provides the list of city names used by the custom civilization. It is extendable, but is recommended to be at least 15 entries long. The entries in the list below interact with the RandomCityNameDepth value that is set in the Civilizations table near the head of this document.

-- All CityName references have a corresponding entry in Civilization_Localisation.sql. I have named them using a simple, sequential numbering system - however, it is generally accepted/common to give them more descriptive names (e.g. LOC_CITY_NAME_MC_SAN_LORENZO).
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,				CityName							)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_1'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_2'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_3'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_4'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_5'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_6'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_7'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_8'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_9'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_10'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_11'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_12'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_13'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_14'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_15'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_16'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_17'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_18'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_19'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_20'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_21'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_22'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_23'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_24'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_25'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_26'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_27'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_28'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_29'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_30'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_31'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_32'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_33'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_34'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_35'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_36'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_37'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_38'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_39'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_40'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_41'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_42'		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITY_NAME_SUPEZ_ISRAEL_43'		);
		
-----------------------------------------------
-- CivilizationCitizenNames

-- The below locally-referenced values provide yet further flavour to the game. These names are used to populate the 'Gossip' items that appear from time-to-time within the game.

-- Further flavour can be achieved by including referenced CitizenName values with equivalent 'MODERN' entries, in the format: LOC_CITIZEN_MC_OLMEC_MODERN_MALE_1

-- If using the MODERN CitizenName entries in addition, you must also specify a fourth column (Boolean) to the table below, named Modern. This operates as a true/false (0,1) flag, in the same way as the Female entry.

-- All CitizenName references have a corresponding entry in Civilization_Localisation.sql.
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,				CitizenName,									Female,	Modern	)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_1',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_2',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_3',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_4',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_5',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_6',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_7',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_8',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_9',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MALE_10',				0 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_1',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_2',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_3',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_4',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_5',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_6',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_7',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_8',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_9',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_FEMALE_10',			1 		0		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_1',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_2',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_3',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_4',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_5',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_6',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_7',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_8',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_9',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_MALE_10',		0		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_1',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_2',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_3',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_4',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_5',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_6',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_7',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_8',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_9',		1		1		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CITIZEN_SUPEZ_ISRAEL_MODERN_FEMALE_10'		1		1		);

-----------------------------------------------
-- CivilizationInfo

-- The below entries are primarily used in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.

-- All Header and Caption references have a corresponding entry in Civilization_Localisation.sql.
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,				Header,						Caption,									SortIndex	)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_SUPEZ_ISRAEL_LOCATION',		10			),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_SUPEZ_ISRAEL_SIZE',			20			),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_SUPEZ_ISRAEL_POPULATION',		30			),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_SUPEZ_ISRAEL_CAPITAL',			40			);
		
-----------------------------------------------
-- Start Bias

-- The below game-referenced values dictate the influence on your custom civilization's starting location by the terrain, features, resources and rivers that are generated on the map. The use of the below are optional.

-- The tiered system works on a scale from 1-5, with 1 providing the strongest bias towards the named TerrainType, FeatureType, ResourceType or indeed bias towards rivers as defined in StartBiasRivers.

-- TerrainType: This must be an explicit value from the list defined within the Terrains.xml in the base game.
-- FeatureType: This must be an explicit value from the list defined in a combination of Features.xml (base game), Expansion1_Features.xml (Rise & Fall) and/or Expansion2_Features.xml (Gathering Storm). Naturally, the use of FeatureType entries from either Expansion1 or Expansion2 will dictate compatibility for your mod.
-- ResourceType: This must be an explicit value from the list defined in Resrouces.xml (base game) and Expansion1_Resources.xml (Rise & Fall). The use of a resource from Expansion1 will dictate compatibility for your mod.
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,				TerrainType,				Tier	)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'TERRAIN_DESERT_HILLS',		2		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'TERRAIN_DESERT_MOUNTAIN',	2		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'TERRAIN_DESERT',			4		);

INSERT INTO	StartBiasResources
		(CivilizationType,				ResourceType,			Tier	)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'RESOURCE_SHEEP',		3		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'RESOURCE_WINE',		3		),
		('CIVILIZATION_SUPEZ_ISRAEL',	'RESOURCE_WHEAT',		3		)
		('CIVILIZATION_SUPEZ_ISRAEL',	'RESOURCE_CATTLE',		3		);

INSERT INTO	StartBiasRivers
		(CivilizationType,					Tier	)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',		5		);

-----------------------------------------------
-- Gedemon YnAEMP
-----------------------------------------------
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT OR REPLACE INTO StartPosition
		(Civilization,					MapName,				X,		Y)
VALUES	('CIVILIZATION_SUPEZ_ISRAEL',	'GiantEarth',			36,		51),
		('CIVILIZATION_SUPEZ_ISRAEL',	'GreatestEarthMap',		63,		38),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LargeEurope',			62,		16),
		('CIVILIZATION_SUPEZ_ISRAEL',	'LargestEarthCustom',	46,		63),
		('CIVILIZATION_SUPEZ_ISRAEL',	'PlayEuropeAgain',		82,		12);


UPDATE StartPosition
SET DisabledByCivilization = 'CIVILIZATION_SUPEZ_ISRAEL'
WHERE Civilization == 'CIVILIZATION_JERUSALEM' and 'DisabledByCivilization' is null;