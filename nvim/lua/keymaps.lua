local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

function optNsFromDescription (description)
  return  { noremap = true, silent = true, desc = description}
end

vim.g.mapleader = " "

-- Command
set("n", ";", ":", { noremap = true })

-- Clean Search
set("n", "<Leader><Space>", ":let @/=''<CR>", optNsFromDescription(""))

-- Telescope
set("n", "<Leader>ff", ":lua require('telescope.builtin').find_files()<cr>", optNsFromDescription("Find files"))
set("n", "<Leader>fg", ":lua require('telescope.builtin').live_grep()<cr>", optNsFromDescription("Find text (Grep)"))
set("n", "<Leader>fb", ":lua require('telescope.builtin').buffers()<cr>", optNsFromDescription("Find buffer"))
set("n", "<Leader>fh", ":lua require('telescope.builtin').help_tags()<cr>", optNsFromDescription("Find help tag"))

-- LSP Features
set("n", "gd", ":lua vim.lsp.buf.definition()<cr>", optNsFromDescription("Go to definition"))
set("n", "gD", ":vsplit | lua vim.lsp.buf.definition()<cr>", optNsFromDescription("Go to definition | split"))
set("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", optNsFromDescription("Go to implementation"))
set("n", "gy", ":lua vim.lsp.buf.document_symbol()<cr>", optNsFromDescription("Go to document symbol"))
set("n", "gs", ":lua vim.lsp.buf.workspace_symbol()<cr>", optNsFromDescription("Go to workspace symbol"))
set("n", "gt", ":lua vim.lsp.buf.type_definition()<cr>", optNsFromDescription("Go to type definition"))

set("n", "<leader>li", ":lua vim.lsp.buf.hover()<cr>", optNsFromDescription("Language info (hover)"))
set("n", "<leader>lh", ":lua vim.lsp.buf.signature_help()<cr>", optNsFromDescription("Language signature"))
set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<cr>", optNsFromDescription("Rename"))
set("n", "<leader>dn", ":lua vim.lsp.diagnostic.goto_next()", optNsFromDescription("Next diagnostic"))
set("n", "<leader>dN", ":lua vim.lsp.diagnostic.goto_prev()", optNsFromDescription("Previous diagnostic"))

set("n", "<leader>fr", ":lua require('telescope.builtin').lsp_references()<cr>", optNsFromDescription("Find teferences"))
set("n", "<leader>ft", ":lua require('telescope.builtin').lsp_definitions()<cr>", optNsFromDescription("Find definitions"))
set("n", "<leader>fd", ":lua require('telescope.builtin').lsp_document_diagnostics()<cr>", optNsFromDescription("Find all document diagnostics"))
set("n", "<leader>fD", ":lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>", optNsFromDescription("Find all workspace diagnostics"))

-- Code actions
set('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true, desc = "List language actions"})
set('v', '<leader>lx', '<cmd>lua require\'telescope.builtin\'.lsp_range_code_actions{}<CR>', optNsFromDescription("List all actions"))

-- File Tree
set("n", "<leader>to", [[<cmd>Neotree filesystem toggle left<CR>]], optNsFromDescription("Tree open"))
set("n", "<leader>tg", [[<cmd>Neotree git_status toggle left<CR>]], optNsFromDescription("Tree git"))
set("n", "<leader>tb", [[<cmd>Neotree buffers toggle left<CR>]], optNsFromDescription("Tree buffers"))

-- ToggleTerm
set("n", "<leader>ttg", "<cmd>lua _lazygit_toggle()<CR>", optNsFromDescription("Terminal - Lazy Git"))
set("n", "<leader>tth", "<cmd>lua _htop_toggle()<CR>", optNsFromDescription("Terminal - Htop"))
