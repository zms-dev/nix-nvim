{
    clipboard.providers.wl-copy.enable = true;
    opts = {
        number = true; # Show line numbers
        relativenumber = true; # Show relative line numbers

        clipboard = "unnamedplus"; # Use the system clipboard
    
        signcolumn = "yes"; # Always show the sign column

        scrolloff = 5; # Keep 5 lines above and below the cursor

        ignorecase = true; # Ignore case when searching
        smartcase = true; # Ignore case when searching, unless an uppercase letter is used
        autoindent = true; # Automatically indent new lines
        smartindent = true; # Automatically indent new lines based on the previous line

        tabstop = 4; # Number of spaces a tab counts for
        shiftwidth = 4; # Number of spaces to use for autoindent
        expandtab = true; # Use spaces instead of tabs
        smarttab = true; # Use shiftwidth when tabbing

        cmdheight = 0; # Height of the command line
    };
}