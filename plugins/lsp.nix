{
    plugins.lspsaga = {
        enable = true;
        ui = {
            border = "rounded";
            codeAction = "💡";
        };
        lightbulb = {
            # nvim-lightbulb instead of this
            enable = false;
        };
        symbolInWinbar = {
            # Breadcrumbs, use treesitter-context instead
            enable = false;
        };
    };

    plugins.lspkind = {
        enable = true;
        symbolMap = {
            Copilot = "";
        };
    };

    plugins.lsp = {
        enable = true;
        inlayHints = true;
        servers = {
            clangd = {
                enable = true;
            };

            bashls = {
                enable = true;
            };

            nil-ls = {
                enable = true;
            };
        };
        keymaps.diagnostic = {
            "<leader>j" = "goto_next";
            "<leader>k" = "goto_prev";
        };
        keymaps.lspBuf = {
            K = "hover";
            gr = "references";
            gd = "definition";
            gi = "implementation";
            gt = "type_definition";
            "<leader>ca" = "code_action";
            "<leader>ra" = "rename";
        };
    };
}