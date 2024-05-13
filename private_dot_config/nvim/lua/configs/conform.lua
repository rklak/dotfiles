local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascriptreact = { "eslint_d" },
    typescript = { "eslint_d" },
    typescriptreact = { "eslint_d" },
    json = { "eslint_d" },
    javascript = { "eslint_d" },
    sh = { "shfmt" },
    ansible = { "ansible-lint" },
  },
  format_on_save = {
    lsp_fallback = false,
    timeout_ms = 5000,
  },
}

--vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--  pattern = "*",
--  callback = function(args)
--    require("conform").format { bufnr = args.buf }
--  end,
--})

require("conform").setup(options)
