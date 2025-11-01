return {
  "TimUntersberger/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim", -- Recommended for viewing diffs
  },
  keys = {
    -- You can change this keymap to whatever you like
    {
      "<leader>gg",
      function()
        require("neogit").open()
      end,
      desc = "Open NeoGit",
    },
  },
  opts = {
    -- This setup enables the diffview integration
    integrations = {
      diffview = true,
    },
  },
}
