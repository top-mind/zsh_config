return {
  'tomtomjhj/coq-lsp.nvim',
  dependencies = {
    'whonore/Coqtail',
    'neovim/nvim-lspconfig',
  },
  config = function()
    vim.api.nvim_set_var('loaded_coqtail', 1)
    vim.api.nvim_set_var('coqtail#supported', 0)
    require('coq-lsp').setup{
    }
  end,
}
