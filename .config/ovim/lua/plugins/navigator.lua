return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
    opts = {
      -- Priority for creative writing: focus on Markdown headers
      backends = { "treesitter", "markdown", "man" },
      layout = {
        min_width = 25,
        default_direction = "right",
        placement = "window",
      },
      attach_mode = "global",
      -- Filter what we see: mainly just headings in markdown
      filter_kind = {
        "Class",
        "Constructor",
        "Enum",
        "Function",
        "Interface",
        "Module",
        "Method",
        "Struct",
      },
      -- Highlight the heading we are currently under
      highlight_on_hover = true,
      -- Automatically jump to the heading when we select it in the list
      post_jump_keymap = "zz",
    },
    -- Optional: add a keymap to toggle the navigator
    keys = {
      { "<leader>o", "<cmd>AerialToggle! right<cr>", desc = "Toggle Navigator (Outline)" },
    },
  },
}
