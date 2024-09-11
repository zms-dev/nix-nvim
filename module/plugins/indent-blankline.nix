{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent = {
        smart_indent_cap = true;
        char = "┊";
        tab_char = " ";
      };
      scope = {
        enabled = false;
      };
      exclude.buftypes = ["terminal"];
      exclude.filetypes = [
        "help"
        "terminal"
        "dashboard"
        "lspinfo"
        "TelescopePrompt"
        "TelescopeResults"
        "alpha"
        "Starter"
        "starter"
        "neo-tree"
      ];
    };
  };
}
