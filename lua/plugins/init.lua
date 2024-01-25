-- DelMe

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

return{
    { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
}

