return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup()

    local keymap = vim.keymap.set

    local Terminal = require("toggleterm.terminal").Terminal
    local float_term = Terminal:new({
      direction = 'float',
    })

    function _G.toggle_float_term()
      float_term:toggle()
    end

    keymap("n", "<leader>t", "<cmd>lua _G.toggle_float_term()<CR>", { desc = "Toggle floating terminal" })
  end
}
