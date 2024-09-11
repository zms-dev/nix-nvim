{
  flake-parts-lib,
  nixpkgs,
  nixvim,
  ...
}: let
  inherit (flake-parts-lib) mkPerSystemOption;
  inherit (nixpkgs.lib) mkEnableOption mkOption types;
in
  {
    config,
    self,
    inputs,
    ...
  }: {
    options.perSystem = mkPerSystemOption (
      {
        self,
        system,
        config,
        pkgs,
        ...
      }: let
        cfg = config.nvim;
        nixvim' = nixvim.legacyPackages.${system};
        nvimModule = {
          inherit pkgs;

          extraSpecialArgs = {
            inherit cfg;
          };

          module = import ./nixvim.nix;
        };
        nvim = nixvim'.makeNixvimWithModule nvimModule;
      in {
        options = {
          nvim = {
            enableRust = mkEnableOption "enable Rust plugins";
            enableTypeScript = mkEnableOption "enable TypeScript plugins";

            extraConfig = mkOption {
              default = {};
              type = types.attrs;
              description = "Extra configuration for nixvim";
            };
          };
        };

        config.devshells.default = {
          name = "nixvim";

          motd = ''
            ❄️  Welcome to the {14}{bold}NixVim{reset} devshell ❄️{reset}
            $(type -p menu &>/dev/null && menu)
          '';

          packages = [
            nvim
            pkgs.codespell
            pkgs.alejandra
            pkgs.statix
          ];

          commands = [
            {
              name = "nvim";
              package = nvim;
              help = "start neovim";
              category = "editor";
            }
            {
              package = pkgs.alejandra;
              category = "formatter";
            }
          ];
        };
      }
    );
  }
