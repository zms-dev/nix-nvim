{
    plugins.alpha = let
        width = 50;

        logo = [
            "███╗   ██╗    ██╗    ██╗  ██╗    ██╗   ██╗    ██╗    ███╗   ███╗"
            "████╗  ██║    ██║    ╚██╗██╔╝    ██║   ██║    ██║    ████╗ ████║"
            "██╔██╗ ██║    ██║     ╚███╔╝     ██║   ██║    ██║    ██╔████╔██║"
            "██║╚██╗██║    ██║     ██╔██╗     ╚██╗ ██╔╝    ██║    ██║╚██╔╝██║"
            "██║ ╚████║    ██║    ██╔╝ ██╗     ╚████╔╝     ██║    ██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝    ╚═╝    ╚═╝  ╚═╝      ╚═══╝      ╚═╝    ╚═╝     ╚═╝"
        ];

        padding = val: {
            type = "padding";
            inherit val;
        };

        newButton = {
            type = "button";
            val = "  New file";
            on_press.__raw = "function() vim.cmd[[enew]] end";
            opts = {
                shortcut = "e";
                position = "center";
                hl_shortcut = "Keyword";
                hl = "AlphaHeader";
                align_shortcut = "right";
                width = width;
                cursor = 3;
                keymap = [
                    "n"
                    "e"
                    ":enew<CR>"
                    {
                        noremap = true;
                        silent = true;
                        nowait = true;
                    }
                ];
            };
        };

        quitButton = {
            type = "button";
            val = "󰅙  Quit Neovim";
            on_press.__raw = "function() vim.cmd[[qa]] end";
            opts = {
                shortcut = "q";
                position = "center";
                hl_shortcut = "Keyword";
                hl = "AlphaHeader";
                align_shortcut = "right";
                width = width;
                cursor = 3;
                keymap = [
                    "n"
                    "q"
                    ":qa<CR>"
                    {
                        noremap = true;
                        silent = true;
                        nowait = true;
                    }
                ];
            };
        };

        findFileButton = {
            type = "button";
            val = "  Find File";
            on_press.raw = "require('telescope.builtin').find_files";
                opts = {
                keymap = [
                    "n"
                    "f"
                    ":Telescope find_files <CR>"
                    {
                        noremap = true;
                        silent = true;
                        nowait = true;
                    }
                ];
                shortcut = "f";
                position = "center";
                cursor = 3;
                width = width;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "AlphaHeader";
            };
        };

        oldFilesButton = {
            type = "button";
            val = "󰈚  Recent Files";
            on_press.raw = "require('telescope.builtin').oldfiles";
            opts = {
                keymap = [
                    "n"
                    "r"
                    ":Telescope oldfiles <CR>"
                    {
                        noremap = true;
                        silent = true;
                        nowait = true;
                    }
                ];
                shortcut = "r";
                position = "center";
                cursor = 3;
                width = width;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "AlphaHeader";
            };
        };

        findWordButton = {
            type = "button";
            val = "󰈭  Find Word";
            on_press.raw = "require('telescope.builtin').live_grep";
            opts = {
                keymap = [
                    "n"
                    "g"
                    ":Telescope live_grep <CR>"
                    {
                        noremap = true;
                        silent = true;
                        nowait = true;
                    }
                ];
                shortcut = "g";
                position = "center";
                cursor = 3;
                width = width;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "AlphaHeader";
            };
        };

        restoreSessionButton = {
            type = "button";
            val = "  Restore Session";
            on_press.raw = "require('persistence').load()";
            opts = {
                keymap = [
                    "n"
                    "s"
                    ":lua require('persistence').load()<cr>"
                    {
                        noremap = true;
                        silent = true;
                        nowait = true;
                    }
                ];
                shortcut = "s";
                position = "center";
                cursor = 3;
                width = width;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "AlphaHeader";
            };
        };

    in
    {
        enable = true;
        layout = [
            (padding 2)
            {
                opts = {
                    hl = "Type";
                    position = "center";
                };
                type = "text";
                val = logo;
            }
            (padding 2)
            {
                type = "group";
                val = [
                    newButton
                    (padding 1)
                    quitButton
                    (padding 1)
                    findFileButton
                    (padding 1)
                    oldFilesButton
                    (padding 1)
                    findWordButton
                    (padding 1)
                    restoreSessionButton
                ];
            }
            (padding 2)
            {
                opts = {
                    hl = "Number";
                    position = "center";
                };
                type = "text";
                val = "https://github.com/zms-dev/nix-nvim";
            }
        ];
    };
}