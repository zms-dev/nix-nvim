{
  plugins.neo-tree = {
    enable = true;
    autoCleanAfterSessionRestore = true;
    closeIfLastWindow = true;
    hideRootNode = true;
    defaultComponentConfigs = {
      indent.padding = 0;
      icon = {
        folderClosed = "";
        folderOpen = "";
        folderEmpty = "";
        folderEmptyOpen = "";
        default = "󰈙";
      };
      modified = {symbol = "";};
      gitStatus = {
        symbols = {
          added = "";
          deleted = "";
          modified = "";
          renamed = "➜";
          untracked = "★";
          ignored = "◌";
          unstaged = "✗";
          staged = "✓";
          conflict = "";
        };
      };
    };
    filesystem = {
      followCurrentFile = {
        enabled = true;
      };
      hijackNetrwBehavior = "open_current";
      useLibuvFileWatcher = true;
      filteredItems = {
        visible = true;
      };
    };
    sourceSelector = {
      contentLayout = "start";
      winbar = false;
      statusline = true;
      sources = [
        {
          source = "filesystem";
          displayName = " File";
        }
      ];
    };
    window = {
      width = 30;
    };
  };

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
      key = "<leader>o";
    }
  ];
}
