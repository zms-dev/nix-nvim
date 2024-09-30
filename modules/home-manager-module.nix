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
        nixvim = inputs.nixvim.legacyPackages.${system};
      in {
        options.programs.nvim = import ./options.nix {
          inherit lib;
        };

        config = lib.mkMerge [
          (lib.mkIf cfg.enable {
            home.packages = [
              (nixvim.makeNixvimWithModule {
                  inherit pkgs;

                  extraSpecialArgs = {
                    cfg = cfg;
                  };

                  module = import ./nvim;
                })
            ];
          })
        ];
      }
  );
}