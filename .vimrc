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

" 转变配色
map <Leader>css :set ft=css.markdow<CR>
map <Leader>html :set ft=html.markdow<CR>
map <Leader>js :set ft=javascript.markdow<CR>
map <Leader>md :set ft=markdown.markdow<CR>
map <Leader>php :set ft=php.markdow<CR>
map <Leader>py :set ft=python.markdow<CR>
map <Leader>rb :set ft=ruby.markdow<CR>
map <Leader>ruby :set ft=ruby.markdow<CR>
map <Leader>sql :set ft=sql.markdow<CR>

" 插件配置
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
