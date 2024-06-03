vim.g.copilot_no_tab_map = true

return {
	"github/copilot.vim",
	config = function()
		vim.keymap.set("i", "<M-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true, replace_keycodes = false })
	end,
}
