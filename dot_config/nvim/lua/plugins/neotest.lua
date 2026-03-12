return {
  {
    "Nsidorenco/neotest-vstest",
    init = function()
      ---@type neotest_vstest.Config
      vim.g.neotest_vstest = {
        dap_settings = { type = "netcoredbg" },
      }
    end,
  },
  {
    "nvim-neotest/neotest",
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      table.insert(opts.adapters, require("neotest-vstest"))
    end,
  },
}
