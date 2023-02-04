/*
	Civilization Unique Wonder

	Authors: Supez
*/
--------------------------------------------------------------
INSERT OR REPLACE INTO Types	
		(Type,													Kind				)
VALUES	('TRAIT_CIVILIZATION_WONDER_SUPEZ_SOLOMONS_TEMPLE',		'KIND_TRAIT'		),
		('WONDER_SUPEZ_SOLOMONS_TEMPLE',						'KIND_BUILDING'		),
		('SUPEZ_ISRAEL_MODIFIER_INCREASE_PRESSURE',				'KIND_MODIFIER'		);


INSERT INTO CivilizationTraits
		(TraitType,												CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_WONDER_SUPEZ_SOLOMONS_TEMPLE',		'CIVILIZATION_SUPEZ_ISRAEL'	);


INSERT INTO Traits
		(TraitType,											Name,									Description										)
VALUES	('TRAIT_CIVILIZATION_WONDER_SUPEZ_SOLOMONS_TEMPLE','LOC_WONDER_SUPEZ_SOLOMONS_TEMPLE_NAME',	'LOC_WONDER_SUPEZ_SOLOMONS_TEMPLE_DESCRIPTION'	);


INSERT OR REPLACE INTO Buildings
		(
			BuildingType,
			Name,
			Description,
			PrereqCivic,
			Cost,
			AdvisorType,
			Quote,
			MaxWorldInstances,
			IsWonder,
			RequiresPlacement,
			Capital,
			AdjacentDistrict,
			AllowsHolyCity,
			TraitType,
			Maintenance
		)
VALUES
		(
			'WONDER_SUPEZ_SOLOMONS_TEMPLE',	-- BuildingType
			'LOC_IMPROVEMENT_SUPEZ_SOLOMONS_TEMPLE_NAME', -- Name
			'LOC_IMPROVEMENT_SUPEZ_SOLOMONS_TEMPLE_NAME_DESCRPITION', -- Description
			'CIVIC_MYSTICISM', -- PrereqCivic
			180, -- Cost
			'ADVISOR_RELIGIOUS', -- AdvisorType
			'LOC_WONDER_SUPEZ_SOLOMONS_TEMPLE_QUOTE', -- Quote
			1, -- MaxWorldInstances
			1, -- IsWonder
			1, -- RequiresPlacement
			1, -- Capital
			'DISTRICT_HOLY_SITE', -- AdjacentDistrict
			1, --AllowsHolyCity
			'TRAIT_CIVILIZATION_WONDER_SUPEZ_SOLOMONS_TEMPLE', -- TraitType
			2 -- Maintenance
		);


INSERT OR REPLACE INTO Building_ValidTerrains
		(BuildingType,						TerrainType				)
VALUES 	('WONDER_SUPEZ_SOLOMONS_TEMPLE',	'TERRAIN_GRASS_HILLS'	),
		('WONDER_SUPEZ_SOLOMONS_TEMPLE',	'TERRAIN_PLAINS_HILLS'	).
	 	('WONDER_SUPEZ_SOLOMONS_TEMPLE',	'TERRAIN_DESERT_HILLS'	);


INSERT OR REPLACE INTO Building_YieldChanges
		(BuildingType, 						YieldType, 		YieldChange	)
VALUES	('WONDER_SUPEZ_SOLOMONS_TEMPLE', 	'YIELD_FAITH',	6			),
		('WONDER_SUPEZ_SOLOMONS_TEMPLE', 	'YIELD_GOLD',	3			);


INSERT OR REPLACE INTO Building_GreatWorks
		(BuildingType, 						GreatWorkSlotType, 			NumSlots	)
VALUES	('WONDER_SUPEZ_SOLOMONS_TEMPLE',	'GREATWORKSLOT_WRITING',	1			),
		('WONDER_SUPEZ_SOLOMONS_TEMPLE',	'GREATWORKSLOT_RELIC',		1			);


INSERT INTO TraitModifiers			
		(TraitType,												ModifierId								)
VALUES	('TRAIT_CIVILIZATION_WONDER_SUPEZ_SOLOMONS_TEMPLE', 	'SUPEZ_SOLOMONS_TEMPLE_GRANT_PROPHET'	);


INSERT INTO DynamicModifiers				
		(ModifierType,									CollectionType,							EffectType									)
VALUES	('SUPEZ_ISRAEL_MODIFIER_INCREASE_PRESSURE',		'COLLECTION_PLAYER_CAPITAL_CITY',		'EFFECT_ADJUST_RELIGIOUS_SPREAD_STRENGTH'	);	


INSERT INTO Modifiers	
		(ModifierId,									ModifierType,								SubjectRequirementSetId,			RunOnce,	Permanent	)
VALUES 	('SUPEZ_SOLOMONS_TEMPLE_GRANT_PROPHET', 		'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_CITY',	null,								1,			1			),
 		('SUPEZ_SOLOMONS_TEMPLE_WINE_CULTURE_BONUS',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'REQSET_TM_PLOT_HAS_RESOURCE',		0,			0			),
 		('SUPEZ_SOLOMONS_TEMPLE_WINE_GOLD_BONUS',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'REQSET_TM_PLOT_HAS_RESOURCE',		0,			0			),
		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_CULTURE_BONUS',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'REQSET_TM_PLOT_HAS_RESOURCE',		0,			0			),
 		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_GOLD_BONUS',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'REQSET_TM_PLOT_HAS_RESOURCE',		0,			0			),
 		('SUPEZ_SOLOMONS_TEMPLE_POP_CULTURE_BONUS',		'MODIFIER_BUILDING_YIELD_CHANGE',			'SUPEZ_SOLOMONS_TEMPLE_PER_POP',	0,			0			),
 		('SUPEZ_SOLOMONS_TEMPLE_APPEAL_BONUS',			'MODIFIER_SINGLE_CITY_ADJUST_CITY_APPEAL',	'SUPEZ_SOLOMONS_TEMPLE_WITHIN_1',	0,			0			),
 		('SUPEZ_SOLOMONS_TEMPLE_PRESSURE_BONUS',		'SUPEZ_ISRAEL_MODIFIER_INCREASE_PRESSURE',	'SUPEZ_SOLOMONS_TEMPLE_PER_POP',	0,			0			);


INSERT INTO ModifierArguments
		(ModifierId,									Name,						Value							)
VALUES	('SUPEZ_SOLOMONS_TEMPLE_GRANT_PROPHET',			'GreatPersonClassType',		'GREAT_PERSON_CLASS_PROPHET'	),
		('SUPEZ_SOLOMONS_TEMPLE_GRANT_PROPHET',			'Amount',					1								),
		('SUPEZ_SOLOMONS_TEMPLE_WINE_CULTURE_BONUS',	'ResourceType',				'RESOURCE_WINE'					),
		('SUPEZ_SOLOMONS_TEMPLE_WINE_CULTURE_BONUS',	'YieldType',				'YIELD_CULTURE'					),
		('SUPEZ_SOLOMONS_TEMPLE_WINE_CULTURE_BONUS',	'Amount',					1								),
		('SUPEZ_SOLOMONS_TEMPLE_WINE_GOLD_BONUS',		'ResourceType',				'RESOURCE_WINE'					),
		('SUPEZ_SOLOMONS_TEMPLE_WINE_GOLD_BONUS',		'YieldType',				'YIELD_GOLD'					),
		('SUPEZ_SOLOMONS_TEMPLE_WINE_GOLD_BONUS',		'Amount',					1								),
		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_CULTURE_BONUS',	'ResourceType',				'RESOURCE_SHEEP'				),
		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_CULTURE_BONUS',	'YieldType',				'YIELD_CULTURE'					),
		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_CULTURE_BONUS',	'Amount',					1								),
		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_GOLD_BONUS',		'ResourceType',				'RESOURCE_SHEEP'				),
		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_GOLD_BONUS',		'YieldType',				'YIELD_GOLD'					),
		('SUPEZ_SOLOMONS_TEMPLE_SHEEP_GOLD_BONUS',		'Amount',					1								),
		('SUPEZ_SOLOMONS_TEMPLE_POP_CULTURE_BONUS',		'BuildingType',				'WONDER_SUPEZ_SOLOMONS_TEMPLE'	),
		('SUPEZ_SOLOMONS_TEMPLE_POP_CULTURE_BONUS',		'YieldType',				'YIELD_CULTURE'					),
		('SUPEZ_SOLOMONS_TEMPLE_POP_CULTURE_BONUS',		'Amount',					0.5								),
		('SUPEZ_SOLOMONS_TEMPLE_APPEAL_BONUS'			'Amount',					1								),
		('SUPEZ_SOLOMONS_TEMPLE_PRESSURE_BONUS'			'SpreadMultiplier',			500								);


INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('SUPEZ_SOLOMONS_TEMPLE_PER_POP',	'REQUIREMENTSET_TEST_ALL'	),
		('SUPEZ_SOLOMONS_TEMPLE_WITHIN_1'	'REQUIREMENTSET_TEST_ALL'	);


INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId									)
VALUES	('SUPEZ_SOLOMONS_TEMPLE_PER_POP',	'SUPEZ_SOLOMONS_TEMPLE_PER_POP_REQUIREMENT'		),
		('SUPEZ_SOLOMONS_TEMPLE_WITHIN_1',	'SUPEZ_SOLOMONS_TEMPLE_WITHIN_1_REQUIREMENT'	);


INSERT INTO Requirements
		(RequirementId, 								RequirementType										)
VALUES	('SUPEZ_SOLOMONS_TEMPLE_PER_POP_REQUIREMENT',	'REQUIREMENT_COLLECTION_COUNT_ATLEAST'				),
		('SUPEZ_SOLOMONS_TEMPLE_WITHIN_1_REQUIREMENT',	'REQUIREMENT_PLOT_ADJACENT_BUILDING_TYPE_MATCHES'	);


INSERT INTO RequirementArguments
		(RequirementId, 								Name,					Value							)
VALUES	('SUPEZ_SOLOMONS_TEMPLE_PER_POP_REQUIREMENT', 	'CollectionType',		'COLLECTION_CITY_PLOT_YIELDS'	),
		('SUPEZ_SOLOMONS_TEMPLE_PER_POP_REQUIREMENT', 	'Count',				1								),
		('SUPEZ_SOLOMONS_TEMPLE_WITHIN_1_REQUIREMENT',	'BuildingType',			'WONDER_SUPEZ_SOLOMONS_TEMPLE'	),
		('SUPEZ_SOLOMONS_TEMPLE_WITHIN_1_REQUIREMENT',	'MinRange',				1								),
		('SUPEZ_SOLOMONS_TEMPLE_WITHIN_1_REQUIREMENT',	'MaxRange',				1								);