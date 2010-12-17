" Modeline and Notes {
"   vim: set foldmarker={,} foldlevel=0 spell:
"
"   This is my personal .vimrc, I don't recommend you copy it, just 
"   use the "   pieces you want(and understand!).  When you copy a 
"   .vimrc in its entirety, weird and unexpected things can happen.
"
"   If you find an obvious mistake hit me up at:
"   http://robertmelton.com/contact (many forms of communication)
" }

" Basics {
    set nocompatible " explicitly get out of vi-compatible mode
    syntax on " syntax highlighting on
" }

" General {
    filetype plugin indent on " load filetype plugins/indent settings
    filetype plugin on " load filetype plugins
    set noerrorbells " don't make noise
    set backup " make backup files
    set backupdir=~/backup " where to put backup files
    set clipboard+=unnamed " share windows clipboard
    set directory=~/tmp " directory to place swap files in
    set hidden " you can change buffers without saving
    " (XXX: #VIM/tpope warns the line below could break things)
    "set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    " set wildmode=longest,list
    set autowrite
    set history=1000
" }

" Vim UI {
    set cursorcolumn " highlight the current column
    set cursorline " highlight current line
    set incsearch " highlight as you type you 
                  " search phrase
    set hlsearch "highlight searched for phrases
    set laststatus=2 " always show the status line
    set nolazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines 
            " betweens rows
    set nolist " don't show real tabs
    set listchars=tab:>-,trail:- " show tabs and trailing 
    set matchtime=5 " how many tenths of a second to blink 
            " matching brackets for
    set nostartofline " leave my cursor where it was
    "set novisualbell " don't blink
    set number " turn on line numbers
    "set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid 
                " 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 5 lines at the size
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
     "              | | | | |  |   |      |  |     |    |
     "              | | | | |  |   |      |  |     |    + current 
     "              | | | | |  |   |      |  |     |       column
     "              | | | | |  |   |      |  |     +-- current line
     "              | | | | |  |   |      |  +-- current % into file
     "              | | | | |  |   |      +-- current syntax in 
     "              | | | | |  |   |          square brackets
     "              | | | | |  |   +-- current fileformat
     "              | | | | |  +-- number of lines
     "              | | | | +-- preview flag in square brackets
     "              | | | +-- help flag in square brackets
     "              | | +-- readonly flag in square brackets
     "              | +-- rodified flag in square brackets
     "              +-- full path to file in the buffer
" }

" Text Formatting / Layout {
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
              "should a tab be (see expandtab)
    set tabstop=8 " real tabs should be 8, and they will show with 
            " set list on
    set backspace=indent,eol,start
" }

" Folding {
     "set foldenable " Turn on folding
     "set foldmarker={,} " Fold C style code (only use this as default 
                         " if you use a high foldlevel)
     "set foldmethod=marker " Fold on the marker
     "set foldlevel=100 " Don't autofold anything (but I can still 
                       " fold manually)
     "set foldopen=block,hor,mark,percent,quickfix,tag " what movements
                                                       " open folds 
     "function SimpleFoldText() " {
     "    return getline(v:foldstart).' '
     "endfunction " }
     "set foldtext=SimpleFoldText() " Custom fold text function 
                                    " (cleaner than default)
 " }

" Plugin Settings {
    let maplocalleader=',' 
    let b:match_ignorecase = 1 " case is stupid
    let perl_extended_vars=1 " highlight advanced perl vars 
                               " inside strings

    "if has("python")
        "let $PYTHONPATH .= ':~/vimfiles/rope_plugin/rope:~/vimfiles/rope_plugin/ropemode:~/vimfiles/rope_plugin/ropevim'
        "source ~/vimfiles/rope_plugin/ropevim.vim

    " Haskell {
        let hs_highlight_delimiters = 1
        let hs_highlight_boolean = 1
        let hs_highlight_types = 1
        let hs_highlight_more_types = 1
        let hs_highlight_debug = 1
    "}
    
    " Clojure {
        let vimclojure#WantNailgun = 1
        let vimclojure#HighlightBuiltins = 1
        let vimclojure#ParenRainbow = 0
        let g:vimclojure#DynamicHighlighting = 1
            " }

        let g:perl6 = 'c:\rakudo\bin\perl6.exe'
    " TagList Settings {
        let Tlist_Auto_Open=0 " let the tag list open automagically
        let Tlist_Compact_Format = 1 " show small menu
        let Tlist_Ctags_Cmd = 'C:\shared\tools\ctags58\ctags.exe' " location of ctags
        let Tlist_Enable_Fold_Column = 0 " do show folding tree
        let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill 
                                        " yourself
        let Tlist_File_Fold_Auto_Close = 0 " fold closed other trees
        let Tlist_Sort_Type = "name" " order by 
        let Tlist_Use_Right_Window = 1 " split to the right side
                                        " of the screen
        let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)
                                 " read my functions
        " Language Specifics {
            " just functions and classes please
            let tlist_aspjscript_settings = 'asp;f:function;c:class' 
            " just functions and subs please
            let tlist_aspvbs_settings = 'asp;f:function;s:sub' 
            " don't show variables in freaking php
            let tlist_php_settings = 'php;c:class;d:constant;f:function' 
            " just functions and classes please
            let tlist_vb_settings = 'asp;f:function;c:class' 
        " }
    " }

    " Zencoding {
        let g:user_zen_settings = {
        \ 'php' : {
        \   'extends' : 'html',
        \   'filters' : 'c',
        \ },
        \ 'xml' : {
        \   'extends' : 'html',
        \ },
        \ 'haml' : {
        \   'extends' : 'html',
        \  },
        \ 'jinja' : {
        \   'extends' : 'html',
        \ }
        \}
    
    " }

 " }

" Mappings {
    " space / shift-space scroll in normal mode
    noremap <S-space> <C-b>
    noremap <space> <C-f>

    map <Right> <ESC>:bn<RETURN>
    map <Up> <ESC>:NERDTreeToggle<RETURN>
    map <Down> <ESC>:TlistToggle<RETURN>
    map <Left> <ESC>:bp<RETURN>

    
" }

" Autocommands {
    " Perl {
        au BufRead,BufNewFile *.pl setf perl6
    " }
    " Ruby {
        " ruby standard 2 spaces, always
        au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2 
        au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2 
    " }
    " Notes {
        " I consider .notes files special, and handle them differently, I
        " should probably put this in another file
        au BufRead,BufNewFile *.notes set foldlevel=2
        au BufRead,BufNewFile *.notes set foldmethod=indent
        au BufRead,BufNewFile *.notes set foldtext=foldtext()
        au BufRead,BufNewFile *.notes set listchars=tab:\ \ 
        au BufRead,BufNewFile *.notes set noexpandtab
        au BufRead,BufNewFile *.notes set shiftwidth=8
        au BufRead,BufNewFile *.notes set softtabstop=8
        au BufRead,BufNewFile *.notes set tabstop=8
        au BufRead,BufNewFile *.notes set syntax=notes
        au BufRead,BufNewFile *.notes set nocursorcolumn
        au BufRead,BufNewFile *.notes set nocursorline
        au BufRead,BufNewFile *.notes set guifont=Consolas:h12
        au BufRead,BufNewFile *.notes set spell
    " }
    au BufNewFile,BufRead *.ahk setf ahk
" }

" GUI Settings {
    if has("gui_running")
    " Basics {
        colorscheme purplehaze
        set columns=180 " perfect size for me
        
        if has('gui_gtk2')
            set guifont=Consolas\ 12" my favorite font
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
            set guifont=Consolas:h12:cDEFAULT 
        endif
        set guioptions=mce
        "              |||
        "              ||+-- use simple dialogs rather than pop-ups
        "              |+-- use GUI tabs, not console style tabs
        "              +-- use toolbar
        set lines=45 " perfect size for me
        set mousehide " hide the mouse cursor when typing
    " }
    else 
        colorscheme lucius 
    endif


    " Font Switching Binds {
        if has("gui_running")
            if has("unix")
                map <F8> <ESC>:set guifont=Consolas\ 8<CR>
                map <F9> <ESC>:set guifont=Consolas\ 12<CR>
                map <F10> <ESC>:set guifont=Consolas\ 16<CR>
            else
                map <F8> <ESC>:set guifont=Consolas:h8<CR>
                map <F9> <ESC>:set guifont=Consolas:h12<CR>
                map <F10> <ESC>:set guifont=Consolas:h16<CR>
            endif
       fi 
    " }
    endif
" }

