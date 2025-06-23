return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c_sharp", "html", "css", "scss", "angular" },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
      })
    end,
  },
}
