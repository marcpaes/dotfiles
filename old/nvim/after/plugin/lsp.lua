vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons


-- workaround para resolver conflito do omnisharp. 
-- https://github.com/OmniSharp/omnisharp-roslyn/issues/2483
vim.api.nvim_create_autocmd("LspAttach", {
  desc = "Fix startup error by disabling semantic tokens for omnisharp",
  group = vim.api.nvim_create_augroup("OmnisharpHook", {}),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client.name == "omnisharp" then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
})


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
