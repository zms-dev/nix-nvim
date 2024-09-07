{
    plugins.neo-tree = {
        enable = true;
        autoCleanAfterSessionRestore = true;
        closeIfLastWindow = true;
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
            winbar = true;
            sources = [
                {
                    source = "filesystem";
                    displayName = " File";
                }
                {
                    source = "buffers";
                    displayName = "󰈙 Bufs";
                }
                {
                    source = "git_status";
                    displayName = "󰊢 Git";
                }
            ];
        };
        window = {
            width = 30;
        };
    };
}