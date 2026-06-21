require("LazySetup")
require("telescope")
------------ KeyMaps
require("keymaps")
require('lspconfig')

require('mini.snippets').setup({})
require('mini.completion').setup({})

vim.lsp.config('clangd',{
	cmd={'clangd'},filetype={'cpp'}})

vim.lsp.enable({'clangd'})

vim.lsp.config('rust',{
	cmd={'rust-analyzer'},filetype={'rs'}})

vim.lsp.enable({'rust'})


vim.cmd("colorscheme gruvbox")
-- Treesiter
require('nvim-treesitter').setup{
	highlight = {
		enable = true,
	}
}

vim.cmd("set number")


--print("Hello")
