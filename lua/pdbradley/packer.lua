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
	use('tpope/vim-commentary')
  use('sheerun/vim-polyglot')
  use('slim-template/vim-slim')

	-- for cut paste across ssh
  -- use('ojroques/nvim-osc52')
  use('ojroques/vim-oscyank')

	use('github/copilot.vim')
	use('neovim/nvim-lspconfig')
	use('james1236/backseat.nvim')

	use({
		"jackMort/ChatGPT.nvim",
			config = function()
				require("chatgpt").setup()
			end,
			requires = {
				"MunifTanjim/nui.nvim",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim"
			}
	})






end)
