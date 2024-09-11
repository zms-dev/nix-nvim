require('no-neck-pain').setup({
    width = 120,
    buffers = {
        colors = {
            backgroundColor = "catppuccin-mocha-dark",
        },
    },
    autocmds = {
        enableOnVimEnter = true,
        reloadOnColorSchemeChange = true,
    },
    integrations = {
        NeoTree = {
            position = "left",
            reopen = true,
        },
    },
})