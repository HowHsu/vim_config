" first install vim-plug to ~/.vim/autoload/
call plug#begin('~/.vim/plugged')

"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
	" the taskbar
	Plug 'itchyny/lightline.vim'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
	Plug 'vivien/vim-linux-coding-style'
	" LeaderF is for fuzzy search, ensure vim version > 7.4
	Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
call plug#end()

" general settings
	set ts=4
	set nu
	set noshowmode
	"
	set backspace=2

" LeaderF settings
	let g:Lf_WindowPosition = 'popup'
	let g:Lf_PreviewInPopup = 1

" vim-linux-coding-style
	" options will be applied only if "/linux/" or "/kernel" is in buffer's path.
	let g:linuxsty_patterns = [ "/linux/", "/kernel/" ]

" lightline settings
	set laststatus=2
	" remember to do: export TERM=xterm-256color in .zshrc 
	if !has('gui_running')
		set t_Co=256
	endif
	let g:lightline = {
		\ 'colorscheme': 'PaperColor_dark',
		\ }

