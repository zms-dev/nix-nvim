{pkgs, ...}: {
    extraPlugins = with pkgs.vimPlugins; [
        no-neck-pain-nvim
    ];

    extraConfigLua = builtins.readFile ./no-neck-pain.lua;

    keymaps = [
        {
            key = "<leader>n";
            action = ":NoNeckPain<CR>";
            options = {
                silent = true;
                desc = "Toggle NoNeckPain";
            };
        }
    ];
}