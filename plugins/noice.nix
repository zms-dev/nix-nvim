{
    plugins.noice = {
        enable = true;
        # extraOptions = { presets.command_palette = true; };
        lsp.override = {
            "vim.lsp.util.convert_input_to_markdown_lines" = true;
            "vim.lsp.util.stylize_markdown" = true;
            "cmp.entry.get_documentation" = true;
        };
        messages.enabled = false;
        notify.enabled = true;
        presets = {
            bottom_search = true;
            command_palette = true;
            long_message_to_split = true;
            inc_rename = true;
            lsp_doc_border = false;
        };
        popupmenu = {
            enabled = true;
            backend = "cmp";
        };
        views = {
            cmdline_popup.border.style = "single";
            cmdline_popupmenu.border.style = "single";
        };
    };
}