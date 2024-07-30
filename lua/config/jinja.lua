vim.filetype.add {
  extension = {
    jinja = 'jinja',
    jinja2 = 'jinja',
    j2 = 'jinja',
  },
}

vim.lsp.set_log_level("debug")

-- local nvim_lsp = require('lspconfig')
-- local configs = require('lspconfig.configs')
