local conf = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
        ensure_installed = {"c", "lua", "vim", "vimdoc", "html"},
        highlight = {enable = true},
        indent = {enable = true},
    })
end

return {
    'nvim-treesitter/nvim-treesitter',
    build = 'TSUpdate',
    lazy = false,
    config = conf
}
