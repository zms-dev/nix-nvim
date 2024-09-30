{cfg, ...}:
{
  colorschemes.tokyonight = {
    enable = cfg.colorscheme == "tokyonight";
    settings = {
      style = "night"; #  `moon`, `storm`, `night` and `day`
      transparent = cfg.transparent;
      dim_inactive = true;
      on_highlights = builtins.readFile ./tokyonight-highlights.lua;
      styles = {
        floats = if cfg.transparent then "transparent" else "dark";
        sidebars = if cfg.transparent then "transparent" else "dark";
      };
    };
  };
}