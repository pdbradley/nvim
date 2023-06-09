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

	use('roxma/vim-tmux-clipboard')

	use('github/copilot.vim')
	use('neovim/nvim-lspconfig')
	use('james1236/backseat.nvim')

	use('tpope/vim-dotenv')
	use('tpope/vim-dadbod')
	use('kristijanhusak/vim-dadbod-ui')

	use({
				'ojroques/vim-oscyank',
				tag = 'v1.0.0'
			}
	)

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

	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}






end)
