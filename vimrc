runtime bundle/vim-pathogen/autoload/pathogen.vim

set nocompatible " explicitly get out of vi-compatible mode
execute pathogen#infect()

filetype plugin indent on " load filetype plugins/indent settings
filetype plugin on " load filetype plugins
syntax on " syntax highlighting on


set autoindent
set noerrorbells " don't make noise
set clipboard+=unnamed " share windows clipboard
set hidden " you can change buffers (e.g. open an new one) 
       " without saving the current buffer
set wildmenu " turn on command line completion wild style
set autowrite
set history=1000

" UI
set nocursorcolumn " highlight the current column
set cursorline " highlight current line
set incsearch " highlight as you type your search phrase
set hlsearch "highlight searched for phrases
set laststatus=2 " always show the status line
set nolazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines 
    " betweens rows
set nolist " don't show real tabs
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< " show whitespace
set list
set matchtime=5 " how many tenths of a second to blink 
                " matching brackets for
set nostartofline " leave my cursor where it was
set nonumber " turn off line quickfix = 1

set report=0 " tell us when anything is changed via :...
set shortmess=aOstT " shortens messages to avoid 
                    " 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets
" set scrolloff=10 " Keep 10 lines (top/bottom) for scope
" set sidescrolloff=10 " Keep 5 lines at the size

" Text Formatting / Layout
set completeopt=menuone,preview 
set formatoptions=rq " Automatically insert comment leader on return, 
                     " and let gq format comments
set ignorecase " case insensitive by default
set infercase " case inferred by default
set smartcase " if there are caps, go case-sensitive
set expandtab " no real tabs please!
set shiftwidth=4 " auto-indent amount when using cindent, 
                 " >>, << and stuff like that
set softtabstop=4 " when hitting tab or backspace, how many spaces 
                  " should a tab be (see expandtab)
set tabstop=8 " real tabs should be 8, and they will show with 
              " set list on
set backspace=indent,eol,start
set nofoldenable " Turn off folding

let g:pyflakes_use_quickfix = 0

" Haskell
let hs_highlight_delimiters = 1
let hs_highlight_boolean = 1
let hs_highlight_types = 1
let hs_highlight_more_types = 1
let hs_highlight_debug = 1

" Clojure
let tlist_clojure_settings = 'lisp;f:function'


" TagList Settings
let Tlist_Auto_Open=0 " let the tag list open automagically
let Tlist_Compact_Format = 1 " show small menu
" let Tlist_Ctags_Cmd = 'D:\shared\tools\ctags58\ctags.exe' " location of ctags
let Tlist_Enable_Fold_Column = 0 " do show folding tree
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill 
                               " yourself
let Tlist_File_Fold_Auto_Close = 0 " fold closed other trees
let Tlist_Sort_Type = "name" " order by 
let Tlist_Use_Right_Window = 1 " split to the right side
                               " of the screen
let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)
                        " read my functions
" Language Specifics
" just functions and classes please
let tlist_aspjscript_settings = 'asp;f:function;c:class' 
" just functions and subs please
let tlist_aspvbs_settings = 'asp;f:function;s:sub' 
" don't show variables in freaking php
let tlist_php_settings = 'php;c:class;d:constant;f:function' 
" just functions and classes please
let tlist_vb_settings = 'asp;f:function;c:class' 

" Global Mappings
" space / shift-space scroll in normal mode
" noremap <S-space> <C-b>
" noremap <space> <C-f>
map <Left> <ESC>:bp<RETURN>
map <Right> <ESC>:bn<RETURN>
map <Up> <ESC>:NERDTreeToggle<RETURN>
map <Down> <ESC>:TlistToggle<RETURN>
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
let maplocalleader = ","



" Python
au BufRead,BufNewFile *.py noremap <LOCALLEADER>a <ESC>:Pytest file<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>0 :Pytest first<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>p :Pytest previous<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>n :Pytest next<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>e :Pytest error<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>s :Pytest session<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>f :Pytest function<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>m :Pytest method<CR>
au BufRead,BufNewFile *.py noremap <LOCALLEADER>c :Pytest class<CR>
au BufRead,BufNewFile *.py setlocal commentstring=#%s
au BufRead,BufNewFile *.py setlocal define=^\s*\\(def\\\\|class\\)

" Pymode
let g:pymode_options = 0
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 0
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_rope=0

"let g:low_complexity_fg = "#84D2AF"
"let g:low_complexity_bg = "#84D2AF"
"hi g:medium_complexity guifg=#F2DB8C guibg=#F2DB8C
"hi g:high_complexity guifg=#F0826E guibg=#F0826E
"kklet g:complexity_always_on = 1

" Coffee-Script
autocmd FileType coffee setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType html setlocal expandtab shiftwidth=2 softtabstop=2

" Perl
au BufRead,BufNewFile *.pl setf perl6

" Ruby
" ruby standard 2 spaces, always
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2 
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2 
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>t <ESC>:Rake<CR>
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>s <ESC>:.Rake<CR>
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>a <ESC>:Rake spec<CR>

" xml
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" reStructuredText
au BufNewFile,BufRead,BufEnter   *.rst    setlocal spell    spelllang=en_gb



" GUI
if has("gui_running")
    colorscheme purplehaze
    set columns=85 " perfect size for me
    if has('gui_gtk2')
        set guifont=Source\ Code\ Pro\ 13
    elseif has('gui_photon')
        set guifont=Consolas:s12,DejaVu\ Sans\ Monospace:s11
    elseif has('gui_kde')
        " the obsolete kvim
        " just make sure it works correctly if it hits our vimrc
        set guifont=DejaVu\ Sans\ Mono/12/-1/5/50/0/0/0/1/0
    elseif has('x11')
        " I'm guessing the following (other-X11 including GTK1)
        " please check, and correct if necessary.
        " On GTK1 (and maybe some others) you can use :set guifont=*
        " Replace by asterisks like here
        " to make it a little more general:
        set guifont=-*-dejavu-medium-r-normal-*-*-110-*-*-m-*-*
        " add another elseif here
        " if you want DejaVu on mac-without-x11
    else
        " not x11 (probably Windows)
        set guifont=Consolas:h15:cDEFAULT
    endif
    set guioptions=ce
    "              |||
    "              ||+-- e use simple dialogs rather than pop-ups
    "              |+-- c use GUI tabs, not console style tabs
    "              +-- m use toolbar
    " set lines=45 " perfect size for me
    set mousehide " hide the mouse cursor when typing
else
    colorscheme purplehaze
endif
" Font Switching Binds
if has("gui_running")
    if has("unix")
        map <F8> <ESC>:set guifont=Source\ Code\ Pro\ 8<CR>
        map <F9> <ESC>:set guifont=Source\ Code\ Pro\ 12<CR>
        map <F10> <ESC>:set guifont=Source\ Code\ Pro\ 16<CR>
    else
        map <F8> <ESC>:set guifont=Consolas:h9<CR>
        map <F9> <ESC>:set guifont=Consolas:h13<CR>
        map <F10> <ESC>:set guifont=Consolas:h15<CR>
    endif
endif



" ultisnips
let g:ultisnips_python_style="doxygen"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

