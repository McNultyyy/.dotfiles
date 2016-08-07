set nocompatible              " be iMproved, required
set number
set ruler
set mouse=a
syntax on

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
" Markdown
Plugin 'plasticboy/vim-markdown'
" Latex
Plugin 'xuhdev/vim-latex-live-preview'
" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'burnettk/vim-angular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" start NERDTree on VIM startup
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTree options
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let NERDTreeMapActivateNode='<space>'

" Show lines below current cursor
set scrolloff=2

" Airline options
" air-line
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enable = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

set laststatus=2

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Forces 256 colours to be used
set t_Co=16


" Autoformat on save
"au BufWrite * :Autoformat

" Write to file when not editing as root
ca w!! w !sudo tee "%"

" Set colourscheme
set background=dark
"colorscheme base16-ocean


" Tabs as spaces
set tabstop=4 "the width of a tab, in spaces
set softtabstop=0
set noexpandtab "dont insert a tab as spaces
set shiftwidth=4 "indents have a width of 4

" Show eol/tabs/spaces
"set listchars=tab:>.,trail:.,extends:\#,nbsp:. 
"set list

" Ctrl-A for Select All
map <C-a> <esc>ggVG<CR>

" For live editing latex docs
autocmd Filetype tex setl updatetime=10
let g:livepreview_previewer = 'zathura'

" For file indentation
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = '┆'
let g:indentLine_enabled = 1

" For vim-javascript
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"
