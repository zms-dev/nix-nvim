{
    plugins.treesitter = {
        enable = true;
        settings = {
            nixvimInjections = true;
            nixGrammars = true;
            incrementalSelection.enable = true;
            ensureInstalled = [
                "vim"
                "lua"
                "regex"
                "bash"
                "markdown"
                "markdown_inline"
                "nix"
                "zsh"
                "rust"
            ];
        };
    };
}