{cfg, ...}: {
  plugins.nix = {
    enable = true;
  };

  imports =
    [
      ./alpha.nix
      ./barbar.nix
      ./barbecue.nix
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
      ./incline.nix
      ./indent-blankline.nix
      ./lazygit.nix
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
      ./no-neck-pain.nix
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
      ./web-devicons.nix
      ./which-key.nix
    ]
    ++ (
      if cfg.enableRust
      then [
        ./crates.nix
        ./rust-tools.nix
        ./rustacean.nix
      ]
      else []
    )
    ++ (
      if cfg.enableTypeScript
      then [
        ./typescript-tools.nix
      ]
      else []
    );
}
