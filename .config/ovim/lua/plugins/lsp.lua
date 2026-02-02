return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "harper_ls" }, -- Install Harper Grammar Checker
      })

      -- Modern Neovim 0.11+ setup
      vim.lsp.config("harper_ls", {
        settings = {
          ["harper-ls"] = {
            userDictPath = vim.fn.stdpath("config") .. "/dict.txt",
            linters = {
              spell_check = false,
              sentence_capitalization = true,
              unclosed_quotes = true,
              long_sentences = true,
              repeated_words = true,
              spaces = true,
            },
          },
        },
      })

      -- Start the server automatically for relevant files
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "markdown", "text" },
        callback = function()
          vim.lsp.start_client({ name = "harper_ls" })
        end,
      })
    end,
  },
}
