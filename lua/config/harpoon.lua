local harpoon = require('harpoon')
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values

local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    local make_finder = function()
        local paths = {}
        for _, item in ipairs(harpoon_files.items) do
            table.insert(paths, item.value)
        end

        return require("telescope.finders").new_table({
            results = paths,
        })
    end

    require("telescope.pickers").new({initial_mode = 'normal'}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
        attach_mappings = function(prompt_buffer_number, map)
            -- The keymap you need
            map("n", "x", function()
                local state = require("telescope.actions.state")
                local selected_entry = state.get_selected_entry()
                local current_picker = state.get_current_picker(prompt_buffer_number)

                -- This is the line you need to remove the entry
                harpoon:list():remove(selected_entry)
                current_picker:refresh(make_finder())
            end)

            return true
        end,
    }):find()
end

-- Keybindings:
vim.keymap.set("n", "<M-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
-- vim.keymap.set("n", "<leader>ad", function() harpoon:list():remove(selected_entry)  end)
-- vim.keymap.set("n", "<C-d>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<M-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<M-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<M-l>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<M-f>", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<M-d>", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<M-s>", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<M-a>", function() harpoon:list():select(8) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<M-L-R>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<M-L-L>", function() harpoon:list():next() end)
