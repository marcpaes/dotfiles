-- Initialize Packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    -- basic plugins
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }

    -- telescope
    -- optional dependency: https://github.com/sharkdp/fd | sudo apt install fd-find
    use 'BurntSushi/ripgrep'
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'nvim-telescope/telescope-ui-select.nvim' }


    -- LSP - Language Support / Code Completion
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },

            -- Help
            { 'folke/which-key.nvim' }
        }
    }

    -- Debugger
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

    -- File Tree
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    -- Extra
    use { "akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
        require("toggleterm").setup()
    end }

    if packer_bootstrap then
        require('packer').sync()
    end

    use { "zbirenbaum/copilot.lua" }
    use { "zbirenbaum/copilot-cmp", requires = { "zbirenbaum/copilot.lua" }}
    use 'mbbill/undotree'

    -- Theme
    vim.opt.termguicolors = true
    vim.cmd [[colorscheme tokyonight]]

end)
