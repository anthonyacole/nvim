return {
  "aspeddro/slides.nvim",
  config = function()
    require("slides").setup({
      bin = vim.fn.expand("$HOME") .. "/go/bin/slides",
    })
  end,
}
