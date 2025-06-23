return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
        options = {
            mode = "buffers",
            separator_style = "thin",
            show_buffer_close_icons = true,
            show_close_icon = true,
        },
        highlights = {
            background = {
                bg = 'none'
            },
            fill = {
                bg = 'none'
            }
        }
    })
  end
}