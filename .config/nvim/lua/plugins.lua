return require('packer').startup(function()
	use 'folke/tokyonight.nvim'
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use 'neovim/nvim-lspconfig'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
    use 'glepnir/lspsaga.nvim'
	use { 'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}
    use { 'ms-jpq/coq_nvim',
        branch = 'coq'
    }
    use { 'ms-jpq/coq.artifacts',
        branch = 'artifacts'
    }
    use { 'ms-jpq/coq.thirdparty',
        branch = '3p'
    }

end)

