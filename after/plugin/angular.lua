function findComponent(name, type)
    local types = {
        ["ts"] = ".component.ts",
        ["html"] = ".component.html",
        ["test"] = ".component.spec.ts",
        ["css"] = ".component.css"
    }
    local file = name .. types[type]
    return file
end

function change(type)
    return function()
        local current_dir = vim.fn.expand("%:p:h")
        local file = current_dir .. "/" .. findComponent("app", type)
        vim.api.nvim_command("edit " .. file)
    end
end

vim.keymap.set("n", "<Leader>a", change("ts"))
vim.keymap.set("n", "<Leader>d", change("html"))
vim.keymap.set("n", "<Leader>f", change("css"))

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local path = require "plenary.path"

function split(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

function printTable(table)
    for key, value in pairs(table) do
        print(key, value)
    end
end

function start()
    -- colors(require("telescope.themes").get_dropdown {})
    require("telescope.builtin").find_files({search_file = ".component.ts"})
end

vim.api.nvim_create_user_command("TeleT", start, {})

-- tree sitter
local ts_utils = require "nvim-treesitter.ts_utils"

function test()
    local r = ts_utils.get_node_at_cursor()
    print(r)
end

vim.api.nvim_create_user_command("Tst", test, {})
