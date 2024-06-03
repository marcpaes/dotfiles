return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local ts_config = require("nvim-treesitter.configs")
    ts_config.setup({
      ensure_installed = { "lua", "javascript", "c_sharp", "go" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
