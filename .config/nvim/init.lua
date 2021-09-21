-- aliases
local opt = vim.opt
local cmd = vim.cmd

--packer.nvim
require'plugins'

--Treesitter
require'nvim-treesitter.configs'.setup {
        ensure_installed = { 'fish' },
        highlight = {
                enable = true,
        },
}

--lsp
require'lsp'

-- options
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.breakindent= true
opt.breakindentopt = 'shift:2,sbr'
opt.showbreak = '·>'
opt.linebreak = true
opt.hidden = true
opt.scrolloff = 5
opt.termguicolors = true
opt.mouse = "n"

---- tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- leader 
vim.g.mapleader = ","

-- color
vim.g.tokyonight_style = 'night'
vim.cmd("colorscheme tokyonight")

--bindings
require'keybinds'

--lualine 
require'lualine'.setup({
	options = { 
		theme = 'tokyonight',
	},
})

--bufferline
require("bufferline").setup{}

--[[
-- neovide
vim.g.neovide_cursor_animation_length=0.07
vim.o.guifont="FiraCode Nerd Font:h11"
--]]
