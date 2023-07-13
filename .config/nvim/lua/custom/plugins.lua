local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "typescript-language-server",
        "tflint",
        "mypy",
        "flake8",
        "black"
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",


        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "terraform",
        "python",
        "rust"
      },
    },
    {
      "neovim/nvim-lspconfig",
      config = function ()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end
    },
    {
      "jose-elias-alvarez/null-ls.nvim",
      ft = {"python"},
      opts = function ()
        return require "custom.configs.null-ls"
      end
    }
  }
}

return plugins
