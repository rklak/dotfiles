local plugins = {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = function()
      return require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "ansible-lint",
        "eslint-lsp",
        "css-lsp",
        "shfmt",
        "bash-language-server",
        "js-debug-adapter",
        "eslint_d",
        "gopls",
        "gofumpt",
        "golines",
        "goimports",
        "prettierd",
        "typescript-language-server",
        "sqlls",
        "selene",
        "stylua",
        "tailwindcss-language-server",
        "emmet-language-server",
        "yamlfmt",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = function()
      return require "configs.zen-mode"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {
      view = {
        relativenumber = true,
        width = 40,
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "elixir",
        "bash",
        "heex",
        "eex",
        "vim",
        "lua",
        "go",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "sql",
        "yaml",
      },
      auto_install = true,
      language = {
        register = function()
          vim.treesitter.language.register("typescript", "hbs")
        end,
      },
      -- additional_vim_regex_highlighting = { "js" },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            prompt_position = "top",
            mirror = true,
            preview_width = 0.55,
            results_width = 0.8,
          },
          preview_cutoff = 0,
        },
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup {}
    end,
  },
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      return require "configs.harpoon"
    end,
    config = function(_, opts)
      require("harpoon").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy = false,
    after = "nvim-treesitter",
    opts = function()
      return require "configs.textobjects"
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  { "mbbill/undotree", lazy = false },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true,
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
}

return plugins
