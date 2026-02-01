local map = vim.keymap.set

-- Toggle Zen Mode
map("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Zen Mode" })

-- Toggle Spell Check
map("n", "<leader>s", function()
  vim.opt.spell = not vim.opt.spell:get()
end, { desc = "Toggle Spell" })

-- Easy save
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Better movement over wrapped lines
map("n", "j", "gj")
map("n", "k", "gk")

-- File Explorer (Neo-tree)
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })

-- Telescope
map('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
map('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { desc = "Live Grep (Search Text)" })
map('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { desc = "Find Buffer" })
