	local keymap = vim.keymap
    local opts = { noremap = true, silent = true }

--Directory Navigation
--
--
--Remaps Stollen from @ThePrimeAgen A.K.A @TheVimAgen
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--Replaced with telescope file browser
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--"Greatest Remaps Ever", but I don't know what they do...
-- Will uncoment these when I understand what they are supposed to do.
--vim.keymap.set("x", "<leader>p", [["_dP]])
--vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
--vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Pure Fucking Genius
vim.keymap.set("i", "<C-c>", "<Esc>", opts)


-- Pane Navigation

keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

--Window Managment
keymap.set("n", "<leader>sv", vim.cmd.vsplit, opts) -- Split Vertically
keymap.set("n", "<leader>sh", vim.cmd.split, opts) -- Split Horizontally





