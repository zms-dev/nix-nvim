{ cfg, ... } :  {
    # plugins.nix = true;

    imports = [
        ./globals.nix
        ./options.nix
        ./keymaps.nix
        ./file-types.nix
        ./editorconfig.nix
        ./performance.nix
        ./colorschemes
        ./plugins
    ];
} // cfg.extraConfig