return {
  "epwalsh/obsidian.nvim",
  lazy = false,
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    dir = "~/Docs/Notes/2024-Vault", -- no need to call 'vim.fn.expand' here
    notes_subdir = "01 - inbox",
    templates = {
      subdir = "04 - templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
  },

  mappings = {},

  vim.keymap.set("n", "<leader>os", "<Cmd>ObsidianQuickSwitch<CR>", { desc = "[Obsidian] Quick Search" }),
  vim.keymap.set(
    "n",
    "<leader>ok",
    ':!mv "%:p" "$HOME/Docs/Notes/2024-Vault/02 - zettlekasten/"<cr>:bd<cr>',
    { desc = "[Obsidian] Move note to vault" }
  ),
  vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>", { desc = "[Obsidian] Delete note" }),
  vim.keymap.set("n", "<leader>ot", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>"),
  vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>"),
}
