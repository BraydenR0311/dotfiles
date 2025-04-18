return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
        view = {
          preserve_window_proportions = true,
        },
    })
  end,

  vim.keymap.set("n", "\\", ":NvimTreeToggle<CR>"),
}
