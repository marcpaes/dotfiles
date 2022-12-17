local telescope = require "telescope"

telescope.setup {
    defaults = {
        path_display = { "smart" }
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- even more opts
            }
        }
    }
}

telescope.load_extension("fzf")
telescope.load_extension("ui-select")
