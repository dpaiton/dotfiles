set nocompatible    " be iMproved
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w

" so $HOME/.vim/plugin/vundle.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto load changes to vimrc to vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ColorSchemes
Plugin 'flazz/vim-colorschemes'

" Tabular
"Plugin 'godlygeek/tabular'

" Comments
Plugin 'tomtom/tcomment_vim'

"File Tree Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Autocompletion Plugins
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jalcine/cmake.vim'
Plugin 'marijnh/tern_for_vim'

""Javascript Plugins
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
"Plugin 'scrooloose/syntastic'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'nikvdp/ejs-syntax'
"Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'einars/js-beautify'
"Plugin 'burnettk/vim-angular'
"" HTML Plugin
"Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Put your non-Plugin stuff after this line
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=["proprietary attribute \"ng-"]
let g:syntastic_html_tidy_ignore_errors=["proprietary attribute \"ion-"]
let g:syntastic_html_tidy_ignore_errors=["is not recognized!","discarding unexpected"]
let g:nerdtree_tabs_open_on_console_startup=1
let g:tern_map_keys=1
let g:tern_show_arguments_hints='on_hold'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let NERDTreeMapToggleFilters='\f'
let NERDTreeMapToggleFiles='\F'
set completeopt-=preview
" au FileType javascript call JavaScriptFold()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My sets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=500     " Sets how many lines of history VIM has to remember
set undolevels=500  " Number of undo levels
set title           " change the terminal's title
set visualbell      " don't beep
set noerrorbells    " don't beep
set number          " Show line numbers
set ruler           " Show position
set noswapfile      " Dont use swapfiles
set nobackup        " Dont use backups
set wb              " Dont use backups
set hidden          " hides buffers
set hlsearch        " Highlight search results
set incsearch       " show search matches as you type
set showmatch       " Highlight matching brackets
set expandtab       " Use spaces instead of tabs
set cc=100          " Gutter location
set tabstop=2       " tab stops at every 2 spaces
set shiftwidth=2    " tab = 2 spaces
"set backspace=indent,eol,start " backspace past auto-indent
set nowrap          " NO line wrapping
set ai              " Auto indent
"set si              " Smart indent
set list
set listchars=tab:>.,extends:#,nbsp:. "highlights tabs, trailing ws
set pastetoggle=<F2> "prevent tabbing issues when pasting
set nofoldenable    " dont fold by default
set viminfo^=%      " Remember info about open buffers on close
set noeb vb t_vb=   " Fix freezing issue form scrolling out of bounds
set autoread        " Autoload changes when file changed from outside
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w
set clipboard=unnamed " allow yank to clipboard ( <CMD-C> )
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My maps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader='\'
" use t/T to navigate tabs
nmap t :tabn<CR>
nmap T :tabp<CR>

" use f/F to switch splits
"map f <C-W><C-W>
"map F <C-W>h
" Smart way to move beween windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap , :NERDTreeToggle<CR>

" Treat long lines as break lines
" map j gj
" map k gk

" Swith Current Working Directory to to directory of open buffer
noremap :cd :cd<CR>%:p:h<CR>:pwd<CR>
" Opens a new bnewtab with the current buffer's path
map :tn :tabnew<CR>
" Super usefulbnewbedit/Users/matthewbrown/ when editing files in the same directory

" remove trailing whitespace
noremap :rtw :%s/\s\+$//e<CR>

" use visual-block instead of visual as default, vv will enter visual mode
nnoremap v <C-v>

"if exists(":Tabularize")
"  vmap <Leader>a= :Tabularize /=<CR>
"  vmap <Leader>a: :Tabularize /:\zs<CR>
"  nmap <Leader>a= :Tabularize /=<CR>
"  nmap <Leader>a: :Tabularize /:\zs<CR>
"endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on
syntax enable
set background=dark
" colorscheme 256-grayvim
" colorscheme distinguished
colorscheme brown
colorscheme mango

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhiteSpace '\s\+$'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow filetype plugins, changes to default indent
" filetype plugin indent on

"autocmd filetype javascript set shiftwidth=2
set omnifunc=syntaxcomplete#Complete
"autocmd filetype html set shiftwidth=2
"autocmd filetype python set expandtab
au BufNewFile,BufRead *.ejs set filetype=html
autocmd FileType javascript noremap <buffer>  <C-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <C-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <C-f> :call CSSBeautify()<cr>
autocmd FileType javascript noremap <buffer>=  :call JsBeautify()<cr>
autocmd FileType html noremap <buffer>=  :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer>=  :call CSSBeautify()<cr>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
