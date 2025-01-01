vim.o.termguicolors = true
vim.o.clipboard = "unnamedplus"
vim.wo.wrap = false
vim.opt.background = "dark"

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.number = false
vim.opt.relativenumber = false
vim.bo.swapfile = false
vim.opt.scrolloff = 999
vim.opt.inccommand = "split"
vim.opt.updatetime = 300

vim.api.nvim_set_hl(0, "TermCursor", { fg = "#A6E3A1", bg = "#A6E3A1" })

-- disable fill chars (the ~ after the buffer)
vim.o.fillchars = "eob: "

-- space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- mode is already in statusline
vim.opt.showmode = false

-- smarter search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- indent
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Sets how neovim will display certain whitespace in the editor.
--  See :help 'list'
--  and :help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- consistent number column
-- used by tools like git gitter
-- it adds this extra column in the left
vim.opt.signcolumn = "yes:1"

-- global statusline
vim.opt.laststatus = 3

vim.cmd([[
let g:currentmode={
       \ 'n'  : '%#String# NORMAL ',
       \ 'v'  : '%#Search# VISUAL ',
       \ 's'  : '%#ModeMsg# VISUAL ',
       \ "\<C-V>" : '%#Title# V·Block ',
       \ 'V'  : '%#IncSearch# V·Line ',
       \ 'Rv' : '%#String# V·Replace ',
       \ 'i'  : '%#ModeMsg# INSERT ',
       \ 'R'  : '%#Substitute# R ',
       \ 'c'  : '%#CurSearch# Command ',
       \ 't'  : '%#ModeMsg# TERM ',
       \}
]])

-- math.randomseed(os.time())
-- local i = math.random(#animals)
vim.opt.statusline = "%{%g:currentmode[mode()]%} %{%reg_recording()%} %* %t | %y | %* %= c:%c l:%l/%L %p%% %#NonText# "
	-- .. animals[i]
	.. " %*"

-- hide cmdline when not used
vim.opt.cmdheight = 0

-- split right and below by default
vim.opt.splitright = true
vim.opt.splitbelow = true

-- tabline
-- the top bar with the tabs
vim.opt.showtabline = 1

--windowline
vim.opt.winbar = "%f"

-- don't continue comments automagically
vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

-- scroll before end of window
vim.opt.scrolloff = 10

-- diagnostics
vim.diagnostic.config({
	virtual_text = true,
	underline = true,
	signs = true,
})

vim.g.python3_host_prog = "/usr/bin/python"
