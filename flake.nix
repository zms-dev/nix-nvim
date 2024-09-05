{
  description = "Flake module";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

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
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } (
        { flake-parts-lib, ... }:
        let
            inherit (flake-parts-lib) importApply;
        in
        {
            systems = [];

            flake.flakeModule = importApply ./flake-module.nix {
                inherit flake-parts-lib;
                inherit (inputs) nixpkgs nixvim;
            };
        }
    );
}