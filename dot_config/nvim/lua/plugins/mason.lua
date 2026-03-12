-- Extend the defaults with additional mason registries
return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.registries = opts.registries or {}
      vim.list_extend(opts.registries, {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      })
    end,
  },
}
