local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = {{"<-", "Error"}}
            }
        }
    }
}

vim.keymap.set(
    {"i", "s"},
    "<c-k>",
    function()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end,
    {silent = true}
)

ls.snippets = {
    all = {
        ls.parser.parse_snippet("expand2", "-- this is a snip")
    }
}
