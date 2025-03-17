-- 设置窗口
vim.opt.fillchars = {
    horiz = '━',  -- 更粗的水平分隔符
    horizup = '┻',  -- 更粗的水平分隔符上端
    horizdown = '┳',  -- 更粗的水平分隔符下端
    vert = '┃',  -- 更粗的垂直分隔符
    vertleft = '┫',  -- 更粗的垂直分隔符左端
    vertright = '┣',  -- 更粗的垂直分隔符右端
    verthoriz = '╋',  -- 更粗的水平和垂直分隔符交叉点
}

vim.cmd('highlight WinSeparator guifg=#CCCCCC')