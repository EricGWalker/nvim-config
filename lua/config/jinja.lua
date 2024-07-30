vim.filetype.add {
    extension = {
        jinja = 'jinja',
        jinja2 = 'jinja',
        j2 = 'jinja',
    },
}

-- uncomment this part if language server is not working
-- vim.lsp.set_log_level("debug")

local nvim_lsp = require('lspconfig')
local configs = require('lspconfig.configs')

-- try to remove this if statement at the moment and leave only that inner block
-- if it succeeds then add it again

if not configs.jinja_lsp then
    configs.jinja_lsp = {
        default_config = {
            name = "jinja-lsp",
            cmd = { "jinja-lsp" },
            filetypes = { "html", "jinja", "rs", "css", "py" },
            root_dir = function(fname)
                return "."
                --return nvim_lsp.util.find_git_ancestor(fname)
            end,
            init_options = {
                templates = './templates',
                backend = { './' },
                lang = "python"

            }
        }
    }
end

nvim_lsp.jinja_lsp.setup {}
