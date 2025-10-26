
-- Boostrap lazy.nvim
local lazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazyPath) then
    local lazyRepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({"git", "clone", "--filter=blob:none", "--branch=stable", lazyRepo, lazyPath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_eacho({
            { "Failed to clone lazy.nvim:\n", "Error Msf" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazyPath)

-- Setup lazy.nvim
require("lazy").setup({

    spec = {
        -- import the plugins
        { import = "plugins" }
    },

    install = { colorscheme = {"onedark"} },

    -- automatically check for plugin updates
    checker = { enable = true },
})
