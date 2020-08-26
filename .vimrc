" first install vim-plug to ~/.vim/autoload/
call plug#begin('~/.vim/plugged')

	"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
	"Plug 'SirVer/ultisnips'
	"Plug 'honza/vim-snippets'
	"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
	"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }


	""""""""""""""" IDE UI Configuration Plugins """"""""""""
	
	" directory move forth and back
	"Plug 'justinmk/vim-dirvish'
	" warning front/tail spaces
	Plug 'bronson/vim-trailing-whitespace'
	" git command line
	Plug 'tpope/vim-fugitive'
	" column alignment line
	Plug 'Yggdroot/indentLine'
	
	" the taskbar
	Plug 'itchyny/lightline.vim'
	
	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	
	Plug 'vivien/vim-linux-coding-style'

	
	"""""""""""""""""" Code Searching Plugins """"""""""""""""""""""
	
	" fuzzy search
	Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
	" automatically update ctags in the background
	Plug 'ludovicchabant/vim-gutentags'
	Plug 'skywind3000/gutentags_plus'
	" preview of the search bar
	"Plug 'skywind3000/vim-preview'
	
	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	
	"""""""""""""""""" Code Format Configuration Plugins """""""""""
	
	" code fast alignment
	Plug 'junegunn/vim-easy-align'
	" Tab to Space automatically
	Plug 'vim-scripts/Smart-Tabs'
	
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	"""""""""""""""""" Code Edit Configuration Plugins """"""""""""""
	
	" grammar check
	Plug 'w0rp/ale'

	" enhance specific language
	Plug 'vim-scripts/c.vim'
	Plug 'vim-scripts/a.vim'
	Plug 'octol/vim-cpp-enhanced-highlight'

	" automatically create non-existing directories for buff
	Plug 'pbrisbin/vim-mkdir'

	" auto compeletion
	Plug 'Valloric/YouCompleteMe', {'do':'./install.py --clang-completer --go-completer'}
	" function parameters hint
	Plug 'Shougo/echodoc.vim'

	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	""""""""""""""""""""" Code Color Configuration Plugins """""""""""""""
	
	"Plug 'altercation/vim-colors-solarized'
	"Plug 'crusoexia/vim-monokai'
	
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

" ----------gutentags.vim configuration-----------------------------------
"yum install -y global-ctags
set tags=./.tags;,.tags
let $GTAGSLABEL = 'pygments'
let $GTAGSCONF = '/etc/gtags.conf'

" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.git','.root','.svn','.hg','.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
	if executable('ctags')
			let g:gutentags_modules += ['ctags']
	endif
	if executable('gtags-cscope') && executable('gtags')
			let g:gutentags_modules += ['gtags_cscope']
	endif
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/workspace/.cache/tags')
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = []
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" 禁用 gutentags 自动加载 gtags 数据库的行为避免多个项目数据库相互干扰,使用plus插件解决问题
let g:gutentags_auto_add_gtags_cscope = 0
let g:gutentags_define_advanced_commands = 1
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

"----------vim-preview配置-----------------------------------------
"P 预览 大p关闭
"autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
"autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
