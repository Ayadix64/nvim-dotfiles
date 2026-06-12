require("LazySetup")
require("telescope")
------------ KeyMaps
require("keymaps")
require('lspconfig')

require('mini.snippets').setup({})
require('mini.completion').setup({})

vim.lsp.config('clangd',{
	cmd={'clangd'},filetype={'cpp'}})
vim.lsp.enable({'clangd', 'rust_analyzer'})

vim.cmd("colorscheme gruvbox")
-- Treesiter
require('nvim-treesitter').setup{
	highlight = {
		enable = true,
	}
}

vim.cmd("set number")


--print("Hello")
