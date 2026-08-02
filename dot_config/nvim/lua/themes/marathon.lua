local M = {}

M.setup = function(opts)
  opts = opts or {}
  local transparent = opts.transparent_background or false

  vim.opt.termguicolors = true
  vim.opt.background = "dark"

  local colors = {
    black       = "#000000",
    darkGray    = "#121212",
    neonGreen   = "#c0fc04",
    cyanLogo    = "#01ffff",
    redPower    = "#ff0d1a",
    white       = "#f5f5f6",
  }

  local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

	-- Core UI
	hl("Normal", { fg = colors.white, bg = transparent and "NONE" or colors.black })
	hl("CursorLine", { bg = transparent and "NONE" or colors.darkGray })
	hl("Visual", { bg = colors.neonGreen, fg = colors.black })
	hl("LineNr", { fg = colors.darkGray })
	hl("StatusLine", { fg = colors.neonGreen, bg = transparent and "NONE" or colors.black, bold = true })
	hl("StatusLineNC", { fg = colors.darkGray, bg = transparent and "NONE" or colors.black })

	-- Syntax
	hl("Comment", { fg = colors.darkGray })
	hl("Constant", { fg = colors.neonGreen })
	hl("String", { fg = colors.neonGreen })
	hl("Function", { fg = colors.cyanLogo })
	hl("Identifier", { fg = colors.neonGreen })
	hl("Keyword", { fg = colors.neonGreen, bold = true })
	hl("Operator", { fg = colors.neonGreen })
	hl("Type", { fg = colors.neonGreen })
	hl("Error", { fg = colors.redPower, bold = true })
	hl("WarningMsg", { fg = colors.neonGreen })
	hl("Todo", { fg = colors.cyanLogo, bold = true })
	hl("Pmenu", { fg = colors.white, bg = transparent and "NONE" or colors.darkGray })
	hl("PmenuSel", { fg = colors.black, bg = colors.neonGreen })
	hl("PmenuThumb", { bg = colors.neonGreen })
end

return M
