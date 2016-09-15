" for vim use
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" and nvim
"curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" vim/plug is installed into ~/.vim/autoload/
" alternatively, pass a path where plugins should be installed
call plug#begin('~/.vim/bundle')

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    " See http://valloric.github.io/YouCompleteMe/ for further options
    !./install.py --tern-completer
  endif
endfunction


" Keep Plugin commands between vundle#begin/end.k
" approximate to console colors from any colorscheme
Plug 'godlygeek/csapprox'
Plug 'kien/ctrlp.vim'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive' " git
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Plug 'ervandew/supertab'
" open files with line numbers and jump to them .i.e.  myfile.vim:20
Plug 'bogado/file-line'
" ruby
Plug 'tpope/vim-rake', { 'for': ['ruby','rails'] }
Plug 'tpope/vim-rails', { 'for': ['ruby','rails'] }
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'rails'] }
Plug 'thoughtbot/vim-rspec', { 'for': ['ruby', 'rails']}
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'rails']}
" ansible
Plug 'pearofducks/ansible-vim'
" colorschemes
Plug 'schuster-rainer/vim-theme-purplehaze'
Plug 'dracula/vim'
Plug 'schuster-rainer/vim-ultisnippets', { 'dir': '~/.vim/UltiSnips', 'do': './install.sh'}

call plug#end()            " required
filetype plugin indent on    " required


" to install the plugins run :PluginInstall


" generanl settings
set wildmenu     " show completions in Statusbar
set autoindent   " indent on newline and CTRL-O
set hidden       " change buffers (e.g. open an new one)
                 " without saving the current
set autowrite    " autowrite buffer on specific commands befe
                 " executing them

" UI settings

colorscheme dracula

set cursorcolumn " highlight the current column
set cursorline   " highlight current line
set incsearch    " highlight as you type your search phrase
set hlsearch     " highlight searched for phrases
set laststatus=2 " always show the status line
set nolazyredraw " do not redraw while running macros
set linespace=0  " don't insert any extra pixel lines
                 " betweens rows
set nolist       " hide unprintable chars. see settings below (listchars)
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< " show whitespace
set list
set matchtime=5   " how many tenths of a second to blink
                  " matching brackets for
set nostartofline " try leaving the cursor in the same column
                  " when moving rows
set number      " NOTE: turn off line quickfix = 1
set relativenumber " show numbers 1-10  below and above current

set report=2      " set to 0 to tell us when anything is changed via : commands
set shortmess=aOstT " shortens messages to avoid
                    " 'press a key' prompt
set showcmd       " show the command being typed, set off if terminal is slow
set showmatch     " show matching brackets

" Text Formatting / Layout
set completeopt=menuone,preview
set formatoptions=rq " Automatically insert comment leader on return,
                     " and let gq format comments
set ignorecase      " case insensitive by default
set infercase       " case inferred by default
set smartcase       " if there are caps, go case-sensitive
set expandtab       " no real tabs please!
set shiftwidth=4    " auto-indent amount when using cindent,
                    " >>, << and stuff like that
set softtabstop=4   " when hitting tab or backspace, how many spaces
                    " should a tab be (see expandtab)
set tabstop=8       " real tabs should be 8, and they will show with
                    " set list on
set backspace=indent,eol,start
set nofoldenable " Turn off folding

if has("gui_running")
  set guioptions=ce
  "              |||
  "              ||+-- e use simple dialogs rather than pop-ups
  "              |+-- c use GUI tabs, not console style tabs
  "              +-- m use toolbar
   if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin"
      set guifont=Source\ Code\ Pro\ for\ Powerline:h13
    elseif s:uname =~ "ubuntu"
      set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete\ 13
    endif
  else
    " (probably Windows)
    set guifont=Consolas:h15:cDEFAULT
  endif
endif

" RSpec.vim
map <Leader>t :call RunCurrentSpecFile()<CR
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
"let g:rspec_command = "Dispatch rspec {spec}"

" Commentary
nnoremap <localleader>\ :Commentary<CR>
vnoremap <localleader>\ :Commentary<CR>

" Ruby bindings
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_use_ultisnips_completer = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }


let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEnableSnipMate=0 " use UltiSnips snippets
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
