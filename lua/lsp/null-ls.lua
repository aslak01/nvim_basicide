local null_ls = require("null-ls")
local b = null_ls.builtins

local with_root_file = function(...)
    local files = { ... }
    return function(utils)
        return utils.root_has_file(files)
    end
end

local sources = {
    -- formatting
    b.formatting.prettier.with({
      filetypes = {"svelte"}
    }),
    b.formatting.fish_indent,
    b.formatting.shfmt,
    b.formatting.clang_format,
    b.formatting.trim_whitespace.with({
        filetypes = { "tmux", "snippets" },
    }),
    b.formatting.stylua.with({
        condition = with_root_file("stylua.toml"),
    }),
    b.formatting.cbfmt.with({
        condition = with_root_file(".cbfmt.toml"),
    }),
    -- diagnostics
    b.diagnostics.selene.with({
        condition = with_root_file("selene.toml"),
    }),
    b.diagnostics.write_good,
    b.diagnostics.markdownlint,
    -- code actions
    b.code_actions.gitsigns,
    b.code_actions.gitrebase,
    -- hover
    b.hover.dictionary,
}

local M = {}
M.setup = function(on_attach)
    null_ls.setup({
        debug = true,
        sources = sources,
        on_attach = on_attach,
    })
end

return M

