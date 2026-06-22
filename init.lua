require("LazySetup")
require("telescope")
------------ KeyMaps
require("keymaps")
require('lspconfig') --.clangd.setup({})


require('mini.snippets').setup({})
require('mini.completion').setup({})



vim.lsp.config('clangd',{
	on_attach = on_attach,
	cmd = { "clangd"},
	filetypes = {"c", "cpp"},
	capabilities = capabilities

})


vim.lsp.config('rust',{
	on_attach = on_attach,
	cmd={"rust-analyzer"},
	filetype={"rs"},
	capabilities = capabilities
})


vim.lsp.enable({"clangd"}) 
vim.lsp.enable({"rust"})


vim.cmd("colorscheme gruvbox")
-- Treesiter
require('nvim-treesitter').setup{
	highlight = {
		enable = true,
	}
}

vim.cmd("set number")


--print("Hello")
