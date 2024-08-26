local telescope = require('telescope')
local builtin = require('telescope.builtin')
-- local fb_extension = require('telescope.extensions.file_browser')




--This config was stolen from @ThePrimeAgen

-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
-- vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

-- Recommended Keymaps from telescope GitHub

--Keymap
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "telescope.builtin.find_files" })
vim.keymap.set('n', '<leader>fd', builtin.fd, { desc = "telescope.builtin.fd" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "telescope.builtin.live_grep" })
vim.keymap.set('n', '<leader>fi', builtin.current_buffer_fuzzy_find, {
    desc =
    "telescope.builtin.current_buffer_fuzzy_find (tags: grep)"
})
vim.keymap.set('n', '<leader>fu', builtin.buffers, { desc = "telescope.builtin.buffers" })
vim.keymap.set('n', '<leader>fa', builtin.builtin, { desc = "telescope.builtin.builtin" })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "telescope.builtin.keymaps" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "telescope.builtin.help_tags" })
-- vim.keymap.set('n', 'grr', builtin.lsp_references, {desc="telescope.builtin.lsp_references"})
vim.keymap.set('n', 'grr', function() builtin.lsp_references({ initial_mode = 'normal' }) end,
    { desc = "telescope.builtin.lsp_references" })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = "telescope.builtin.lsp_definitions" })


vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo initial_mode=normal<cr>", { desc = "Undo History with Telescope" })

vim.keymap.set('n', '<leader>pv',
    function() telescope.extensions.file_browser.file_browser({ initial_mode = 'normal', path = '%:p:h' }) end) -- file browser
-- vim.keymap.set('n', '<leader>fd', fb_extension.folder_browser, {}) -- folder directory
-- above is broken... I will learn one day how to get it to work

-- Config

-- These variables aren't being used yet, but they may one day...
local fb_actions = require "telescope".extensions.file_browser.actions
local fb_picker = require "telescope".extensions.file_browser.picker

telescope.setup {
    defaults = {
        initial_mode = 'insert',
        layout_strategy = "flex",
        mappings = {
            i = {
                ["<C-j>"] = "move_selection_next",
                ["<C-k>"] = "move_selection_previous",
                ["<C-c>"] = false,
                ["<C-o>"] = false,
            },

            n = {
                ["<C-c>"] = "close",
                ["q"] = "close",
                --["o"] = false, -- disables the open hotkey (This config is set for WSL, where I do not want linux trying to open applications)
            },
        },

    },

    pickers = {
        buffers = {
            initial_mode = 'normal'
        },
    },

    extensions = {
        file_browser = {
            hijack_netrw = true,
            mappings = {
                ["i"] = {},
                ["n"] = { -- your custom normal mode mappings
                },
            },
            initial_mode = 'normal'
        },
        {
        },
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        undo = {
        },
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
        }
    }
}


telescope.load_extension("file_browser")
telescope.load_extension("ui-select")
telescope.load_extension("undo")
-- telescope.load_extension("fzf")

