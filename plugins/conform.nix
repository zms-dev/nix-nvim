{
    plugins.conform-nvim = {
        enable = true;
        settings = {
            formatOnSave = {
                lspFallback = true;
                timeoutMs = 500;
            };
            formattersByFt = {
                nix = ["alejandra"];
            };
        };
    };
}