{
    plugins.barbar = {
        enable = false;
        settings = {
            auto_hide = 1;
            animation = true;
            clickable = true;
            semantic_letters = true;
            sidebar_filetypes = {
                neo-tree = {
                    event = "BufWipeout";
                };
            };
        };
    };
}