return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist,
          },
        },
      },
    })

    -- set keymaps
    local builtin = require("telescope.builtin")
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
  end,
}

