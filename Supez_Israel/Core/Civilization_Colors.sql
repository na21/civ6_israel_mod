/*
	Civilization Badge Colours
	Authors: MC, Supez
*/

-----------------------------------------------
-- Colors

-- This configures four colour options for your custom civilization. All values are formatted as RGBA - with the A (Alpha) channel always set to 255.

-- In this file/section, all we are doing is defining the colours and giving them unique string 'names'. We'll assign them to our civilization (via our Leader) in a separate file (Leader_Colors.sql).
-----------------------------------------------

INSERT INTO	Colors
		(Type,									Color				)
VALUES	('COLOR_SUPEZ_ISRAEL_A_PRIMARY',		'7,82,153,255'		),
		('COLOR_SUPEZ_ISRAEL_A_SECONDARY',		'245,255,255,255'	),
		('COLOR_SUPEZ_ISRAEL_B_PRIMARY',		'245,255,255,255'	),
		('COLOR_SUPEZ_ISRAEL_B_SECONDARY',		'7,82,153,255'		),
		('COLOR_SUPEZ_ISRAEL_C_PRIMARY',		'7,82,153,255'		),
		('COLOR_SUPEZ_ISRAEL_C_SECONDARY',		'82,38,79,255'		),
		('COLOR_SUPEZ_ISRAEL_D_PRIMARY',		'82,38,79,255'		),
		('COLOR_SUPEZ_ISRAEL_D_SECONDARY',		'245,255,255,255'	);