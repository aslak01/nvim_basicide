local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

local config = {
  setup = {
    registers = false
  },

  opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true
  },

  mappings = {
    f = {
      name = "file", -- optional group name
      f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
      w = { "<cmd>Telescope live_grep<cr>", "Find Word" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, -- additional options for creating the keymap
      c = { "<cmd>Telescope resume<cr>", "Resume telescope search" },
    },
  }
}


-- local wk = require("which-key")

wk.setup({})

wk.register(config.mappings, config.opts)
