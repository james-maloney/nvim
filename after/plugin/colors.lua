--require('rose-pine').setup({
 --   disable_background = true
--})

require('nordic').colorscheme({
    underline_option = 'none',
    italic = true,
    italic_comments = false,
    minimal_mode = false,
    alternate_backgrounds = true
})

function ColorMyPencils(color) 
	color = color or "nordic" --"rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

vim.cmd('colorscheme nordic')

ColorMyPencils()
