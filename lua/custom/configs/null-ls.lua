local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = null_ls.builtins.formatting

local opts = {
  sources = {
    -- webdev stuff
    formatting.deno_fmt,
    formatting.prettierd.with {
      filetypes = { "html", "markdown", "css", "svelte" },
      extra_filetypes = { "svelte" },
    },

    -- Lua
    formatting.stylua,

    -- Go
    formatting.gofumpt,
    formatting.goimports_reviser,
    formatting.golines,

    -- ocaml
    formatting.ocamlformat,

    -- Rust
    formatting.rustfmt,
  },

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      -- vim.api.nvim_create_autocmd("BufWritePre", {
      --   group = augroup,
      --   buffer = bufnr,
      --   callback = function()
      --     vim.lsp.buf.format { bufnr = bufnr }
      --   end,
      -- })
    end
  end,
}

null_ls.setup(opts)
