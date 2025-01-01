-- vim.cmd("colorscheme melange")
-- local statusline = require("statusline")
-- statusline.tabline = false

require("config.globals")
require("config.keymaps")
require("config.autocommands")

require("Comment").setup()
require("palenightfall").setup()

vim.diagnostic.config({
	virtual_text = true,
})
