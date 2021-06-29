-- aliases
local opt = vim.opt
local cmd = vim.cmd

-- paq
require 'paq-nvim'{
	'folke/tokyonight.nvim';
	--required for lualine, don't know how to set dependecies yet so im just putting it before the other one :P
	{'kyazdani42/nvim-web-devicons', opt = true};
  	'hoob3rt/lualine.nvim';
	'neovim/nvim-lspconfig';
	'hrsh7th/nvim-compe';

}

-- LSP
require'lspconfig'.pyright.setup{}

-- options
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.breakindent= true
opt.breakindentopt = 'shift:2,sbr'
opt.showbreak = '·>'
opt.linebreak = true
opt.hidden = true

-- color
vim.g.tokyonight_style = "night"
cmd("colorscheme tokyonight")

--lualine 
require('lualine').setup({
	options = {
		theme = 'tokyonight'
	}
})

-- neovide
vim.g.neovide_cursor_animation_length=0.09
vim.o.guifont="FiraCode Nerd Font:h20"

