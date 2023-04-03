vim.opt.swapfile = false

-- Also set in after/plugin/indent
vim.opt.tabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.softtabstop = 4;
vim.opt.expandtab = false;
vim.opt.autoindent = false;
vim.opt.smartindent = false;
vim.opt.indentexpr = "";
vim.opt.cindent = false;
vim.opt.nu = true;
vim.opt.relativenumber = true
vim.cmd("set nowrap")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")


vim.cmd("set formatoptions+=r")
vim.opt.comments = {
	sl = "/**",
	mb = " *",
	elx = " */"
}

-- vim.api.nvim_create_autocmd('BufWritePre', {
-- 	callback = function()
-- 		vim.lsp.buf.format()
-- 	end
-- })

-- vim.api.nvim_create_autocmd('BufWritePre', {
-- 	pattern = '*.go',
-- 	callback = function()
-- 		vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
-- 	end
-- })

require("james")
