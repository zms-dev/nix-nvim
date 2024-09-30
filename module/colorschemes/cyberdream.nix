{cfg, ...}:
{
  colorschemes.cyberdream = {
    enable = cfg.colorscheme == "cyberdream";
    settings = {
      transparent = cfg.transparent;
      italic_comments = true;
      hide_fillchars = true;
      borderless_telescope = false;
      terminal_colors = true;
    };
  };
}
