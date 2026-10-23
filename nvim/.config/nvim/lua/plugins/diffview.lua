return {
	"sindrets/diffview.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	cmd = {
		"DiffviewOpen",
		"DiffviewClose",
		"DiffviewToggleFiles",
		"DiffviewFocusFiles",
		"DiffviewRefresh",
		"DiffviewFileHistory",
	},
	opts = {
		enhanced_diff_hl = true,
		view = {
			merge_tool = {
				layout = "diff3_mixed",
				disable_diagnostics = true,
			},
		},
	},
	keys = {
		{ "<leader>d", nil, desc = "Diffview" },
		{ "<leader>do", "<cmd>DiffviewOpen<cr>", desc = "Open diffview" },
		{ "<leader>dc", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
		{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "Branch file history" },
		{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", desc = "Current file history" },
		{ "<leader>df", "<Esc><cmd>'<,'>DiffviewFileHistory<cr>", mode = "v", desc = "Selection history" },
		{ "<leader>dt", "<cmd>DiffviewToggleFiles<cr>", desc = "Toggle file panel" },
	},
}
