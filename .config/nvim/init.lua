-- aliases
local opt = vim.opt
local cmd = vim.cmd

--packer.nvim
require'plugins'

-- LSP
require'lspconfig'.pyright.setup{}

--Treesitter
require'nvim-treesitter.configs'.setup {
	ensure_installed = { 'fish' },
	highlight = {
		enable = true,
	},
}

-- options
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.breakindent= true
opt.breakindentopt = 'shift:2,sbr'
opt.showbreak = '·>'
opt.linebreak = true
opt.hidden = true
opt.scrolloff = 5

-- color
vim.g.tokyonight_style = 'night'
vim.cmd("colorscheme tokyonight")

--lualine 
require'lualine'.setup({
	options = { 
		theme = 'tokyonight',
	},
})

-- neovide
vim.g.neovide_cursor_animation_length=0.07
vim.o.guifont="FiraCode Nerd Font:h11"

