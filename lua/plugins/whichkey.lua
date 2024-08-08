return {
    {
        "folke/which-key.nvim",
        enabled = false,
        opts = {
            preset = "modern",
        },
        keys = {
            {
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
        'echasnovski/mini.nvim',
        version = false,
        lazy = false
    }
}
