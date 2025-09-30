-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- General Vim options
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
lvim.colorscheme = "jb"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Custom key mappings
lvim.keys.normal_mode["<leader>u"] = ":UndotreeToggle<return>"
lvim.keys.normal_mode["<leader>z"] = ":ZenMode<return>"
lvim.keys.normal_mode["<leader>rp"] = ":terminal<return>i"

lvim.builtin.which_key.mappings["t"] = {
    name = "+Terminal",
    f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
    v = { "<cmd>2ToggleTerm size=75 direction=vertical<cr>", "Split vertical" },
    h = { "<cmd>2ToggleTerm size=15 direction=horizontal<cr>", "Split horizontal" },
}

-- Plugins
lvim.plugins = {
    { "ellisonleao/gruvbox.nvim" },
    { "rose-pine/neovim" },
    {
        "nickkadutskyi/jb.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            -- require("jb").setup({transparent = true})
            vim.cmd("colorscheme jb")
        end,
    },
    { "vague2k/vague.nvim" },
    { "rebelot/kanagawa.nvim" },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false
                }
            })
        end,
    },
    {
        "mbbill/undotree"
    },
    {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {}
        end,
    },
    { "tpope/vim-dadbod" },
    { "kristijanhusak/vim-dadbod-ui" },
    {
        "neovim/nvim-lspconfig",
        -- opts = {
        --   sqlls = {},
        -- }
    },
}
