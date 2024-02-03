
-- This was stollen from the help page for neo-tree-commands
vim.keymap.set('n', '<leader>nts', function()
    local reveal_file = vim.fn.expand('%:p')
    if (reveal_file == '') then
        reveal_file = vim.fn.getcwd()
    else
        local f = io.open(reveal_file, "r")
        if (f) then
            f.close(f)
        else
            reveal_file = vim.fn.getcwd()
        end
    end
    require('neo-tree.command').execute({
        action = "focus",          -- OPTIONAL, this is the default value
        source = "filesystem",     -- OPTIONAL, this is the default value
        position = "left",         -- OPTIONAL, this is the default value
        reveal_file = reveal_file, -- path to file or folder to reveal
        reveal_force_cwd = true,   -- change cwd without asking if needed
    })
end
);

-- Broken commands only here as a reference

-- vim.keymap.set('n', '/', vim.cmd([[Neotree toggle current reveal_force_cwd<cr>]]))
-- vim.keymap.set('n', '|', vim.cmd([[Neotree reveal<cr>]]))
-- vim.keymap.set('n', 'gd', vim.cmd([[Neotree float reveal_file=<cfile> reveal_force_cwd<cr>]]))
-- vim.keymap.set('n', '<leader>b', vim.cmd([[Neotree toggle show buffers right<cr>]]))
-- vim.keymap.set('n', '<leader>s', vim.cmd([[Neotree float git_status<cr>]]))
--{description: "Open neo-tree at current file or working directory"}
