vim.lsp.config("actionsls", {
	cmd = { "actions-languageserver", "--stdio" },
	filetypes = { "yaml.ghactions" },
	root_markers = { ".git" },
})
