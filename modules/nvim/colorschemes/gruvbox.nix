{cfg, ...}:
{
  colorschemes.gruvbox = {
    enable = cfg.colorscheme == "gruvbox";
    settings = {
      terminal_colors = true;
      transparent_mode = cfg.transparent;
      contrast = "hard"; # can be "hard", "soft" or empty string
    };
  };
}