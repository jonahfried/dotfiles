local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
  },
})

vim.keymap.set('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>')
