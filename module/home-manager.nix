{
  moduleWithSystem,
  inputs,
  ...
}: {
  flake.homeManagerModules.nvim = moduleWithSystem (
    perSystem @ {inputs'}: {
      system,
      config,
      lib,
      pkgs,
      ...
    }:
      with lib; let
        cfg = config.programs.nvim;
        nixvim = inputs'.nixvim.legacyPackages.${system};
      in {
        options.programs.nvim = with lib; {
          enable = mkEnableOption "nvim program";
          colorscheme = mkOption {
            default = "tokyonight";
            type = types.enum [ 
              "catppuccino"
              "cyberdream"
              "gruvbox"
              "rose-pine"
              "tokyonight"
            ];
            description = "color scheme to use";
          };
          transparent = mkEnableOption "enable transparent background";
        };

        config = lib.mkMerge [
          (lib.mkIf cfg.enable {
            home.packages = [
              (nixvim.makeNixvimWithModule {
                  inherit pkgs;

                  extraSpecialArgs = {
                    cfg = cfg;
                  };

                  module = import ./nixvim.nix;
                })
            ];
          })
        ];
      }
  );
}