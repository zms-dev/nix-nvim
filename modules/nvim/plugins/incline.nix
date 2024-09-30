{pkgs, ...}: let
  build = pkgs.vimUtils.buildVimPlugin;
  incline-nvim = build {
    name = "incline";
    src = pkgs.fetchFromGitHub {
      owner = "b0o";
      repo = "incline.nvim";
      rev = "16fc9c0";
      hash = "sha256-5DoIvIdAZV7ZgmQO2XmbM3G+nNn4tAumsShoN3rDGrs=";
    };
  };
in {
  extraPlugins = with pkgs.vimPlugins; [
    incline-nvim
    nvim-web-devicons
  ];

  extraConfigLua = builtins.readFile ./incline.lua;
}
