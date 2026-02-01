return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- custom configuration here, or leave empty for defaults
      plugins = { spelling = true },
      preset = "helix"
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}
