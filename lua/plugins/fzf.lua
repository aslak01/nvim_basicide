local u = require("config.utils")

require("fzf-lua").setup({
    keymap = {
        fzf = {
            ["ctrl-q"] = "select-all+accept",
        },
    },
    winopts = {
        height = 0.95,
        width = 0.95,
        preview = {
            scrollbar = false,
        },
    },
    fzf_opts = {
        ["--layout"] = "default",
    },
})

u.nmap("<Leader>f", "<cmd>FzfLua files<CR>")
u.nmap("<Leader>r", "<cmd>FzfLua live_grep_glob<CR>")
u.nmap("<Leader>o", "<cmd>FzfLua oldfiles<CR>")
u.nmap("<Leader>w", "<cmd>FzfLua grep_cWORD<CR>")
u.nmap("<Leader><Leader>", "<cmd>FzfLua buffers<CR>")
