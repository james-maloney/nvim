require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local nvim_tmux_nav = require('nvim-tmux-navigation')

-- tmux naviagation
map("n", "<C-h>", function()
    nvim_tmux_nav.NvimTmuxNavigateLeft()
end, { desc = "TMUX Window left"})
map("n", "<C-l>", function()
    nvim_tmux_nav.NvimTmuxNavigateRight()
end, { desc = "TMUX Window right"})
map("n", "<C-j>", function()
    nvim_tmux_nav.NvimTmuxNavigateDown()
end, { desc = "TMUX Window down"})
map("n", "<C-k>", function()
    nvim_tmux_nav.NvimTmuxNavigateUp()
end, { desc = "TMUX Window up" })

-- LSP
map("n", "gv", "<cmd> :vsplit | lua vim.lsp.buf.definition() <CR>", { desc = "LSP Open definition in vsplit"})

-- NEOGIT
map("n", "<leader>m", "<cmd> Neogit <CR>", { desc = "NEOGIT Toggle"})

-- NVIMTREE
map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "NVIMTREE Toggle"})

-- COPILOT
vim.g.copilot_assume_mapped = true
map("i", "kk", 'copilot#Accept("<CR>")', { desc = "COPILOT Accept suggestion", silent = true, expr = true, replace_keycodes = false })

-- Harpoon
map("n", "<leader>;", function()
    local harpoon = require "harpoon"
    harpoon:list():select(4)
end, { desc = "HARPOON Navigate to file 4"})

map("n", "<leader>l", function()
    local harpoon = require "harpoon"
    harpoon:list():select(3)
end, { desc = "HARPOON Navigate to file 3"})

map("n", "<leader>k", function()
    local harpoon = require "harpoon"
    harpoon:list():select(2)
end, { desc = "HARPOON Navigate to file 2"})

map("n", "<leader>j", function()
    local harpoon = require "harpoon"
    harpoon:list():select(1)
end, { desc = "HARPOON Navigate to file 1"})

map("n", "<leader>a", function()
    local harpoon = require "harpoon"
    harpoon:list():append()
end, { desc = "HARPOON Add file"})

map("n", "<leader>z", function()
    local harpoon = require "harpoon"
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "HARPOON Menu"})

-- Golang
map("n", "<leader>gsj", "<cmd> GoAddTag json <CR>", { desc = "GO Add JSON struct tags"})
map("n", "<leader>gsy", "<cmd> GoAddTag yaml <CR>", { desc = "GO Add YAML struct tags"})
map("n", "<leader>gf", "<cmd> GoFillStruct <CR>", { desc = "GO Fill Go struct"})

