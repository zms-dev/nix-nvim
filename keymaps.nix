{
  keymaps = [
    {
        action = "<cmd>Neotree toggle<cr>";
        key = "<leader>e";
    }
    {
        action.__raw = ''
          function()
            if vim.bo.filetype == "neo-tree" then
              vim.cmd.wincmd "p"
            else
              vim.cmd.Neotree "focus"
            end
          end
        '';
        key =  "<leader>o";
    }
    {
        action = "<cmd>Telescope find_files<cr>";
        key = "<leader>d";
    }
    {
        action = "<cmd>Telescope live_grep<cr>";
        key = "<leader>f";
    }
    {
        action = "<cmd>wincmd l<cr>";
        key = "<leader><Right>";
    }
    {
        action = "<cmd>wincmd h<cr>";
        key = "<leader><Left>";
    }
  ];
}