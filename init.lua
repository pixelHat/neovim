-- vim.cmd("colorscheme melange")
--
-- local statusline = require("statusline")
-- statusline.tabline = false

require("Comment").setup()
-- require("ayu").setup({
-- 	mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
-- 	overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
-- })
-- vim.cmd("colorscheme nordic")
require("palenightfall").setup()

vim.diagnostic.config({
	virtual_text = true,
})

