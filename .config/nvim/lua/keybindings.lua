local mapbuf = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

mapbuf('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', opt)
-- code action
-- there is a bug in Lspsaga code_action now, change to it when fixed.
mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
-- go xx
mapbuf('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opt)
mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
mapbuf('n', 'gr', '<cmd>Lspsaga finder<CR>', opt)
-- diagnostic
mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
mapbuf('n', 'gp', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opt)
mapbuf('n', 'gn', '<cmd>Lspsaga diagnostic_jump_next<CR>', opt)
-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
-- leader + =
mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
-- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
-- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
-- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
-- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
-- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
