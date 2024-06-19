local frontend_formatter = "prettierd" -- or "eslintd" with prettier plugin
local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascriptreact = { frontend_formatter },
    typescript = { frontend_formatter },
    typescriptreact = { frontend_formatter },
    json = { frontend_formatter },
    javascript = { frontend_formatter },
    sh = { "shfmt" },
    go = { "goimports-reviser", "gofumpt", "golines" },
    ansible = { "ansible-lint" },
    css = { frontend_formatter },
  },
  format_on_save = {
    lsp_fallback = false,
    timeout_ms = 10000,
  },
}

require("conform").setup(options)
