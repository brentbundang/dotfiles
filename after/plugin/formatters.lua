local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
	exclude_path_patterns = {
		"/node_modules/",
		".local/share/nvim/lazy",
	},
	formatter_by_ft = {
		typescript = formatters.prettierd, 
		python = formatters.black,
		javascript = formatters.lsp,
		javascriptreact = formatters.lsp,
		typescript = formatters.prettierd,
		typescriptreact = formatters.prettierd
	}
})
