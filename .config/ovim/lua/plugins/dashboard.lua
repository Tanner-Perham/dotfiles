return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      local dashboard = require("alpha.themes.dashboard")
      
      -- ASCII Art Header
      dashboard.section.header.val = {
        [[                                   ]],
        [[                                   ]],
        [[   ╭───────╮                       ]],
        [[   │       │     Write simply.     ]],
        [[   │       │     Edit freely.      ]],
        [[   │   ✐   │                       ]],
        [[   │       │                       ]],
        [[   ╰───────╯                       ]],
        [[                                   ]],
      }

      -- Buttons for common actions
      dashboard.section.buttons.val = {
        dashboard.button("n", "  New File", "<cmd>ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("<space> f f", "  Find File", "<cmd>Telescope find_files<cr>"),
        dashboard.button("<space> f g", "  Find Text", "<cmd>Telescope live_grep<cr>"),
        dashboard.button("<space> e", "  Explorer", "<cmd>Neotree toggle<cr>"),
        dashboard.button("<space> z", "  Zen Mode", "<cmd>ZenMode<cr>"),
        dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
      }
      
      -- Footer with keymap reminders
      dashboard.section.footer.val = {
        " ",
        "Keymaps:",
        "<Space> s : Toggle Spell Check",
        "Ctrl + s  : Save File",
        "j / k     : Visual Line Movement",
      }
      
      dashboard.config.opts.noautocmd = true
      require("alpha").setup(dashboard.config)
    end,
  },
}
