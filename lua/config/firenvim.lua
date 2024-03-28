vim.g.firenvim_config = {
    globalSettings = { alt = "all" },
    localSettings = {
        [".*"] = {
            cmdline  = "neovim",
            content  = "text",
            priority = 0,
            selector = "textarea",
            takeover = "always"
        }
    }
}

if vim.g.started_by_firenvim == true then
    vim.o.laststatus = 0
    vim.cmd('startinsert')

else
  vim.o.laststatus = 2

end
