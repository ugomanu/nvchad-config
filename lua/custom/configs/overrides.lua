local M = {}

M.treesitter = {
  ensure_installed = {
    "vim", "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettierd",
    "gopls",
    "rust-analyzer",
    "csharp-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    dotfiles = false,
    custom = { ".git", "node_modules", ".svelte-kit", "bin", "obj", ".config" },
  },

  git = {
    enable = true,
    ignore = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

local cmp = require "cmp"
M.cmp = {
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
  },
}

local actions = require "telescope.actions"
M.telescope = {
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<Esc>"] = actions.close,
        ["jk"] = actions.close,
      },
    },
  },

  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_cursor(),
    },
  },

  extensions_list = { "ui-select" },
}

return M
