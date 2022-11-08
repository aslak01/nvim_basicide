local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

wk.setup{}
--
-- wk.register({
--   f = {
--     name = "file", -- optional group name
--     f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--     w = { "<cmd>Telescope live_grep<cr>", "Find Word" },
--     r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
--     c = { "<cmd>Telescope resume<cr>", "Resume telescope search" },
--     n = { "New File" }, -- just a label. don't create any mapping
--     b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
--   },
-- }, { prefix = "<leader>" })
