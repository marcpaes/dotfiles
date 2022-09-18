local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Command
set("n", ";", ":", { noremap = true })

-- Clean Search
set("n", "<Leader><Space>", ":let @/=''<CR>", ns)

-- Telescope
set("n", "<Leader>ff", ":lua require('telescope.builtin').find_files()<cr>", ns)
set("n", "<Leader>fg", ":lua require('telescope.builtin').live_grep()<cr>", ns)
set("n", "<Leader>fb", ":lua require('telescope.builtin').buffers()<cr>", ns)
set("n", "<Leader>fh", ":lua require('telescope.builtin').help_tags()<cr>", ns)

-- LSP Features
set("n", "gd", ":lua vim.lsp.buf.definition()<cr>", ns)
set("n", "gD", ":vsplit | lua vim.lsp.buf.definition()<cr>", ns)
set("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", ns)
set("n", "gw", ":lua vim.lsp.buf.document_symbol()<cr>", ns)
set("n", "gw", ":lua vim.lsp.buf.workspace_symbol()<cr>", ns)
set("n", "gr", ":lua vim.lsp.buf.references()<cr>", ns)
set("n", "gt", ":lua vim.lsp.buf.type_definition()<cr>", ns)
set("n", "K", ":lua vim.lsp.buf.hover()<cr>", ns)
set("n", "<c-k>", ":lua vim.lsp.buf.signature_help()<cr>", ns)
set("n", "<leader>af", ":lua vim.lsp.buf.code_action()<cr>", ns)
set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<cr>", ns)
set("n", "<leader>rn", ":lua vim.lsp.buf.rename()", ns)
set("n", "<leader>dn", ":lua vim.lsp.diagnostic.goto_next()", ns)
set("n", "<leader>dN", ":lua vim.lsp.diagnostic.goto_prev()", ns)

set("n", "<leader>fu", ":lua require('telescope.builtin').lsp_references()<cr>", ns)
set("n", "<leader>gd", ":lua require('telescope.builtin').lsp_definitions()<cr>", ns)
set("n", "<leader>dd", ":lua require('telescope.builtin').lsp_document_diagnostics()<cr>", ns)
set("n", "<leader>dD", ":lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>", ns)

-- Code actions
set('n', '<leader>xd', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true})
set('v', '<leader>xx', '<cmd>lua require\'telescope.builtin\'.lsp_range_code_actions{}<CR>', ns)

-- File Tree
set("n", "<leader>to", [[<cmd>Neotree filesystem toggle left<CR>]], ns)
set("n", "<leader>tg", [[<cmd>Neotree git_status toggle left<CR>]], ns)
set("n", "<leader>tb", [[<cmd>Neotree buffers toggle left<CR>]], ns)

-- ToggleTerm
set("n", "<leader>tg", "<cmd>lua _lazygit_toggle()<CR>", ns)
set("n", "<leader>th", "<cmd>lua _htop_toggle()<CR>", ns)