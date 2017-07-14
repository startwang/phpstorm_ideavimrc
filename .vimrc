" 不产生备份文件
set noswapfile
set noundofile
set nobackup

" 设置leader为,
let mapleader=","
let g:mapleader=","

" 相对行号
set relativenumber

" 编辑模式下esc映射为jj
inoremap jj <esc>

" 补全行尾;
map <Leader>es <esc>$a;<esc>

" 隐藏工具栏
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" 插件配置
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
