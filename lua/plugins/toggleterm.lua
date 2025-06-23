return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup()

    local keymap = vim.keymap.set
    keymap("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })

    local Terminal = require("toggleterm.terminal").Terminal
    local float_term = Terminal:new({
      direction = 'float',
    })

    function _G.toggle_float_term()
      float_term:toggle()
    end

    keymap("n", "<leader>T", "<cmd>lua _G.toggle_float_term()<CR>", { desc = "Toggle floating terminal" })
  end
}
