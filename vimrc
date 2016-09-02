runtime bundle/vim-pathogen/autoload/pathogen.vim

" dependencies 
" sudo pip install python-redmine for a certain Ultisnip snippet
" ctags
" in bundle/YouCompleteMe run ./install.py with arguments

set nocompatible " explicitly get out of vi-compatible mode
execute pathogen#infect()

filetype plugin indent on " load filetype plugins/indent settings
filetype plugin on " load filetype plugins
syntax on " syntax highlighting on

" install a clipboardtool like xsel, :help clipboard
set clipboard=unnamedplus

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
set number " NOTE: turn off line quickfix = 1
set relativenumber " show numbers 1-10  below and above current

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

"easytags
let g:easytags_async=1
set tags=./.tags;,~/.vimtags


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

" CtrlP
" tjump
let g:ctrlp_tjump_only_silent = 1
let g:ctrlp_tjump_skip_tag_name = 1

" Global Mappings
" space / shift-space scroll in normal mode
" noremap <S-space> <C-b>
" noremap <space> <C-f>
map <Left> <ESC>:bp<RETURN>
map <Right> <ESC>:bn<RETURN>
map <Up> <ESC>:NERDTreeToggle<RETURN>
map <Down> <ESC>:TlistToggle<RETURN>
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
set showmode
let maplocalleader = ","
let mapleader = ";"
imap <leader>e <Esc>
map <leader>m :make <CR>
" inoremap <Esc> <Esc>`^
" write file with sudo
noremap <Leader>W :w !sudo tee % > /dev/null
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>
" toggle relative line numbers
nnoremap <silent> <leader>N :setlocal relativenumber!<cr>


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

" Coffee-Script
autocmd FileType coffee setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType html setlocal expandtab shiftwidth=2 softtabstop=2

" Perl
au BufRead,BufNewFile *.pl setf perl6

" Ruby
" ruby standard 2 spaces, always
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2 
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2 
" au BufRead,BufNewFile *.rb,*.rhtml,Gemfile,Gemfile.lock set shiftwidth=2
" au BufRead,BufNewFile *.rb,*.rhtml,Gemfile,Gemfile.lock set softtabstop=2
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>t <ESC>:Rake<CR>
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>s <ESC>:.Rake<CR>
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>a <ESC>:Rake spec<CR>
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>c <ESC>:Econtroller<CR>
au BufRead,BufNewFile *.rb noremap <LOCALLEADER>v <ESC>:Eview<CR>

" xml
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" reStructuredText
au BufNewFile,BufRead,BufEnter   *.rst    setlocal spell    spelllang=en_gb

" lldb.nvim / C/C++

au FileType c,cpp vmap <F2> <Plug>LLStdInSelected
au FileType c,cpp nmap <F3> <Plug>LLBreakSwitch
au FileType c,cpp nnoremap <F4> :LLstdin<CR>
au FileType c,cpp nnoremap <F5> :LLmode debug<CR>
au FileType c,cpp nnoremap <S-F5> :LLmode code<CR>
au FileType c,cpp nnoremap <F8> :LL continue<CR>
au FileType c,cpp nnoremap <S-F8> :LL process interrupt<CR>
au FileType c,cpp nnoremap <F9> :LL print <C-R>=expand('<cword>')<CR>
au FileType c,cpp vnoremap <F9> :<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>
au FileType c,cpp noremap <F6> :LL step<CR>
au FileType c,cpp noremap <F7> :LL stepi<CR>

au FileType c,cpp nnoremap <LOCALLEADER>h :LL help 
" jump to line
au FileType c,cpp nnoremap <LOCALLEADER>j :LL j <C-r>=line('.')<CR><CR>
au FileType c,cpp nnoremap <LOCALLEADER>bt :LL bt<CR>
au FileType c,cpp nnoremap <LOCALLEADER>bs <Plug>LLBreakSwitch
au FileType c,cpp nnoremap <LOCALLEADER>b :LL b

" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" DevIcons
let g:WebDevIconsNerdTreeGitPluginForceValign=1




" GUI
if has("gui_running")
  colorscheme purplehaze
  set columns=85 " perfect size for me
  if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
      set guifont=Sauce\ Code\ Pro
    elseif s:uname =~ "ubuntu"
      set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete\ 13
    endif
  else
    " (probably Windows)
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


" ultisnips
let g:ultisnips_python_style="doxygen"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Enhanced C++ snytax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
