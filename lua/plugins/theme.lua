
return {

    "navarasu/onedark.nvim",
    name = "onedark",
    priority=1000,

    config = function()

        require('onedark').setup {
            style = 'deep',
            toggle_style_key = "<leader>ts",
            -- toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},
            toggle_style_list = { 'deep', 'warmer', 'light' },
        }

        require('onedark').load()

    end
}

