local trouble = require('trouble')

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
	{ silent = true, noremap = true }
)
vim.keymap.set("n", "xn", "<cmd>TroubleToggle lsp_references<cr>",
	{ silent = true, noremap = true }
)
