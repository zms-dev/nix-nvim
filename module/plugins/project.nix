{
    plugins.project-nvim = {
        enable = true;
        settings = {
            detectionMethods = ["lsp" "pattern"];
            enableTelescope = true;
            patterns = [
                ".git"
                "package.json"
                "Makefile"
                "rust-toolchain.toml"
                "Cargo.toml"
                "flake.nix"
            ];
        };
    };
}