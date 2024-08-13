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
                ensure_installed = { 'lua_ls', 'rust_analyzer', 'ruff_lsp', 'pyright', 'sqls', 'html', 'cssls', 'clangd', 'bashls', 'powershell_es', 'emmet_language_server', 'jinja_lsp' }
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
            lspconfig.sqls.setup({
                -- on_attach = function(client, bufnr)
                --     require('sqls').on_attach(client, bufnr) -- require sqls.nvim
                -- end,
                -- settings = {
                --     sqls = {
                --         connections = {
                --             {
                --                 alias= "mariadb_alias",
                --                 driver = 'mysql',
                --             },
                --         },
                --     },
                -- },
            })
            lspconfig.html.setup({
                filetypes = { "html", "templ", "htmldjango" }
            })
            lspconfig.cssls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.bashls.setup({})
            lspconfig.powershell_es.setup({})
            lspconfig.emmet_language_server.setup({})
            lspconfig.jinja_lsp.setup({})

            local on_attach = function(client, bufnr)
                if client.name == 'ruff_lsp' then
                    -- Disable hover in favor of Pyright
                    client.server_capabilities.hoverProvider = false
                end
            end

            require('lspconfig').ruff_lsp.setup {
                on_attach = on_attach,
            }

            require('lspconfig').pyright.setup {
                settings = {
                    pyright = {
                        disableOrganizeImports = true, -- Using Ruff
                    },
                    python = {
                        analysis = {
                            ignore = { '*' }, -- Using Ruff
                        },
                    },
                    capabilities = (function()
                        local capabilities = vim.lsp.protocol.make_client_capabilities()
                        capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
                        return capabilities
                    end)(),
                },
            }
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
        end,

    },
}
