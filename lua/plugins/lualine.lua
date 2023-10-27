local colors = {
    -- error = '#d71c47',
    error = '#E95678',
    warning = '#fe8019',
    -- hint = '#56e97e',
    hint = "#25B2BC",

    red_1 = '#E95678',
    red_2 = '#ef839c',

    green_1 = "#25B2BC",
    green_2 = "#7CD0D6",

    -- green_1 = '#1cd74f',
    -- green_2 = '#89efa0',

    -- blue_1 = '#3f66e6',
    -- blue_2 = '#839cef',

    blue_1 = '#fe8019',
    -- blue_2 = '#fe9c4c',
    blue_2 = '#fea67e',

    magenta_1 = '#a277ff',
    magenta_2 = '#b0aaff',

    lightgray = '#2E303E',
    white = '#f1f1f1',
    black = '#1A1C23',
}

local theme = {
  normal = {
    a = { fg = colors.black, bg = colors.red_1 },
    b = { fg = colors.black, bg = colors.red_2 },
    c = { fg = colors.white, bg = colors.lightgray },
    y = { fg = colors.black, bg = colors.red_2 },
    z = { fg = colors.black, bg = colors.red_1 },
  },
  insert = {
      a = { fg = colors.black, bg = colors.green_1 },
      b = { fg = colors.black, bg = colors.green_2 },
  },
  visual = {
      a = { fg = colors.black, bg = colors.magenta_1 },
      b = { fg = colors.black, bg = colors.magenta_2 },
  },
  replace = {
      a = { fg = colors.black, bg = colors.blue_1 },
      b = { fg = colors.black, bg = colors.blue_2 },
  },
}

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < 'x'
    for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = colors.black, bg = colors.lightgray } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= 'table' then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = '' } or { left = '' }
      -- comp.separator = left and { right = ' ' } or { left = ' ' }
    end
  end
  return sections
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = theme,
        -- component_separators = '',
        component_separators = { left = ' ', right = ''},
        section_separators = { left = ' ', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = process_sections {
        lualine_a = {'mode'},
        lualine_b = {
                        'branch',
                        {
                            'diff',
                            diff_color = {
                                added = { fg = colors.black },
                                modified = { fg = colors.black },
                                removed = { fg = colors.black },
                            },
                        },
                        {
                            'filename',
                            color = { fg=colors.white, bg=colors.lightgray }
                        },
                    },
        lualine_c = {
                        {
                            'diagnostics',
                            source = { 'nvim' },
                            sections = { 'error' },
                            diagnostics_color = { error = { bg = colors.error, fg = colors.white } },
                        },
                        {
                            'diagnostics',
                            source = { 'nvim' },
                            sections = { 'warn' },
                            diagnostics_color = { warn = { bg = colors.warning, fg = colors.white } },
                        },
                        {
                            'diagnostics',
                            source = { 'nvim' },
                            sections = { 'hint' },
                            diagnostics_color = { hint = { bg = colors.hint, fg = colors.white } },
                        }
                    },
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
