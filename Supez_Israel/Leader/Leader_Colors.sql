/*
	Leader Colors
	Authors: MC, Supez
*/

-----------------------------------------------
-- PlayerColors

-- This assigns the civilization's colours to the leader - when selecting the leader, this will control the order in which the colour-combinations appear (with PrimaryColor and SecondaryColor representing the default values).

-- These eight colour references are locally-defined values, taken straight from the code section above. Again, as we only have one leader, we simply match the order.
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
			'LEADER_SUPEZ_DAVID', -- Type
			'Unique', -- Usage
			'COLOR_SUPEZ_ISRAEL_A_PRIMARY', -- PrimaryColor
			'COLOR_SUPEZ_ISRAEL_A_SECONDARY', -- SecondaryColor
			'COLOR_SUPEZ_ISRAEL_B_PRIMARY', -- Alt1PrimaryColor
			'COLOR_SUPEZ_ISRAEL_B_SECONDARY', -- Alt1SecondaryColor
			'COLOR_SUPEZ_ISRAEL_C_PRIMARY', -- Alt2PrimaryColor
			'COLOR_SUPEZ_ISRAEL_C_SECONDARY', -- Alt2SecondaryColor
			'COLOR_SUPEZ_ISRAEL_D_PRIMARY', -- Alt3PrimaryColor
			'COLOR_SUPEZ_ISRAEL_D_SECONDARY' -- Alt3SecondaryColor
		);