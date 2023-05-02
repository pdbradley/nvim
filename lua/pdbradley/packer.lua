-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({ 'rose-pine/neovim', as = 'rose-pine' })

	use 'vim-ruby/vim-ruby'
	use 'tpope/vim-endwise'
	use 'tpope/vim-rails'
	use 'thoughtbot/vim-rspec'


	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('preservim/nerdtree')
	use('tpope/vim-fugitive')
  use('sheerun/vim-polyglot')
  use('slim-template/vim-slim')

  use('ojroques/vim-oscyank')




end)
