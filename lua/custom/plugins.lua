local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "BurntSushi/ripgrep",
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",
  },

  {
    "windwp/nvim-ts-autotag",
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
  },

  {
    "windwp/nvim-ts-autotag",
  },

  {
    "tpope/vim-sleuth",
    lazy = false,
  },

  {
    "aznhe21/actions-preview.nvim",
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },

  {
    "Decodetalkers/csharpls-extended-lsp.nvim",
    config = function()
    end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },
}

return plugins
