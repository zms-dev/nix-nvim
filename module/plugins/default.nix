{ cfg, ... }: {
    imports = [
        ./cmp.nix
        ./colorizer.nix
        ./comment.nix
        ./conform.nix
        ./copilot.nix
        ./cursorline.nix
        ./fidget.nix
        ./fugitive.nix
        ./gitsigns.nix
        ./harpoon.nix
        ./illuminate.nix
        ./indent-blankline.nix
        ./leap.nix
        ./lightbulb.nix
        ./lint.nix
        ./lsp.nix
        ./lualine.nix
        ./markview.nix
        ./mini.nix
        ./neotree.nix
        ./noice.nix
        ./none-ls.nix
        ./notify.nix
        ./persistence.nix
        ./project.nix
        ./refactoring.nix
        ./schemastore.nix
        ./statuscol.nix
        ./telescope.nix
        ./todo-comments.nix
        ./toggleterm.nix
        ./treesitter-context-commentstring.nix
        ./treesitter-context.nix
        ./treesitter.nix
        ./trouble.nix
        # ./web-devicons.nix
        ./which-key.nix
    ] ++ (if cfg.enableRust then [
        ./crates.nix
        ./rust-tools.nix
    ] else []) ++ (if cfg.enableTypeScript then [
        ./typescript-tools.nix
    ] else []);
}