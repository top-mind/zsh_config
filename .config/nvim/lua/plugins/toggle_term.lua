return {
  'akinsho/toggleterm.nvim', version = "*",
  config = function()
    require("toggleterm").setup{
      open_mapping = [[<C-\>]],
    }
    -- keymaps
    local opts = {noremap = true}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
    vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
    vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
    vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-W>l]], opts)

    local set_opfunc = vim.fn[vim.api.nvim_exec(
      [[
        func s:set_opfunc(val)
        let &opfunc = a:val
        endfunc
        echon get(function('s:set_opfunc'), 'name')
      ]],
      true
    )]
    local trim_spaces = true
    vim.keymap.set("v", "<space>s", function()
      require("toggleterm").send_lines_to_terminal("virsual_selection", trim_spaces, { args = vim.v.count })
    end)
    -- Replace with these for the other two options
    -- require("toggleterm").send_lines_to_terminal("visual_lines", trim_spaces, { args = vim.v.count })
    -- require("toggleterm").send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })

    -- For use as an operator map:
    -- Send motion to terminal
    vim.keymap.set("n", [[<leader><c-\>]], function()
      set_opfunc(function(motion_type)
        require("toggleterm").send_lines_to_terminal(motion_type, false, { args = vim.v.count })
      end)
      vim.api.nvim_feedkeys("g@", "n", false)
    end)
    -- Double the command to send line to terminal
    vim.keymap.set("n", [[<leader><c-\><c-\>]], function()
      set_opfunc(function(motion_type)
        require("toggleterm").send_lines_to_terminal(motion_type, false, { args = vim.v.count })
      end)
      vim.api.nvim_feedkeys("g@_", "n", false)
    end)
    -- Send whole file
    vim.keymap.set("n", [[<leader><leader><c-\>]], function()
      set_opfunc(function(motion_type)
        require("toggleterm").send_lines_to_terminal(motion_type, false, { args = vim.v.count })
      end)
      vim.api.nvim_feedkeys("ggg@G''", "n", false)
    end)
  end,
}
