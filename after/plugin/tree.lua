vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- -- OR setup with some options
-- require("nvim-tree").setup({
-- 	sort_by = "case_sensitive",
-- 	renderer = {
-- 		group_empty = true,
-- 	},
-- 	filters = {
-- 		dotfiles = true,
-- 	},
-- })
--
-- vim.keymap.set("", "<Leader>w", ":NvimTreeToggle <CR> <bar> <C-W>=")

vim.keymap.set("", "<Leader>w", ":Neotree toggle <CR> <bar> <C-W>=")

vim.cmd("Neotree toggle")
