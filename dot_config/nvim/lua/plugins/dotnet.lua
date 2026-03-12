return {
  -- disable omnisharp
  { "Hoffs/omnisharp-extended-lsp.nvim", enabled = false },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = false,
      },
    },
  },
}
