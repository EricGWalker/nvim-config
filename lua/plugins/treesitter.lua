local conf = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        highlight = {enable = true},
        indent = {enable = true},
        auto_install = true
    })

end

return {
    'nvim-treesitter/nvim-treesitter',
    build = 'TSUpdate',
    lazy = false,
    config = conf
}
