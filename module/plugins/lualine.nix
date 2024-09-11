{
  plugins.lualine = {
    enable = true;
    iconsEnabled = true;
    globalstatus = true;
    theme = "auto";

    sectionSeparators = {
      left = "";
      right = "";
    };

    componentSeparators = {
      left = "";
      right = "";
    };

    sections = {
      lualine_a = [
        {
          separator.left = "";
          separator.right = "";
          padding.right = 2;
          padding.left = 2;
        }
      ];
      lualine_b = ["branch"];
      lualine_c = [
        {
          name = "filename";
          extraConfig.path = 1;
        }
      ];
      lualine_x = [
        "diagnostics"
        "encoding"
        "fileformat"
        {
          name = "filetype";
          extraConfig.colored = false;
        }
      ];
      lualine_y = ["progress"];
      lualine_z = [
        {
          separator.right = "";
          separator.left = "";
          padding.left = 2;
          padding.right = 2;
        }
      ];
    };
  };
}
