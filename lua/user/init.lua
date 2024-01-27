-- Load options
if vim.loader and vim.fn.has "nvim-0.9.1" == 1 then vim.loader.enable() end

for _, source in ipairs {
  "user.options.tmux_clipboard"
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

-- Set user options
return {
  colorscheme = "astrodark", -- Set colorscheme
  relativenumber = true, -- show relative numberline
  wrap = true -- enable wrapping of lines longer than the width of window
}

