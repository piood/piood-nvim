require("mason-lspconfig.install").prefer_git = true

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {},
})

local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
end
local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.offsetEncoding = { "utf-16" }

require("lspconfig").sumneko_lua.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	cmd = { "/usr/bin/lua-language-server" },
	flags = {
		debounce_text_changes = 150,
	},
})
require("lspconfig").jedi_language_server.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	cmd = { "/usr/bin/jedi-language-server" },
	flags = {
		debounce_text_changes = 150,
	},
})
require("lspconfig").clangd.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	cmd = { "/usr/bin/clangd" },
	flags = {
		debounce_text_changes = 150,
	},
})
