{
  plugins.trouble = {
    enable = true;

    settings = {
      autoClose = true;
      autoPreview = true;
      useDiagnosticSigns = true;
      mode = "workspace_diagnostics";
      position = "bottom"; # “bottom”, “top”, “left”, “right”
      win_config = { border = "single"; };

      action_keys = {
        close = "q";
        cancel = "<esc>";
        refresh = "r";
        jump = ["<cr>" "<tab>"];
        open_split = ["S"];
        open_vsplit = ["s"];
        open_tab = ["<c-t>"];
        jump_close = ["o"];
        toggle_mode = ["m"];
        toggle_preview = ["P"];
        hover = "K";
        preview = "p";
        close_folds = ["zC" "zc"];
        open_folds = ["zO" "zo"];
        toggle_fold = ["zA" "za"];
        previous = "k";
        next = "j";
      };
    };
  };

  keymaps = [
    { 
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = { desc = "Diagnostics (Trouble)"; };
    }
    { 
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options = { desc = "Buffer Diagnostics (Trouble)"; };
    }
    { 
      key = "<leader>xs"; 
      action = "<cmd>Trouble symbols toggle focus=false<cr>"; 
      options = { desc = "Symbols (Trouble)"; };
    }
    { 
      key = "<leader>xd"; 
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>"; 
      options = { desc = "LSP Definitions / references / ... (Trouble)"; }; 
    }
    { 
      key = "<leader>xl"; 
      action = "<cmd>Trouble loclist toggle<cr>"; 
      options = { desc = "Location List (Trouble)"; }; 
    }
    { 
      key = "<leader>xQ"; 
      action = "<cmd>Trouble qflist toggle<cr>"; 
      options = { desc = "Quickfix List (Trouble)"; }; 
    }
  ];
}
