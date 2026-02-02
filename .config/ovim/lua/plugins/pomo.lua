return {
  {
    "epwalsh/pomo.nvim",
    version = "*",
    lazy = true,
    cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
    dependencies = {
      "rcarriga/nvim-notify",
    },
    opts = {
      notifiers = {
        {
          name = "Default",
          opts = {
            title = "Pomodoro", 
            icon = "󱎫 ",
          },
        },
      },
    },
    keys = {
      { "<leader>p", "<cmd>TimerStart 25m<cr>", desc = "Start Pomodoro (25m)" },
      { "<leader>P", "<cmd>TimerStop<cr>", desc = "Stop Pomodoro" },
    },
  },
}
