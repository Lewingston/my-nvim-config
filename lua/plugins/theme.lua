
return {

    {
        "navarasu/onedark.nvim",
        name = "onedark",
        priority=1000,

        config = function()

            require('onedark').setup {

                style = 'deep',

                toggle_style_key = "<leader>ts",

                -- toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},
                toggle_style_list = { 'deep', 'warmer', 'light' },

                colors = {
                    dark_green = "#3b8c02",
                    string_green = "#06bf00"
                },

                highlights = {
                    ["@lsp.type.macro"]     = { fg = "$purple"},
                    ["@lsp.type.function"]  = { fg = "$red" },
                    ["@lsp.type.method"]    = { fg = "$red" },
                    ["@lsp.type.parameter"] = { fg = "$blue" },
                    ["@lsp.type.variable"]  = { fg = "$blue" },
                    ["@lsp.type.property"]  = { fg = "$blue" },
                    ["String"]              = { fg = "$string_green" },
                    ["Comment"]             = { fg = "$dark_green" },
                }
            }

            require('onedark').load()

        end
    },

    {
        'kdheepak/monochrome.nvim',
        name='monochrome'
    }
}

