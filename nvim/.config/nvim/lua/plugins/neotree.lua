return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"muniftanjim/nui.nvim",
	},
	opts = {
		popup_border_style = "rounded",
		default_component_configs = {
			indent = {
				with_markers = false,
			},
			icon = {
				folder_empty = "󰜌",
			},
			modified = {
				symbol = "[+]",
			},
			git_status = {
				symbols = {
					added = "",
					modified = "",
				},
			},
		},
		window = {
			mappings = {
				["Z"] = "expand_all_nodes",
			},
		},
	},
}
