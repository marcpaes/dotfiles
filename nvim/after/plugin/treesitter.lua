require 'nvim-treesitter.configs'.setup {
    -- install language parser
    -- :TSInstallInfo Command to view supported languages
    ensure_installed = { "html", "css", "lua", "javascript", "typescript", "tsx", "python", "c_sharp", "bash",
        "dockerfile", "go", "hcl", "help", "html", "http", "json", "make", "markdown", "regex", "rust", "toml", "yaml" },
    -- Enable code highlighting
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    -- Enable incremental selection
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            node_decremental = 'grc',
            scope_incremental = 'grm',
        }
    },
    -- Enable based on Treesitter Code formatting for (=) . NOTE: This is an experimental feature.
    indent = {
        enable = true
    }
}
-- Turn on Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- Don't collapse by default
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
