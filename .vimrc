set nu

"换行自动缩进
set smartindent
set ts=4
set shiftwidth=4

"括号补全
imap { {}<ESC>i<CR><ESC>V<O

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

"内容改变后自动重载
set autoread

"显示当前mode
set showmode

"显示匹配的括号
set showmatch

"移动行
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"取消C-b的向上翻页功能，防止与tmux的C-b冲突
nmap bb <C-b>  
vmap bb <C-b>
nmap ff <C-f>  
vmap ff <C-f>
