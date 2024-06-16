return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1

    local db_ui_save_location = vim.fn.expand('~/tmp/db_ui_queries')

    if vim.fn.isdirectory(db_ui_save_location) == 0 then
      vim.fn.mkdir(db_ui_save_location, 'p')
    end
    vim.g.db_ui_save_location = db_ui_save_location

    vim.api.nvim_exec([[
      augroup DadbodOutput
        autocmd!
        autocmd FileType dbout setlocal nofoldenable
      augroup END
    ]], false)
  end,
}
