vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<space>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	end,
})

vim.diagnostic.config({
	virtual_text = true,
})

local lsp = {
	"actionsls",
	"clangd",
	"cssls",
	"cssmodules_ls",
	"css_variables",
	"dartls",
	"eslint",
	"gopls",
	"html",
	"jdtls",
	"lua_ls",
	"pyright",
	"rust_analyzer",
	"stylelint_lsp",
	"texlab",
	"ts_ls",
}

for _, server in ipairs(lsp) do
	vim.lsp.enable(server)
end

require("config.lsp.actionsls")
require("config.lsp.clangd")
require("config.lsp.lua_ls")
require("config.lsp.stylelint_lsp")

return lsp
