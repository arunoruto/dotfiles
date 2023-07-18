local plugin = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  --{
  --  "jose-elias-alvarez/null-ls.nvim",
  --  ft = {"python"},
  --  opts = function()
  --    return require "custom.configs.null-ls"
  --  end,
  --},
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        --"lua-language-server",
      }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "lua_ls",
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "python",
        "json",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugin
