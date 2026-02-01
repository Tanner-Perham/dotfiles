return {
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        backdrop = 0.95, -- shade the backdrop of the Zen window
        width = 120, -- width of the Zen window
        options = {
          signcolumn = "no", -- disable signcolumn
          number = false, -- disable number column
          relativenumber = false, -- disable relative numbers
          cursorline = false, -- disable cursorline
          cursorcolumn = false, -- disable cursor column
          foldcolumn = "0", -- disable fold column
          list = false, -- disable whitespace characters
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false, -- disables the ruler text in the cmd line area
          showcmd = false, -- disables the command in the last line of the screen
        },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = true }, -- disables the tmux statusline
      },
      on_open = function(win)
      end,
      on_close = function()
      end,
    },
  },
  {
    "folke/twilight.nvim",
    opts = {
      -- config options here
    },
  },
  {
    "preservim/vim-pencil",
    config = function()
      vim.g.pencil_higher_contrast_ui = 0
      vim.g.pencil_neutral_headings = 1
      vim.g.pencil_neutral_codebg = 1
      vim.g.pencil_gutter_color = 1
      vim.g.pencil_spell_undercurl = 1
      
      -- Initialize pencil
      vim.cmd("PencilSoft")
    end,
    init = function()
      vim.g["pencil#wrapModeDefault"] = "soft"
    end
  }
}
