{ lib, ... } : with lib; {
  colorscheme = mkOption {
    default = "tokyonight";
    type = types.enum [ 
      "catppuccino"
      "cyberdream"
      "gruvbox"
      "rose-pine"
      "tokyonight"
    ];
    description = "The color scheme to use";
  };
  transparent = mkEnableOption "enable transparent background";
  enableRust = mkEnableOption "enable Rust plugins";
  enableTypeScript = mkEnableOption "enable TypeScript plugins";

  extraConfig = mkOption {
    default = {};
    type = types.attrs;
    description = "Extra configuration for nixvim";
  };
}