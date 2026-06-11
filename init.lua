require("LazySetup")
require("telescope")
------------ KeyMaps
require("keymaps")

------------- ColorSchem
-- Default options:
--vim.pack.add({
-- "https://github.com/nvim-mini/mini.nvim"
--})
require('lspconfig')
require("gruvbox").setup()
--vim.cmd.colorscheme("gruvbox")
--vim.pack.add{
--  { src = 'https://github.com/neovim/nvim-lspconfig' },
--}


--require("gruvbox").setup({
--  terminal_colors = true, -- add neovim terminal colors
--  undercurl = true,
--  underline = true,
--  bold = true,
--  italic = {
--    strings = true,
--    emphasis = true,
--    comments = true,
--    operators = false,
--    folds = true,
--  },
--  strikethrough = true,
--  invert_selection = false,
--  invert_signs = false,
--  invert_tabline = false,
--  inverse = true, -- invert background for search, diffs, statuslines and errors
--  contrast = "", -- can be "hard", "soft" or empty string
--  palette_overrides = {},
--  overrides = {},
--  dim_inactive = false,
--  transparent_mode = false,
--})


--vim.lsp.config('cpp', {
--  cmd = {'clangd'},
--  filetypes = {'cpp'},
--  root_markers = {'.cpp.json', '.cpp.jsonc'},
--})

--require('lspconfig').clangd.setup({})


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

--vim.api.nvim_create_autocmd('FileType', {
--	pattern = {'c','cpp' ,'rust', 'javascript', 'zig' },
--	callback = function()
--		-- syntax highlighting, provided by Neovim
--		vim.treesitter.start()
--		-- folds, provided by Neovim
--		vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
--		vim.wo.foldmethod = 'expr'
		-- indentation, provided by nvim-treesitter
--		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
--	end,
--})








vim.cmd("set number")





print("Hello")
