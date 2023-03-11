function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map("n", "<leader>ex", vim.cmd.Ex)
map("i", "jk", "<Esc>", {noremap = true})

-- Split navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Full screen
map("n", "ff", "<C-w><Bar>")

map("n", "<leader>l", ":set list!<CR>")
vim.opt.listchars = {
	tab = '│ ',
	extends = '⟩',
	precedes = '⟨',
	trail = '☢',
}
