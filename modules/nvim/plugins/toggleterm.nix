{
  plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = "[[<C-x>]]";
      hide_numbers = true;
      start_in_insert = true;
      terminal_mappings = true;
      persist_mode = true;
      insert_mappings = true;
      close_on_exit = true;
      auto_scroll = true;
      winbar.enabled = false;
      direction = "float"; # 'vertical' | 'horizontal' | 'window' | 'float'
      floatOpts = {
        border = "curved"; # 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        width = 80;
        height = 20;
        winblend = 0;
      };
    };
  };
}
