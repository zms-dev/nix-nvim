{cfg, ...}:
{
  colorschemes.rose-pine = {
    enable = cfg.colorscheme == "rose-pine";
    settings = {
      variant = "main"; # auto, main, moon, or dawn
      dark_variant = "main"; # main, moon, or dawn
      enable = {
        terminal = true;
      };
      styles = {
        bold = true;
        italic = true;
        transparency = cfg.transparent;
      };
    };
  };
}