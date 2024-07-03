return {
  "github/copilot.vim",
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local cmp = require("cmp")

    cmp.event:on("confirm_done", cmp.mapping.confirm({ select = false }))

    vim.api.nvim_set_keymap("i", "<C-Space>", "copilot#Accept()", { expr = true })
    vim.api.nvim_set_keymap("i", "<C-e>", "copilot#Cycle()", { expr = true })
    vim.api.nvim_set_keymap("i", "<C-f>", "copilot#Next()", { expr = true })
    vim.api.nvim_set_keymap("i", "<C-b>", "copilot#Prev()", { expr = true })
  end,
}
