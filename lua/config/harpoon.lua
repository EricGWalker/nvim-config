local harpoon = require('harpoon')
harpoon:setup({})

-- basic telescope configuration


-- Keybindings:
-- vim.keymap.set("n", "<M-e>", function() toggle_telescope(harpoon:list()) end,
    -- { desc = "Open harpoon window" })
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
-- vim.keymap.set("n", "<leader>ad", function() harpoon:list():remove(selected_entry)  end)
vim.keymap.set("n", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

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
