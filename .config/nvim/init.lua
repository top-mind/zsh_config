-- for tmux-navigator
vim.api.nvim_set_var('tmux_navigator_no_mappings', 1)
vim.api.nvim_set_var('tmux_navigator_save_on_switch', 1)
require("config.lazy")

require("mason").setup()
require("mason-lspconfig").setup()

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['clangd'].setup {
  capabilities = capabilities
}

require("keybindings")

vim.o.ignorecase=true
vim.o.smartcase=true
vim.o.autowrite=true
vim.o.hidden=true
vim.o.number=true
vim.o.relativenumber=true
vim.o.cursorline=true
vim.o.hlsearch=true
vim.o.smartindent=true
vim.o.expandtab=true
vim.o.isfname=vim.o.isfname .. ',(,)'
vim.o.includeexpr="substitute(v:fname,'\\$(\\([^$]*\\))','$\\1','g')"
vim.o.switchbuf="useopen,usetab,newtab"
vim.o.textwidth=100
vim.o.shiftwidth=2
