vim.opt.swapfile = false

-- Also set in after/plugin/indent
vim.opt.tabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.softtabstop = 4;
vim.opt.expandtab = false;
vim.opt.autoindent = false;
vim.opt.smartindent = false;
vim.opt.indentexpr = "";
-- vim.cmd("set cindent cinkeys-=0#")
vim.opt.cindent = false;
vim.opt.nu = true;

vim.cmd("set formatoptions+=r")
vim.opt.comments = {
	sl = "/**",
	mb = " *",
	elx = " */"
}

require("james")
