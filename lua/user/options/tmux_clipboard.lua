-- clipboard setup for tmux
vim.g.clipboard = {
  name = "tmux",
  copy = {
    ["+"] = 'tmux load-buffer -',
    ["*"] = 'tmux load-buffer -',
  },
  paste = {
    ["+"] = 'tmux save-buffer -',
    ["*"] = 'tmux save-buffer -'
  },
  cache_enabled = true
}
