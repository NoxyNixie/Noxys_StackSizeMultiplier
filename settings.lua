data:extend({
	-- Startup
	{
		type = "int-setting",
		name = "Noxys_StackSizeMultiplier-multiplier",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 20,
		maximum_value = 1000,
		order = "a",
	},
	{
		type = "bool-setting",
		name = "Noxys_StackSizeMultiplier-tweakbots",
		setting_type = "startup",
		default_value = false,
		order = "b",
	},
	-- Global

	-- Per user

})
