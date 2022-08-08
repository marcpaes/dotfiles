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