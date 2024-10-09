{ cfg, lib, ... } : {
  plugins.transparent = {
    enable = cfg.transparent;
    settings = {
      extra_groups = [
        "Constant"
        "NormalFloat"
        "FloatBorder"
        "EndOfBuffer"
        "Title"
        "WarningMsg"
      ];
      exclude_groups = [
        "CursorLine"
        "CursorLineNR"
        "CursorLineSign"
        "CursorLineFold"
        "NeoTreeCursorLine"
        "StatusLine"
      ];
    };
  };

  extraConfigLua = lib.mkIf cfg.transparent (builtins.readFile ./transparent.lua);
}
