return {
	{
		"ThePrimeagen/harpoon",
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()
		end,
		branch = "harpoon2",
		event = "VeryLazy",
		opts = {},
	},
}
