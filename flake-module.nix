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
    { system, config, pkgs, ... }:
    let
        cfg = config.nvim;
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = {
                imports = [
                    ./globals.nix
                    ./options.nix
                    ./keymaps.nix
                    ./file-types.nix
                    ./colorschemes/catppuccin.nix
                    ./plugins/cmp.nix
                    ./plugins/colorizer.nix
                    ./plugins/comment.nix
                    ./plugins/conform.nix
                    ./plugins/copilot.nix
                    ./plugins/fidget.nix
                    ./plugins/fugitive.nix
                    ./plugins/gitsigns.nix
                    ./plugins/harpoon.nix
                    ./plugins/illuminate.nix
                    ./plugins/indent-blankline.nix
                    ./plugins/leap.nix
                    ./plugins/lightbulb.nix
                    ./plugins/lsp.nix
                    ./plugins/lualine.nix
                    ./plugins/mini.nix
                    ./plugins/neotree.nix
                    ./plugins/noice.nix
                    ./plugins/notify.nix
                    ./plugins/persistence.nix
                    ./plugins/project.nix
                    ./plugins/refactoring.nix
                    ./plugins/telescope.nix
                    ./plugins/todo-comments.nix
                    ./plugins/toggleterm.nix
                    ./plugins/treesitter-context.nix
                    ./plugins/treesitter.nix
                    ./plugins/trouble.nix
                    ./plugins/which-key.nix
                ] ++ (if cfg.enableRust then [
                    ./plugins/crates.nix
                    ./plugins/rust-tools.nix
                ] else []);

                extraPlugins = with pkgs.vimPlugins; [
                    nvim-web-devicons
                ];
            };
        };
    in
    {
        options.nvim.enableRust = mkEnableOption "enable rust";

        config.devshells.default = {
            packages = [nvim];
        };

        config.packages.nvim = nvim;
    }
  );
}