-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
lvim.colorscheme = "gruvbox"
lvim.keys.normal_mode["<leader>u"] = ":UndotreeToggle<return>"
lvim.keys.normal_mode["<leader>z"] = ":ZenMode<return>"
lvim.keys.normal_mode["<leader>rp"] = ":terminal<return>i"

lvim.plugins = {

  { "ellisonleao/gruvbox.nvim" },
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
  -- , {"kristijanhusak/vim-dadbod-completion"}
  {
    "neovim/nvim-lspconfig",
    ops = {
      sqlls = {},
    }
  }
}

require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.prettier.with({
      extra_filetypes = { "markdown" },
    }),
  },
})
