
-- Open a new terminal in the mingw64 environment
vim.api.nvim_create_user_command("Mingw64", function()

    vim.api.nvim_command(":split")
    vim.api.nvim_command(":term C:\\msys64\\msys2_shell.cmd -defterm -no-start -mingw64 -here")

end, {})
