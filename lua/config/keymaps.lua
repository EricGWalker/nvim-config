local keymap = vim.keymap
local opts = { noremap = true, silent = true }



vim.g.omni_sql_no_default_maps = 1
keymap.set("n", "gp", ":silent %! npx prettier --plugin=prettier-plugin-jinja-template  --parser=jinja-template --write % <CR>")
--
--Directory Navigation
--
--
--Remaps Stollen from @ThePrimeAgen A.K.A @TheVimAgen
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--Replaced with telescope file browser

--"Greatest Remaps Ever", but I don't know what they do...
-- Will uncoment these when I understand what they are supposed to do.
--vim.keymap.set("x", "<leader>p", [["_dP]])
--vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
--vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Pure Fucking Genius
keymap.set("i", "<C-c>", "<Esc>", {desc = "Rebind C-c to Esc", noremap = true, silent = true })


-- Pane Navigation

-- keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
-- keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
-- keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
-- keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

--Window Managment
keymap.set("n", "<leader>sv", vim.cmd.vsplit, opts)   -- Split Vertically
keymap.set("n", "<leader>sh", vim.cmd.split, opts)    -- Split Horizontally

--Terminal Navigation
--This is probably a dangerous line
--keymap.set('t', "<C-c>", [[<C-\><C-n>]], {silent = true, noremap = true})


keymap.set('t', "<C-h>", [[<C-\><C-n><C-w>h]], { silent = true, noremap = true })
keymap.set('t', "<C-j>", [[<C-\><C-n><C-w>j]], { silent = true, noremap = true })
keymap.set('t', "<C-k>", [[<C-\><C-n><C-w>k]], { silent = true, noremap = true })
-- I actively see myself using Control L to clear the terminal more often than changing from the terminal to a screen on the right hand side
-- keymap.set('t', "<C-l>", [[<C-\><C-n><C-w>l]], {silent = true, noremap = true})
--
