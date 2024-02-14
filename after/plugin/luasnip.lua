local types = require("luasnip.util.types")

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

ls.config.set_config({
	history = true,
	updateevents = "TextChanged,TextChangedI",
	enable_autosnippets = true,
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "<-", "Error" } },
			},
		},
	},
})

vim.keymap.set({ "i", "s" }, "<c-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function()
	ls.jump(1)
end, { silent = true })

ls.add_snippets("vue", {
	s(
		"vuecomp", -- LuaSnip expands this to {trig = "hi"}
		fmta(
			[[
        <template></template>

        <script setup lang="ts">
          {}
        </script>

        <style scoped>
        </style>
        ]],
			{ i(1) },
			{ delimiters = "{}" }
		)
	),
	s(
		"ref", -- LuaSnip expands this to {trig = "hi"}
		fmta(
			[[

        import { ref } from "vue";
        const <> = ref(<>)
        ]],
			{ i(1), i(2) },
			{ delimiters = "<>" }
		)
	),
})
