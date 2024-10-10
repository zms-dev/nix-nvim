{cfg, ...}:
let
  theme = cfg.base16Scheme.withHashtag;
in {
  colorschemes.base16 = {
    enable = true;
    settings = {
      cmp = true;
      dapui = true;
      illuminate = true;
      indentblankline = true;
      lsp_semantic = true;
      notify = true;
      telescope = true;
      telescope_borders = true;
      ts_rainbow = true;
    };
    colorscheme = {
      inherit (theme)
        base00 base01 base02 base03 base04 base05 base06 base07
        base08 base09 base0A base0B base0C base0D base0E base0F;
    };
  };
}
