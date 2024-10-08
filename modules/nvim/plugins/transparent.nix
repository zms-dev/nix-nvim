{ cfg, ... } : {
  plugins.transparent = {
    enable = cfg.colorscheme == "base16" && cfg.transparent;
    settings = {
      exclude_groups = [
        "CursorLine"
        "CursorLineNr"
      ];
    };
  };
}
