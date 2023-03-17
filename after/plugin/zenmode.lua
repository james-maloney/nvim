vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").toggle({
		window = {
			backdrop = 1,
			width = 220,
			height = .98,
			options = {
				number = true,
				signcolumn = "no",
			}
		}
	})
	vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
end)
