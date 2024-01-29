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
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fu', builtin.buffers, {})
vim.keymap.set('n', '<leader>fa', builtin.builtin ) 
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {}) 
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>pv', function() telescope.extensions.file_browser.file_browser({initial_mode = 'normal', path='%:p:h'}) end) -- file browser

-- vim.keymap.set('n', '<leader>fd', fb_extension.folder_browser, {}) -- folder directory
-- above is broken... I will learn one day how to get it to work

-- Config

-- These variables aren't being used yet, but they may one day...
local fb_actions = require "telescope".extensions.file_browser.actions
local fb_picker = require "telescope".extensions.file_browser.picker

telescope.setup {
    defaults = {
        initial_mode = 'insert',
        mappings = {
            i = {
                ["<C-j>"] = "move_selection_next",
                ["<C-k>"] = "move_selection_previous",
                ["<C-c>"] = false,
                ["<C-o>"] = false,
            },

            n = {
                ["<C-c>"] = "close",
                ["o"] = false, -- disables the open hotkey (This config is set for WSL, where I do not want linux trying to open applications)
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
                ["i"] = {
                    -- What I was trying to do above:
                    -- vim.keymap.set('n', '<leader>fb', fb_picker.file_browser, {} ) -- file browser
                    -- How it's supposed to work...
                    -- ["<C-t>"] = fb_actions.toggle_browser -- This 
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },

            initial_mode = 'normal'
        },
    },
}

telescope.load_extension "file_browser"


-- local fb_picker = telescope.extensions.file_browser.picker

