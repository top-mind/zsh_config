require("config.lazy")
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
