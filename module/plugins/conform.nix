{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notifyOnError = true;
      notifyNoFormatters = true;
      format_on_save = {
        lspFallback = true;
        timeoutMs = 1000;
      };
      formatters = {
        codespell = {
          command = "${lib.getExe pkgs.codespell}";
        };
        alejandra = {
          command = "${lib.getExe pkgs.alejandra}";
        };
        jq = {
          command = "${lib.getExe pkgs.jq}";
        };
        prettierd = {
          command = "${lib.getExe pkgs.prettierd}";
        };
        shfmt = {
          command = "${lib.getExe pkgs.shfmt}";
        };
        stylua = {
          command = "${lib.getExe pkgs.stylua}";
        };
        rustfmt = {
          command = "${lib.getExe pkgs.rustfmt}";
        };
      };
      formattersByFt = {
        nix = ["alejandra"];
        javascript = ["prettierd"];
        typescript = ["prettierd"];
        yaml = ["prettierd"];
        json = ["jq"];
        lua = ["stylua"];
        scss = ["prettierd"];
        css = ["prettierd"];
        rust = ["rustfmt"];
        sh = ["shfmt"];
        "*" = ["codespell"];
      };
    };
  };

  keymaps = [
    {
      mode = "";
      key = "<leader>bf";
      action.__raw = ''
        function()
            require('conform').format { async = true, lsp_fallback = true }
        end
      '';
      options = {
        desc = "Format buffer";
      };
    }
  ];
}
