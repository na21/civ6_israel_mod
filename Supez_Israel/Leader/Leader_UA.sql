/*
	Leader Unique Ability
	Authors: MC, Supez
*/

-----------------------------------------------
-- Types

-- This inserts the Unique Ability reference into the primary Data Types table as a recognised trait. This is mandatory, if configuring a custom trait for your leader. The string listed under 'Type' must be used throughout the mod when referring to the TraitType.

-- The standard naming convention follows: TRAIT_LEADER_PREFIX_TRAITNAME

-- Configuring a Unique Ability for your custom leader is entirely optional, but it is typically considered appropriate for balance to configure one, such that your custom leader matches those from the base games in terms of complexity, both for flavour and gameplay balance.

-- In this example, we also define a new ability, which this particular Unique Ability will leverage. You'll note this is denoted under KIND_ABILITY, which ensures the game is acknowledging this item in the right way.
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind			)
VALUES	('TRAIT_LEADER_SUPEZ_DAVID',	'KIND_TRAIT'	);

-----------------------------------------------
-- Tags

-- The Unique Ability this example creates will be applied to two specific UnitType entities - the Builder and the Settler. As such, because these two - and no others - do not exist as their own class of unit, we need to ring-fence them accordingly. The below section does this for us, by inserting our new CLASS_MC_BUILDER_SETTLER class as an ABILITY_CLASS - such that we can tie the new Ability to them.
-----------------------------------------------

-----------------------------------------------
-- TypeTags

-- The below section ties together some of the new items we defined above.

-- Firstly, it associates the UNIT_BUILDER and the UNIT_SETTLER to our new class - CLASS_MC_BUILDER_SETTLER.

-- Secondly, we link the UnitAbilityType to that same class. By doing this, we ensure the UnitAbilityType is only applied to the two units in question - which make up all of the members of the new class.
-----------------------------------------------

-----------------------------------------------
-- UnitAbilities

-- With the UnitAbilityType defined (above), the below then inserts it into the overall UnitAbilities table. This allows it to exist in its own right, alongside other UnitAbilityType elements and ties it to the locally-referenced Name and Description text strings that name and describe the ability, respectively.

-- We also assign the Inactive boolean, here - though with 100% confidence I cannot explain why, in this case, this is the right value. An 'Inactive' ability is one that is considered 'not in use' normally; though this particular ability is always applied. As there are only two values, I personally just try to toggle these as part of troubleshooting when I am certain all other mod-parts are configured correctly.
-----------------------------------------------

-----------------------------------------------
-- UnitAbilityModifiers

-- The below entry ties the effective modifiers to the UnitAbilityType. A modifier is the top-level item that instructs the game to perform a deviation away from the base ruleset in some way. The possibilities are endless, so these notes make no attempt to cover what can be done - only to instruct against the logic, step by step.

-- This template will walk you through a typical example, nonetheless; though I highly recommend spending some time familiarising yourself with the base-game files and/or the database to get a general appreciation of how things work.

-- In this example, we are applying an existing Modifier that implements the described UnitAbilityType - specifically, the ALTITUDE_TRAINING_IGNORE_HILLS promotion. This will give that ability to any unit that is correctly 'awarded' the UnitAbilityType. Some of the code earlier restricts the types of units that this will be applied to - whilst code further down instructs the game to apply it.

-- Learning point: There are numerous ways to unfurl the logic that follows below. For me, the most effective way was a combination of following the base game data, trial and error and (admittedly) a healthy dose of asking for help.
-----------------------------------------------

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description									)
VALUES	('TRAIT_LEADER_SUPEZ_DAVID',	'LOC_TRAIT_LEADER_SUPEZ_DAVID_NAME',	'LOC_TRAIT_LEADER_SUPEZ_DAVID_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits

-- This defines the leader to which the TraitType is applied (i.e. which leader gets the Unique Ability). This is a simple matter of referencing the custom LeaderType defined in Leader_Config.sql and using the TraitType defined at the head of this document.
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType					)
VALUES	('LEADER_SUPEZ_DAVID',	'TRAIT_LEADER_SUPEZ_DAVID'	);

-----------------------------------------------
-- TraitModifiers

-- This section applies the Modifier (defined directly above), that grants our custom civilization's units an ability. It's tied to the TraitType, which in turn belongs to our custom LeaderType.

-- Without this, there's no mechanism for us to apply the UnitAbilityType to anything - so this is required to get the ability to the units we specified earlier.
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType,						ModifierId								)
VALUES	('TRAIT_LEADER_SUPEZ_DAVID',	'SUPEZ_DAVID_TRAIT_GWW_BONUS_CULTURE'	),
		('TRAIT_LEADER_SUPEZ_DAVID',	'SUPEZ_DAVID_TRAIT_GWW_BONUS_FAITH'		);

INSERT OR REPLACE INTO TraitModifiers
		(TraitType,						ModifierId									)
SELECT	('TRAIT_LEADER_SUPEZ_DAVID',	'SUPEZ_DAVID_GWW_SLOT_'||BuildingType	)
FROM Buildings WHERE EnabledByReligion = 1 AND PurchaseYield = 'YIELD_FAITH';

-----------------------------------------------
-- Modifiers

-- In this section, we apply the Ability we defined earlier via the use of another Modifier. In this case, our ModifierId is defined and it is defined with the ModifierType that allows us to grant an ability. We set it as Permanent, as we want this application of the Ability to happen once (at the very start of the game when our custom leader is in-play).
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,								ModifierType,									)
VALUES	('SUPEZ_DAVID_TRAIT_GWW_BONUS_CULTURE',		'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD'	),
		('SUPEZ_DAVID_TRAIT_GWW_BONUS_FAITH',		'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD'	);

INSERT OR REPLACE INTO Modifiers	
		(ModifierId,								ModifierType											)
SELECT	('SUPEZ_DAVID_GWW_SLOT_'||BuildingType,		'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_GREAT_WORK_SLOTS'	)
FROM Buildings WHERE EnabledByReligion = 1 AND PurchaseYield = 'YIELD_FAITH';

-----------------------------------------------
-- ModifierArguments

-- This final section stitches the last pieces together. It instructs the game which AbilityType to grant as part of the TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING Modifier.

-- In our case, this is the new ability we defined earlier.

-- So, as a brief recap:

-- The LeaderType receives a TraitType
-- The TraitType has a Modifier attached to it, which does 'something'
-- That 'something' is the granting of our custom unit ability
-- The unit ability is restricted only to the custom unit class we created - which contains only Builders and Settlers
-- The applied unit ability has a (different) Modifier attached to it, which changes the way those units (individually) behave
-----------------------------------------------

INSERT INTO ModifierArguments 
		(ModifierId,								Name,						Value						)
VALUES	('SUPEZ_DAVID_TRAIT_GWW_BONUS_CULTURE',		'GreatWorkObjectType',		'GREATWORKOBJECT_WRITING'	),
		('SUPEZ_DAVID_TRAIT_GWW_BONUS_CULTURE',		'YieldType',				'YIELD_CULTURE'				),
		('SUPEZ_DAVID_TRAIT_GWW_BONUS_CULTURE',		'Amount',					'2'							),
		('SUPEZ_DAVID_TRAIT_GWW_BONUS_FAITH',		'GreatWorkObjectType',		'GREATWORKOBJECT_WRITING'	),
		('SUPEZ_DAVID_TRAIT_GWW_BONUS_FAITH',		'YieldType',				'YIELD_FAITH'				),
		('SUPEZ_DAVID_TRAIT_GWW_BONUS_FAITH',		'Amount',					'3'							);

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,								Name,					Value					)
SELECT	('SUPEZ_DAVID_GWW_SLOT_'||BuildingType,		'GreatWorkSlotType',	'GREATWORKSLOT_WRITING'	)
FROM Buildings WHERE EnabledByReligion = 1 AND PurchaseYield = 'YIELD_FAITH';

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,								Name,		Value	)
SELECT	('SUPEZ_DAVID_GWW_SLOT_'||BuildingType,		'Amount',	1		)
FROM Buildings WHERE EnabledByReligion = 1 AND PurchaseYield = 'YIELD_FAITH';


