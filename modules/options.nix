{ lib, ... } : with lib; {
  enable = mkEnableOption "nvim program";
  base16Scheme = mkOption {
    default = {};
    type = types.attrs;
    description = "The base16 scheme to use";
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