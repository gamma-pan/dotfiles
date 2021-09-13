-- comment
return require('packer').startup(function()
	use 'folke/tokyonight.nvim'
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'fladson/vim-kitty'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
end)

