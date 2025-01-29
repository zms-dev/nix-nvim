{
  plugins.copilot-cmp = {
    enable = true;
  };

  plugins.copilot-lua = {
    enable = true;
    settings = {
      suggestion = {
        enabled = false; # disable because conflicting with cmp
        autoTrigger = true;
        keymap = {
          accept = "<C-l>";
          acceptWord = false;
          acceptLine = false;
          next = "<M-]>";
          prev = "<M-[>";
          dismiss = "<M-Bslash>";
          # next = "<C-.>";
          # prev = "<C-,>";
          # dismiss = "<C/>";
        };
      };
      panel = {
        enabled = false;
      };
      filetypes = {
        javascript = true;
        typescript = true;
        rust = true;
        python = true;
        lua = true;
        nix = true;
        markdown = true;
        yaml = true;
        "*" = false;
      };
    };
  };
}
