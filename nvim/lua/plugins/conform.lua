return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    local formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
    }
    opts.formatters_by_ft = formatters_by_ft
    return opts
  end,
}
