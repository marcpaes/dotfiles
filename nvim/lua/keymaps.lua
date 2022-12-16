local set = vim.api.nvim_set_keymap

function OptNsFromDescription (description)
  return  { noremap = true, silent = true, desc = description}
end

vim.g.mapleader = " "

-- Command
set("n", ";", ":", { noremap = true })

-- Clean Search
set("n", "<Leader>h", ":let @/=''<CR>", OptNsFromDescription("Remove Highlight"))

-- Telescope
set("n", "<Leader>ff", ":lua require('telescope.builtin').find_files()<cr>", OptNsFromDescription("Find files"))
set("n", "<Leader>fg", ":lua require('telescope.builtin').live_grep()<cr>", OptNsFromDescription("Find text (Grep)"))
set("n", "<Leader>fb", ":lua require('telescope.builtin').buffers()<cr>", OptNsFromDescription("Find buffer"))
set("n", "<Leader>fh", ":lua require('telescope.builtin').help_tags()<cr>", OptNsFromDescription("Find help tag"))

-- LSP Features
set("n", "gd", ":lua vim.lsp.buf.definition()<cr>", OptNsFromDescription("Go to definition"))
set("n", "gD", ":vsplit | lua vim.lsp.buf.definition()<cr>", OptNsFromDescription("Go to definition | split"))
set("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", OptNsFromDescription("Go to implementation"))
set("n", "gy", ":lua vim.lsp.buf.document_symbol()<cr>", OptNsFromDescription("Go to document symbol"))
set("n", "gs", ":lua vim.lsp.buf.workspace_symbol()<cr>", OptNsFromDescription("Go to workspace symbol"))
set("n", "gt", ":lua vim.lsp.buf.type_definition()<cr>", OptNsFromDescription("Go to type definition"))

set("n", "<leader>li", ":lua vim.lsp.buf.hover()<cr>", OptNsFromDescription("Language info (hover)"))
set("n", "<leader>lh", ":lua vim.lsp.buf.signature_help()<cr>", OptNsFromDescription("Language signature"))
set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<cr>", OptNsFromDescription("Rename"))
set("n", "<leader>dn", ":lua vim.lsp.diagnostic.goto_next()", OptNsFromDescription("Next diagnostic"))
set("n", "<leader>dN", ":lua vim.lsp.diagnostic.goto_prev()", OptNsFromDescription("Previous diagnostic"))

set("n", "<leader>fr", ":lua require('telescope.builtin').lsp_references()<cr>", OptNsFromDescription("Find teferences"))
set("n", "<leader>ft", ":lua require('telescope.builtin').lsp_definitions()<cr>", OptNsFromDescription("Find definitions"))
set("n", "<leader>fd", ":lua require('telescope.builtin').lsp_document_diagnostics()<cr>", OptNsFromDescription("Find all document diagnostics"))
set("n", "<leader>fD", ":lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>", OptNsFromDescription("Find all workspace diagnostics"))

-- Code actions
set('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true, desc = "List language actions"})
set('v', '<leader>lx', '<cmd>lua require\'telescope.builtin\'.lsp_range_code_actions{}<CR>', OptNsFromDescription("List all actions"))

-- File Tree
set("n", "<leader>e", [[<cmd>Neotree filesystem toggle left<CR>]], OptNsFromDescription("Tree open"))
set("n", "<leader>tg", [[<cmd>Neotree git_status toggle left<CR>]], OptNsFromDescription("Tree git"))
set("n", "<leader>tb", [[<cmd>Neotree buffers toggle left<CR>]], OptNsFromDescription("Tree buffers"))

-- ToggleTerm
set("n", "<leader>ttg", "<cmd>lua _lazygit_toggle()<CR>", OptNsFromDescription("Terminal - Lazy Git"))
set("n", "<leader>tth", "<cmd>lua _htop_toggle()<CR>", OptNsFromDescription("Terminal - Htop"))
