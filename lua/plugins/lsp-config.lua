return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function() require('mason').setup() end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {'lua_ls', 'rust_analyzer', 'pyright', 'sqlls', 'html', 'cssls', 'clangd', 'bashls', 'powershell_es'}
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.pyright.setup({})
            lspconfig.sqlls.setup({})
            lspconfig.html.setup({})
            lspconfig.cssls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.bashls.setup({})
            lspconfig.powershell_es.setup({})
            lspconfig.emmet_language_server.setup({})
        end
    }
}
