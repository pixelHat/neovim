require('settings')
require('plugins')
require('plugin/nvim-cmp')
require('config')
require('lsp')
require('tree-sitter')
require('neoformat')
require('easymotion')
require('angular')

require('Comment').setup()

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

function printTable(table)
  for key, value in pairs(table) do
    print(key, value)
  end
end

-- should find all components
function findComponents()
  local f = io.popen("dir .")
  if f then
    local splited = slit(f:read("*a"))
    print(printTable(splited))
    return splited
  else
    print("failed to read")
  end
end

-- our picker function: colors
local colors = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "component",
    finder = finders.new_table{results = findComponents() },
    sorter = conf.generic_sorter(opts),
  }):find()
end

-- to execute the function

function start()
  colors(require("telescope.themes").get_dropdown{})
end

vim.api.nvim_create_user_command("TeleT", start, {})



-- tree sitter
local ts_utils = require 'nvim-treesitter.ts_utils'

function test()
  local r = ts_utils.get_node_at_cursor()
  print(r)
end

vim.api.nvim_create_user_command("Tst", test, {})
