{
    plugins.rust-tools = {
        enable = true;
        reloadWorkspaceFromCargoToml = true;
        inlayHints = {
            auto = true;
            onlyCurrentLine = false;
            showParameterHints = true;
            parameterHintsPrefix = "<- ";
            otherHintsPrefix = "=> ";
            maxLenAlign = false;
            maxLenAlignPadding = 1;
            rightAlign = false;
            rightAlignPadding  = 7;
            highlight = "Comment";
        };
        hoverActions = {
            border = [
                ["╭" "FloatBorder"]
                ["─" "FloatBorder"]
                ["╮" "FloatBorder"]
                ["│" "FloatBorder"]
                ["╯" "FloatBorder"]
                ["─" "FloatBorder"]
                ["╰" "FloatBorder"]
                ["│" "FloatBorder"]
            ];
            maxWidth = null;
            maxHeight = null;
            autoFocus = false;
        };
        server = {
            lens.enable = true;
            procMacro.enable = true;
            standalone = true;
        };
    };
}