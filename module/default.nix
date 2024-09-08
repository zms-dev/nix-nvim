{
    flake-parts-lib,
    nixpkgs,
    nixvim,
    ...
}:
let
    inherit (flake-parts-lib) mkPerSystemOption;
    inherit (nixpkgs.lib) mkEnableOption mkOption types;
in
{
    config,
    self,
    inputs,
    ...
}:
{
  options.perSystem = mkPerSystemOption (
    { self, system, config, pkgs, ... }:
    let
        cfg = config.nvim;
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nvimModule = {
            inherit pkgs;

            extraSpecialArgs = {
                cfg = cfg;
            };

            module = import ./nixvim.nix;
        };
        nvim = nixvim'.makeNixvimWithModule nvimModule;
    in
    {
        options.nvim.enableRust = mkEnableOption "enable Rust plugins";
        options.nvim.enableTypeScript = mkEnableOption "enable TypeScript plugins";

        options.nvim.extraConfig = mkOption {
            default = {};
            type = types.attrs;
            description = "Extra configuration for nixvim";
        };

        config.devshells.default = {
            packages = [
                nvim
                pkgs.codespell
                pkgs.alejandra
                pkgs.statix
            ];
        };
    }
  );
}