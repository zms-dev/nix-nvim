{cfg, ...}:
{
  imports = [
    ./colorschemes
    ./globals.nix
    ./clipboard.nix
    ./options.nix
    ./keymaps.nix
    ./file-types.nix
    ./editorconfig.nix
    ./performance.nix
    ./plugins
  ];
}
// cfg.extraConfig
