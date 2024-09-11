local helpers = require('incline.helpers')
local devicons = require('nvim-web-devicons')
local mocha = require("catppuccin.palettes").get_palette "mocha"

local fmt = {
	ending = {
		guifg = mocha.crust,
		guibg = mocha.base,
	},
	inner = {
		guifg = mocha.text,
		guibg = mocha.crust,
	},
    divider = {
        guifg = mocha.mantle,
        guibg = mocha.crust,
    },
}

local START_BLOCK = vim.tbl_extend('force', { '' }, fmt.ending)
local END_BLOCK = vim.tbl_extend('force', { '' }, fmt.ending)
local DIVIDER = vim.tbl_extend('force', { '| ' }, fmt.divider)

local function get_git_diff(props)
    local icons = { removed = " ", changed = " ", added = " " }
    local signs = vim.b[props.buf].gitsigns_status_dict
    local labels = {}
    if signs == nil then
        return labels
    end
    for name, icon in pairs(icons) do
        if tonumber(signs[name]) and signs[name] > 0 then
            table.insert(labels, { icon .. signs[name] .. " ", group = "Diff" .. name })
        end
    end
    if #labels > 0 then
        table.insert(labels, DIVIDER)
    end
    return labels
  end

  local function get_diagnostic_label(props)
    local icons = { error = " ", warn = " ", info = " ", hint = " " }
    local label = {}

    for severity, icon in pairs(icons) do
        local n = #vim.diagnostic.get(
            props.buf,
            { severity = vim.diagnostic.severity[string.upper(severity)] }
        )
        if n > 0 then
            table.insert(label, { icon .. n .. " ", group = "DiagnosticSign" .. severity })
        end
    end
    if #label > 0 then
        table.insert(label, DIVIDER)
    end
    return label
  end

  local function get_file_name(props)
    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
    if filename == "" then
        filename = "[No Name]"
    end
    local ft_icon, ft_color = devicons.get_icon_color(filename)

    local label = {}
    table.insert(label, { (ft_icon or "") .. " ", guifg = ft_color, guibg = "none" })
    table.insert(label, { vim.bo[props.buf].modified and " " or "", guifg = "#d19a66" })
    table.insert(
      label,
      { filename , gui = vim.bo[props.buf].modified and "bold,italic" or "bold" }
    )
    if not props.focused then
      label["group"] = "BufferInactive"
    end

    return label
  end

local function render_func(props)
	local inner = vim.tbl_extend('force', {
		{ get_diagnostic_label(props) },
		{ get_git_diff(props) },
		{ get_file_name(props) },
	}, fmt.inner)

    return {
        START_BLOCK,
        inner,
        END_BLOCK,
    }
end

require('incline').setup {
  window = {
    placement = {
        vertical = "top",
        horizontal = "right",
    },
    padding = 0,
    margin = {
        vertical = 0,
        horizontal = 0,
    },
  },
  highlight = {
    groups = {
      InclineNormal = {
        default = true,
        group = "NormalFloat"
      },
      InclineNormalNC = {
        default = true,
        group = "NormalFloat"
      }
    }
  },
  render = render_func,
}
