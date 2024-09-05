{
    colorschemes.catppuccin = {
        enable = true;
        settings = {
            transparentBackground = false;
            flavour = "macchiato"; # mocha, macchiato, frappe, latte
            integrations = {
                cmp = true;
                gitsigns = true;
                mini = {
                    enabled = true;
                    indentscope_color = "";
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
                        errors = [ "italic" ];
                        hints = [ "italic" ];
                        warnings = [ "italic" ];
                        information = [ "italic" ];
                        ok = [ "italic" ];
                    };
                    underlines = {
                        errors = [ "underline" ];
                        hints = [ "underline" ];
                        warnings = [ "underline" ];
                        information = [ "underline" ];
                        ok = [ "underline" ];
                    };
                    inlay_hints = {
                        background = true;
                    };
                };
                illuminate = {
                    enabled = true;
                    lsp = false;
                };
            };
            styles = {
                booleans = ["bold" "italic"];
                conditionals = ["bold"];
            };
            term_colors = true;
        };
    };
}