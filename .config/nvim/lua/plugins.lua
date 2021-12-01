return require('packer').startup(function()
	use 'folke/tokyonight.nvim'
    use 'marko-cerovac/material.nvim'
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use { 'romgrk/barbar.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}
    use 'lukas-reineke/indent-blankline.nvim'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'navarasu/onedark.nvim'
    use {
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end,
        ft = {'markdown'}
    }
    use 'dkarter/bullets.vim'
    use 'jiangmiao/auto-pairs'
end)

