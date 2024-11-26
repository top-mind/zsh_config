local mapbuf = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

mapbuf('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', opt)
-- code action
-- there is a bug in Lspsaga code_action now, change to it when fixed.
mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
-- go xx
-- mapbuf('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opt)
-- mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
-- mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
-- diagnostic
-- mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
-- mapbuf('n', 'gp', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opt)
-- mapbuf('n', 'gn', '<cmd>Lspsaga diagnostic_jump_next<CR>', opt)
-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
-- leader + =
mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.format()<CR>', opt)
mapbuf('n', '<leader>k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
-- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fk', builtin.man_pages, { desc = 'Telescope man pages' })
vim.keymap.set('n', '<leader>f=', builtin.spell_suggest, { desc = 'Telescope spell suggest' })
vim.keymap.set('n', '<leader>fj', builtin.jumplist, {} )
mapbuf('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', opt)
mapbuf('n', 'gD', '<cmd>Telescope lsp_type_definitions<CR>', opt)
mapbuf('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opt)
mapbuf('n', 'gr', '<cmd>Telescope lsp_references<CR>', opt)
mapbuf('n', 'go', '<cmd>Telescope diagnostics<CR>', opt)
mapbuf('n', '<leader>id', '<cmd>Telescope lsp_document_symbols<CR>', opt)
mapbuf('n', '<leader>iw', '<cmd>Telescope lsp_workspace_symbols<CR>', opt)
