{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      transparent_background = true;
      flavour = "mocha"; # mocha, macchiato, frappe, latte
      integrations = {
        alpha = true;
        barbar = true;
        barbecue = {
          dim_dirname = true;
          bold_basename = true;
          dim_context = false;
          alt_background = false;
        };
        cmp = true;
        gitsigns = true;
        mini = {
          enabled = true;
          # indentscope_color = "";
        };
        treesitter = true;
        treesitter_context = true;
        telescope = {
          enabled = true;
        };
        fidget = true;
        harpoon = true;
        leap = true;
        lsp_saga = true;
        neotree = true;
        noice = true;
        notify = true;
        native_lsp = {
          enabled = true;
          virtual_text = {
            errors = ["italic"];
            hints = ["italic"];
            warnings = ["italic"];
            information = ["italic"];
            ok = ["italic"];
          };
          underlines = {
            errors = ["underline"];
            hints = ["underline"];
            warnings = ["underline"];
            information = ["underline"];
            ok = ["underline"];
          };
          inlay_hints = {
            background = true;
          };
        };
        illuminate = {
          enabled = true;
          lsp = false;
        };
        indent_blankline = {
          enable = true;
          colored_indent_levels = true;
        };
      };
      styles = {
        booleans = ["bold" "italic"];
        conditionals = ["bold"];
      };
    };
  };
}
