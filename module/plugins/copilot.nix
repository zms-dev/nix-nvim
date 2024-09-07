{
    plugins.copilot-cmp = {
        enable = true;
    };

    plugins.copilot-lua = {
        enable = true;
        suggestion = {
            enabled = false;
        };
        panel = {
            enabled = false;
        };
        filetypes = {
            javascript = true;
            typescript = true;
            rust = true;
            python = true;
            lua = true;
            nix = true;
            "*" = false;
        };
    };
}