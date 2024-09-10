{
    plugins.telescope = {
        enable = true;
        enabledExtensions = [ "notify" ];
        extensions = {
            undo = {
                enable = true;
                settings = {};
            };
            fzf-native = {
                enable = true;
                settings = {};
            };
            file-browser = {
                enable = true;
                settings = {};
            };
        };
    };

    keymaps = [
        {
            action = "<cmd>Telescope find_files<cr>";
            key = "<leader>ff";
            options = {
                desc = "Find files";
            };
        }
        {
            action = "<cmd>Telescope live_grep<cr>";
            key = "<leader>fw";
            options = {
                desc = "Live grep";
            };
        }
    ];
}