function(hl, c)
  hl.FloatBorder.fg = c.blue
  hl.WinSeparator.fg = c.fg_gutter
  hl.NvimTreeWinSeparator.fg = c.fg_gutter
  hl.IlluminatedWordText.bg = c.fg_gutter
  hl.IlluminatedWordRead.bg = c.fg_gutter
  hl.IlluminatedWordWrite.bg = c.fg_gutter

  hl.InclineEnd = { fg = c.bg_highlight };
  hl.InclineInner = { fg = c.fg, bg = c.bg_highlight };
  hl.InclineDivider = { fg = c.fg_gutter };
end