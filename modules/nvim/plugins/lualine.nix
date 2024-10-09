{
  plugins.lualine = {
    enable = true;

    settings = {
      options = {
        iconsEnabled = true;
        globalstatus = true;
        # theme = "auto";
      };

      section_separators = {
        left = "";
        right = "";
      };

      component_separators = {
        left = " ";
        right = " ";
      };

      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            separator.left = "";
            separator.right = "";
            padding.right = 2;
            padding.left = 2;
          }
        ];
        lualine_b = [
          {
            __unkeyed-1 = "branch";
            separator.left = "";
            separator.right = "";
            padding.right = 2;
            padding.left = 2;
          }
        ];
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 1;
            padding.right = 2;
            padding.left = 2;
            separator.left = "";
            separator.right = "";
          }
        ];
        lualine_x = [
          "diagnostics"
           {
            __unkeyed-1.__raw = ''
              function()
                  local msg = ""
                  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                  local clients = vim.lsp.get_active_clients()
                  if next(clients) == nil then
                      return msg
                  end
                  for _, client in ipairs(clients) do
                      local filetypes = client.config.filetypes
                      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                          return client.name
                      end
                  end
                  return msg
              end
            '';
            icon = " ";
            padding.right = 2;
            padding.left = 2;
            separator.left = "";
            separator.right = "";
          }
          {
            __unkeyed-1 = "filetype";
            padding.right = 2;
            padding.left = 2;
            separator.left = "";
            separator.right = "";
          }
        ];
        lualine_y = [
          {
            __unkeyed-1 = "progress";
            separator.left = "";
            separator.right = "";
            padding.right = 2;
            padding.left = 2;
          }
        ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
            separator.right = "";
            separator.left = "";
            padding.left = 2;
            padding.right = 2;
          }
        ];
      };
    };
  };
}
