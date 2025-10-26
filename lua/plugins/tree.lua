
-- Tree file browser; relplaces netrw file browser

return {

    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    config = function()

        require("nvim-tree").setup {
            view = {
                width = 40
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true
            }
        }

        vim.api.nvim_set_keymap("n", "<leader>cd", ":NvimTreeFindFile!<CR>", { noremap = true })
        vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })

    end
}
