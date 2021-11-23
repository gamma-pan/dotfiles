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
opt.signcolumn = 'number'
opt.breakindent= true
opt.breakindentopt = 'shift:2,sbr'
opt.showbreak = '·>'
opt.linebreak = true
opt.hidden = true
opt.scrolloff = 5
opt.termguicolors = true
opt.mouse = "n"
opt.ut = 500
opt.completeopt = "menuone,noselect"

--python
vim.g.python3_host_prog = "/home/pan/.virtualenvs/neovim/bin/python3"

-- tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- leader
vim.g.mapleader = ","

-- color
vim.g.tokyonight_style = 'storm'
cmd("colorscheme tokyonight")

--bindings
require'keybinds'

--autocommands
vim.cmd("runtime autocommands.vim")

--lualine
require'lualine'.setup({
	options = {
		theme = 'tokyonight',
	},
})

--barbar
vim.g.bufferline = {
    auto_hide = true,
}

--indent-blankline
vim.g.indent_blankline_filetype_exclude = {'help'}


--[[
-- neovide
vim.g.neovide_cursor_animation_length=0.07
vim.o.guifont="FiraCode Nerd Font:h11"
--]]
