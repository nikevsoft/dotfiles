return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      custom_highlights = function(colors)
        return {
          NotifyBackground = { bg = "#000000" }, -- notify only takes this coloring
          CursorLine = { bg = colors.none },
          CursorLineNr = { bg = colors.none },
          FloatShadow = { bg = colors.none },
          FloatShadowThrough = { bg = colors.none },

          -- NavicIconsFile = { bg = colors.none },
          -- NavicIconsModule = { bg = colors.none },
          -- NavicIconsNamespace = { bg = colors.none },
          -- NavicIconsPackage = { bg = colors.none },
          -- NavicIconsClass = { bg = colors.none },
          -- NavicIconsMethod = { bg = colors.none },
          -- NavicIconsProperty = { bg = colors.none },
          -- NavicIconsField = { bg = colors.none },
          -- NavicIconsConstructor = { bg = colors.none },
          -- NavicIconsEnum = { bg = colors.none },
          -- NavicIconsInterface = { bg = colors.none },
          -- NavicIconsFunction = { bg = colors.none },
          -- NavicIconsVariable = { bg = colors.none },
          -- NavicIconsConstant = { bg = colors.none },
          -- NavicIconsString = { bg = colors.none },
          -- NavicIconsNumber = { bg = colors.none },
          -- NavicIconsBoolean = { bg = colors.none },
          -- NavicIconsArray = { bg = colors.none },
          -- NavicIconsObject = { bg = colors.none },
          -- NavicIconsKey = { bg = colors.none },
          -- NavicIconsNull = { bg = colors.none },
          -- NavicIconsEnumMember = { bg = colors.none },
          -- NavicIconsStruct = { bg = colors.none },
          -- NavicIconsEvent = { bg = colors.none },
          -- NavicIconsOperator = { bg = colors.none },
          -- NavicIconsTypeParameter = { bg = colors.none },
          -- NavicText = { bg = colors.none },
          -- NavicSeparator = { bg = colors.none },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
