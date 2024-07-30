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
                ensure_installed = { 'lua_ls', 'rust_analyzer', 'pyright', 'sqlls', 'html', 'cssls', 'clangd', 'bashls', 'powershell_es', 'emmet_language_server', 'jinja_lsp' }
            })
        end
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
    },
    -- This is the money module
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        dependencies = {
            {
                "SmiteshP/nvim-navbuddy",
                dependencies = {
                    "SmiteshP/nvim-navic",
                    "MunifTanjim/nui.nvim"
                },
            },
        },
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
            lspconfig.jinja_lsp.setup({})
        end
    },
    {
        "lukas-reineke/lsp-format.nvim",
        -- https://github.com/lukas-reineke/lsp-format.nvim
        lazy = false,
        config = function()
            require("lsp-format").setup {}
            local on_attach = function(client, bufnr)
                require("lsp-format").on_attach(client, bufnr)
                -- ... custom code ...
            end
            require("lspconfig").gopls.setup { on_attach = on_attach }
        end
    }
}

