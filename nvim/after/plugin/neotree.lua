require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = true,
            never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                ".DS_Store",
                "thumbs.db"
            },
        },
        follow_current_file = true,
    },
    default_component_configs = {
        git_status = {
            symbols = {
                -- Change type
                added     = "✚", -- or ", but this is redundant info if you use git_status_colors on the name
                modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
                deleted   = "✖",-- this can only be used in the git_status source
                renamed   = "",-- this can only be used in the git_status source
                -- Status type
                untracked = "",
                ignored   = "",
                unstaged  = "",
                staged    = "",
                conflict  = "",
            }
        },
        name = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
        },
    },
})
