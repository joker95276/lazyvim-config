-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 在 LazyVim 的初始化文件中设置固定工作目录
vim.g.root_spec = { "lsp", { ".root" }, "cwd" }

-- 设置窗口
vim.opt.fillchars = {
  horiz = "─", -- 水平分隔符
  horizup = "┴", -- 水平分隔符上端
  horizdown = "┬", -- 水平分隔符下端
  vert = "│", -- 垂直分隔符
  vertleft = "┤", -- 垂直分隔符左端
  vertright = "├", -- 垂直分隔符右端
  verthoriz = "┼", -- 水平和垂直分隔符交叉点
}

vim.cmd("highlight WinSeparator guibg=#F5F5F5 guifg=#CCCCCC")

-- 拼写检查设置
vim.opt.spell = true -- 默认开启拼写检查
vim.opt.spelllang = { "en", "cjk" } -- 设置拼写检查语言为英语，并支持中日韩文字
vim.opt.spelloptions = "camel" -- 支持驼峰命名的拼写检查
