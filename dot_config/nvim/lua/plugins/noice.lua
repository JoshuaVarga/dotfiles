return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        -- fsautocomplete spams with notifications when editing
        filter = {
          event = "lsp",
          kind = "progress",
          cond = function(message)
            local client = vim.tbl_get(message.opts, "progress", "client")
            return client == "fsautocomplete"
          end,
        },
        opts = { skip = true },
      },
    },
  },
}
