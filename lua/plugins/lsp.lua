return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "angularls", "lua_ls", "html", "cssls", "ts_ls", "csharp_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local on_attach = function(client, bufnr)
        local keymap = vim.keymap.set
        keymap("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Show documentation for what is under cursor" })
        keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = bufnr })
        keymap("n", "gr", vim.lsp.buf.references, { desc = "Go to references", buffer = bufnr })
        keymap("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation", buffer = bufnr })
        keymap("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions", buffer = bufnr })
      end

      local servers = { "html", "cssls", "ts_ls", "csharp_ls" }

      -- configure angular server
      lspconfig["angularls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        root_dir = util.root_pattern("angular.json", "project.json", "nx.json"),
      })

      for _, server_name in ipairs(servers) do
        lspconfig[server_name].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end
    end,
  },
}
