---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>fs"] = { ":w<CR>", "Save file" },
    ["<leader>q"] = { ":q<CR>", "Quit" },

    ["<leader>h"] = { ":vsplit<CR>", "Vertical split" },
    ["<leader>v"] = { ":split<CR>", "Horizontal split" },

    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },

    ["<leader>ld"] = { "<cmd>Trouble<CR>", "Trouble diagnostics" },

    ["<leader>we"] = { "<C-w>=", "Make windows even" },

    ["<leader>ge"] = { "oif err != nil {<CR>return err<CR>}<Esc>" },
  },
  i = {
    ["jk"] = { "<Esc>" },
    ["<C-j>"] = { "" },
    ["<C-k>"] = { "" },
  },
}

M.lspconfig = {
  n = {
    ["<leader>lr"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Live grep" },
  },
}

M.disabled = {
  n = {
    ["<leader>ra"] = false,
    ["<leader>ca"] = false,
  },
}

return M
