set nu

"换行自动缩进
set smartindent
set ts=4
set shiftwidth=4

"括号补全
imap { {}<ESC>i<CR><ESC>V<O

"取消C-b的向上翻页功能，防止与tmux的C-b冲突
nmap C-b <ESC>


au BufRead,BufNewFile *.go setf go "set /usr/share/vim/vim74/syntax/go.vim for *.go files
syntax enable
filetype plugin on

"vim will search tags recursively from the current dir back to the top dir
set autochdir
set tags=tags;

"let g:go_disable_autoinstall = 0

"taglist settings
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow = 1
noremap <F2> :TlistToggle<CR>
"let Tlist_Use_Right_Window =1
"let Tlist_WinHeight = 100
"let Tlist_WinWidth = 40

"for WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap <F3> :WMToggle<CR>

set fdm=indent

"设置折叠后的颜色
:hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=green
