require("telescope").load_extension('harpoon')

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)



vim.keymap.set("n", "<M-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<M-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<M-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<M-l>", function() ui.nav_file(4) end)


-- -- This entire section is for 16 page support

-- vim.keymap.set("n", "<M-h><M-h>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<M-h><M-j>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<M-h><M-k>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<M-h><M-l>", function() ui.nav_file(4) end)
-- 
-- vim.keymap.set("n", "<M-j><M-h>", function() ui.nav_file(5) end)
-- vim.keymap.set("n", "<M-j><M-j>", function() ui.nav_file(6) end)
-- vim.keymap.set("n", "<M-j><M-k>", function() ui.nav_file(7) end)
-- vim.keymap.set("n", "<M-j><M-l>", function() ui.nav_file(8) end)
-- 
-- vim.keymap.set("n", "<M-k><M-h>", function() ui.nav_file(9) end)
-- vim.keymap.set("n", "<M-k><M-j>", function() ui.nav_file(10) end)
-- vim.keymap.set("n", "<M-k><M-k>", function() ui.nav_file(11) end)
-- vim.keymap.set("n", "<M-k><M-l>", function() ui.nav_file(12) end)
-- 
-- vim.keymap.set("n", "<M-l><M-h>", function() ui.nav_file(13) end)
-- vim.keymap.set("n", "<M-l><M-j>", function() ui.nav_file(14) end)
-- vim.keymap.set("n", "<M-l><M-k>", function() ui.nav_file(15) end)
-- vim.keymap.set("n", "<M-l><M-l>", function() ui.nav_file(16) end)
