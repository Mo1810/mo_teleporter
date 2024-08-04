Config = {}

Config.triggerKey = 51	-- SEE DOCS: https://docs.fivem.net/docs/game-references/controls/

Config.teleporter = {
	[1] = {
		label			= 'Press ~INPUT_CONTEXT~ to enter the drug production.',
		markerDistance	= 4.0,
		distance		= 0.75,
		from			= vector4(1196.94, -3253.46,    7.1, 83.19), 	-- FROM | vec4(x, y, z, heading)
		to				= vector4(1138.06, -3199.18, -39.67,  3.83),	-- TO   | vec4(x, y, z, heading)
		reversable		= true, -- whether you can teleport from 'to' to 'from'
		vehicle			= true, -- whether you can teleport with a vehicle (optional; default: false)
		marker = {
			type		= 0, -- SEE DOCS: https://docs.fivem.net/docs/game-references/markers/
			scale		= 0.5,
			color		= vector4(255, 255, 255, 255), --RGB | vec4(red, green, blue, alpha) 0 - 255
			faceCamera	= true,
			rotate		= false
		}
	},
}