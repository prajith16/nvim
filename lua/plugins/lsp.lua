return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "csharp_ls", "html", "cssls", "angularls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.csharp_ls.setup{}
      lspconfig.html.setup{}
      lspconfig.cssls.setup{}
      lspconfig.angularls.setup{}
    end
  }
}
