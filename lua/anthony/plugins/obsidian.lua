return {
  "epwalsh/obsidian.nvim",
  lazy = false,
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    dir = "~/Nextcloud/Notes/2023-Vault", -- no need to call 'vim.fn.expand' here
  },

  mappings = {},

  vim.keymap.set("n", "<leader>os", "<Cmd>ObsidianQuickSwitch<CR>", { desc = "[Obsidian] Quick Search" }),
  vim.keymap.set("n", "<leader>ot", "<Cmd>ObsidianToday<CR>", { desc = "[Obsidian] Today's Note" }),
  vim.keymap.set("n", "<leader>oy", "<Cmd>ObsidianYesterday<CR>", { desc = "[Obsidian] Yesterday's Note" }),
}
