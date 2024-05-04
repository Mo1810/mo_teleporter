Config = {}

Config.triggerKey = 38  -- SEE DOCS: https://docs.fivem.net/docs/game-references/controls/

Config.teleporter = {
	[1] = {
		label 			= 'Press ~INPUT_PICKUP~ to enter the drug production.',
		distance 		= 2.0,
		from 			= vector4(1196.94, -3253.46,    7.1, 83.19), 	-- FROM | vec4(x, y, z, heading)
		to   			= vector4(1138.06, -3199.18, -39.67,  3.83),	-- TO   | vec4(x, y, z, heading)
		reversable 		= true, -- whether you can teleport from 'to' to 'from'
		marker 		= {
			type  		= 0, -- SEE DOCS: https://docs.fivem.net/docs/game-references/markers/
			scale 		= 0.5,
			color 		= vector4(255, 255, 255, 255), --RGB | vec4(red, green, blue, alpha) 0 - 255
			faceCamera 	= true,
			rotate 		= false
		}
	},
}