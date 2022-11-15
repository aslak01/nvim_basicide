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
    ["w"] = { "<cmd>w!<CR>", "Save" },
    ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
    ["c"] = { "<cmd>Bdelete!<CR>", "Close buffer" },
    ["h"] = { "<cmd>nohlsearch<CR>", "Clear highlights" },

    f = {
      name = "File",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      w = { "<cmd>Telescope live_grep<cr>", "Find Word" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"},
      p = { "<cmd>Telescope projects<cr>", "Projects" },
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
      c = { "<cmd>Telescope resume<cr>", "Resume telescope search" },
    },
  }
}


wk.setup(config.setup)

wk.register(config.mappings, config.opts)
