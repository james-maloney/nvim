vim.keymap.set("n", "<leader>zz", function()
	require("zen-mode").toggle({
		window   = {
			backdrop = 1,
			width = 220,
			height = .98,
			options = {
				number = true,
				signcolumn = "no",
			}
		},
		on_open  = function(win)
			os.execute("gohome ex on -n 'Big Guest Room Savanna sunset'")
		end,
		on_close = function()
			os.execute("gohome ex on -n 'Big Guest Room Bright'")
		end,
	})
	vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
end)
