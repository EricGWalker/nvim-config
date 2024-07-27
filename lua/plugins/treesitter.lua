local conf = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
        ensure_installed = {'lua'},
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
