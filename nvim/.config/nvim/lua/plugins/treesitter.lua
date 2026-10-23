local parsers = {
	"c",
	"cpp",
	"css",
	"dart",
	"go",
	"html",
	"javascript",
	"lua",
	"proto",
	"python",
	"rust",
	"tsx",
	"typescript",
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install(parsers)

		local filetypes = {}
		for _, lang in ipairs(parsers) do
			vim.list_extend(filetypes, vim.treesitter.language.get_filetypes(lang))
		end

		vim.api.nvim_create_autocmd("FileType", {
			pattern = filetypes,
			callback = function(args)
				if pcall(vim.treesitter.start, args.buf) then
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
