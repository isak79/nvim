return {

  {
    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      build = "cd app && yarn install",
      init = function()
        vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
    },
    -- keys = {
    --   { "<leader>md", "<CMD>MarkdownPreview<CR>", desc = "Run markdown preview" },
    --   { "<leader>ms", "<CMD>MarkdownPreviewStop<CR>", desc = "Stop markdown preview" },
    -- },
  },
}
