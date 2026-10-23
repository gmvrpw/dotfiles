return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	cmd = "ConformInfo",
	keys = {
		{
			"<space>f",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			c = { "clang_format" },
			css = { "prettier" },
			cpp = { "clang_format" },
			cuda = { "clang_format" },
			dart = { "dart_format" },
			java = { "google-java-format" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			json = { "prettier" },
			go = { "golines" },
			html = { "superhtml" },
			lua = { "stylua" },
			proto = { "clang_format" },
			python = { "autopep8" },
			rust = { "rustfmt" },
			tex = { "latexindent" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
		},
		format_after_save = {
			lsp_format = "never",
		},
	},
}
