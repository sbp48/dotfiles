return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({ "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c", "lua", "markdown" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
