-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
			window = {
				width = 50,
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
			},
			close_if_last_window = true,
			sort_function = function(a, b)
				if a.type == b.type then
					return a.path > b.path
				else
					return a.type > b.type
				end
			end,
		}
	end,
}
