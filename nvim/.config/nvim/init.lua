local opt = vim.opt

opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2

opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.g.python3_host_prog = "~/.asdf/installs/python/3.11.7/bin/python3"

-- vim pane navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "cs",
    callback = function()
        vim.opt_local.makeprg = "dotnet build"

        -- Mapeia um comando ou atalho para executar o build e verificar erros
        vim.api.nvim_buf_set_keymap(0, 'n', '<leader>b', '', {
            callback = function()
                vim.cmd('make')
                if #vim.fn.getqflist() > 0 then
                    vim.cmd('copen')
                end
            end,
            noremap = true,
            silent = true
        })
    end
})

require("lazy").setup("plugins")
