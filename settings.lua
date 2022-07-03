data:extend({
	-- Startup
	{
		type = "double-setting",
		name = "Noxys_StackSizeMultiplier-multiplier",
		setting_type = "startup",
		minimum_value = 0.00001,
		default_value = 20,
		maximum_value = 2147483647,
		order = "a",
	},
	{
		type = "bool-setting",
		name = "Noxys_StackSizeMultiplier-tweakbots",
		setting_type = "startup",
		default_value = false,
		order = "b",
	},
	{
		type = "bool-setting",
		name = "Noxys_StackSizeMultiplier-tweaklogibots",
		setting_type = "startup",
		default_value = false,
		order = "b",
	},
	{
		type = "bool-setting",
		name = "Noxys_StackSizeMultiplier-ignoreonestacks",
		setting_type = "startup",
		default_value = false,
		order = "c",
	},
	-- Global

	-- Per user

})
