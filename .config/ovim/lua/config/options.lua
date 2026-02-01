-- Writing-focused options

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Appearance
vim.opt.termguicolors = true
vim.opt.number = false          -- Disable line numbers for immersion
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes:1"    -- Keep a small margin for git signs/etc, or "no" for pure clean
vim.opt.cursorline = true       -- Highlight current line

-- Text Handling
vim.opt.wrap = true             -- Wrap long lines
vim.opt.linebreak = true        -- Break at words, not characters
vim.opt.breakindent = true      -- Indent wrapped lines visually
vim.opt.scrolloff = 8           -- Keep cursor away from edges
vim.opt.sidescrolloff = 8

-- Spelling
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

-- File Ops
vim.opt.undofile = true         -- Persistent undo
vim.opt.swapfile = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- System
vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard
