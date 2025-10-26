
-- Diable netrw file browser
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--[[ -- Netrw filebrowser config (currently disabled)
vim.g.netrw_banner = 0       -- Diable the netrw file borwser header
vim.g.netrw_browse_split = 4 -- When opening file from netrw file browser, open file in last split
vim.g.netrw_altv = 1         -- When opening a new split from netrw file browser, open split to the right
vim.g.netrw_liststyle = 3    -- Enable tree view in netrw file browser (there might be issues with symlinks!)
vim.g.netrw_winsize = -40    -- Set size of netrw file browser window (negative number is character width; positive number is percent of screen)
]]

-- vim.opt.title = true -- Enable title bar

vim.opt.number = true         -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.tabstop = 4           -- Tab is 4 spaces width
vim.opt.shiftwidth = 4        -- Indentations is 4 characters
vim.opt.expandtab = true      -- Raplce tabs with whitespaces
vim.opt.ignorecase = true     -- Enable case insensitive searching
vim.opt.smartcase = true      -- Search is case sensitive when search string contains upper case letters
vim.opt.scrolloff = 12        -- Show at least 12 lines above and below cursor if possible
vim.opt.splitbelow = true     -- Open new window below when splitting horizontaly
vim.opt.splitright = true     -- Open new window to the right when splitting vertically

-- Configure non visible characters
vim.opt.listchars = {
    space = '·',
    tab = '→\\',
--    eol = '↵',
    trail = '•',
    precedes = '«',
    extends = '»'
}
vim.opt.list = true -- Enable display of non visible characters

-- vim.cmd.colorscheme = "unokai" -- Build in unokai color theme

-- Load lazy vim packet manager
require("config.lazy")

-- Load custom keymap config
require("config.keymaps")

-- Load lsp config
require("config.lsp")

-- Load auto commands
require("config.autocmd")

-- Load custom user commands
require("config.usercmd")
