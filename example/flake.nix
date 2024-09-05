{
    description = "A very basic flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

        systems.url = "github:nix-systems/default";

        flake-parts.url = "github:hercules-ci/flake-parts";
        flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";

        devshell.url = "github:numtide/devshell";
        devshell.inputs.nixpkgs.follows = "nixpkgs";

        nvim.url = "path:../";
        nvim.inputs.nixpkgs.follows = "nixpkgs";
        nvim.inputs.flake-parts.follows = "flake-parts";
        nvim.inputs.devshell.follows = "devshell";

        nix-github-actions.url = "github:nix-community/nix-github-actions";
        nix-github-actions.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs =
        inputs@{ self, nixpkgs, flake-parts, nix-github-actions, ... }:
        flake-parts.lib.mkFlake { inherit inputs; } {
            imports = [
                inputs.devshell.flakeModule
                inputs.nvim.flakeModule
            ];

            systems = import inputs.systems;

            perSystem = {config, ...}: {
                nvim.enableRust = true;
            };

            flake.githubActions = nix-github-actions.lib.mkGithubMatrix {
                checks = nixpkgs.lib.getAttrs [ "x86_64-linux" "x86_64-darwin" ] self.packages;
            };
        };
}
