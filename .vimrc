" 不产生备份文件
set noswapfile
set noundofile
set nobackup

" 设置leader为,
let mapleader=","
let g:mapleader=","

" Vim 的内部编码
set encoding=utf-8

" 相对行号
set relativenumber

" 编辑模式下esc映射为jj
inoremap jj <esc>

" 补全行尾;
map <Leader>es <esc>$a;<esc>

" 格式化高亮
syntax on

" 隐藏工具栏
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" 最大化
autocmd GUIEnter * simalt ~x

" 在插入模式中使用Ctrl+v粘贴全局剪贴板内容
inoremap <C-v> <esc>"+pa

" 在Visual模式中使用Ctrl+c复制内容到全局剪贴板
vnoremap <C-c> "+y

" 在Visual模式中使用Ctrl+x剪切内容到全局剪贴板
vnoremap <C-x> "+x


" 插件配置
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
