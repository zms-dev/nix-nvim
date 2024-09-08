{
  description = "Flake module";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    systems.url = "github:nix-systems/default";

    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";

    devshell.url = "github:numtide/devshell";
    devshell.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.inputs.flake-parts.follows = "flake-parts";
    nixvim.inputs.devshell.follows = "devshell";

    nix-github-actions.url = "github:nix-community/nix-github-actions";
    nix-github-actions.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{ self, nixpkgs, flake-parts, nixvim, nix-github-actions, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } (
        { flake-parts-lib, ... }:
        let
            inherit (flake-parts-lib) importApply;

            flakeModules.default = importApply ./module {
                inherit flake-parts-lib;
                inherit (inputs) nixpkgs nixvim;
            };
        in
        {
            imports = [
                flakeModules.default
                inputs.devshell.flakeModule
            ];

            systems = import inputs.systems;

            perSystem = { system, pkgs, config, ... }:
                let
                    nixvimLib = nixvim.lib.${system};
                    nixvim' = nixvim.legacyPackages.${system};
                    nvimConfig = {
                        enableRust = true;
                        enableTypeScript = true;
                        extraConfig = {};
                    };
                    nvimModule = {
                        inherit pkgs;

                        extraSpecialArgs = {
                            cfg = nvimConfig;
                        };

                        module = import ./module/nixvim.nix;
                    };
                in
                {
                    nvim = nvimConfig;
                    formatter = pkgs.alejandra;
                    checks.default = nixvimLib.check.mkTestDerivationFromNixvimModule nvimModule;
                    packages.default = nixvim'.makeNixvimWithModule nvimModule;
                };

            flake = {
                inherit flakeModules;
                flakeModule = flakeModules.default;

                githubActions = nix-github-actions.lib.mkGithubMatrix {
                    checks = nixpkgs.lib.getAttrs [ "x86_64-linux" "x86_64-darwin" ] self.checks;
                };
            };
        }
    );
}