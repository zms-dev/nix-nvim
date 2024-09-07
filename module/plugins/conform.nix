{
    plugins.conform-nvim = {
        enable = true;
        settings = {
            formatOnSave = {
                lspFallback = true;
                timeoutMs = 500;
            };
            formattersByFt = {
                "*" = [ "codespell" ];
                nix = ["alejandra"];
                javascript =  [ "prettierd" ];
                typescript =  [ "prettierd" ];
                yaml =  [ "prettierd" ];
                json = [ "jq" ];
                lua = [ "stylua" ];
                scss = [ "prettierd" ];
                css = [ "prettierd" ];
                python = [ "isort" "black" ];
                rust = [ "rustfmt" ];
                sh = [ "shfmt" ];
            };
        };
    };
}