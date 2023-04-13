vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    "omnisharp",
    "rust_analyzer",
    "gopls",
    "tailwindcss",
    "tsserver"
})

lsp.nvim_workspace()

lsp.setup()
