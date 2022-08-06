local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

-- Command
set("n", ";", ":", { noremap = true })

-- Clean Search
set("n", "<Leader><Space>", ":let @/=''<CR>", ns)
