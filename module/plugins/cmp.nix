{
  plugins.cmp = {
    enable = true;
    settings = {
      autoEnableSources = true;
      experimental = {ghost_text.hlgroup = "Comment";};
      completion.completeopt = "menu,menuone,noselect,preview";
      sources = [
        {
          name = "copilot";
          priority = 1000;
        }
        {
          name = "nvim_lsp";
          priority = 800;
        }
        {
          name = "luasnip";
          priority = 500;
        }
        {
          name = "path";
          priority = 100;
        }
        {
          name = "buffer";
          priority = 100;
        }
      ];
      snippet.expand = "luasnip";
      mapping = {
        "<C-e>" = "cmp.mapping.close()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      };
    };
  };

  plugins.luasnip = {
    enable = true;
    settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };
  };

  plugins.cmp_luasnip = {
    enable = true;
  };

  plugins.cmp-nvim-lsp = {
    enable = true;
  };

  plugins.cmp-nvim-lsp-signature-help = {
    enable = true;
  };

  plugins.cmp-buffer = {
    enable = true;
  };

  plugins.cmp-cmdline = {
    enable = true;
  };

  plugins.cmp-zsh = {
    enable = true;
  };

  plugins.lspkind = {
    enable = true;
  };
}
