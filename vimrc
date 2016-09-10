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
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive' " git
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" open files with line numbers and jump to them .i.e.  myfile.vim:20
Plug 'bogado/file-line'
" ruby
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
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
set nonumber      " NOTE: turn off line quickfix = 1

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


" RSpec.vim
map <Leader>t :call RunCurrentSpecFile()<CR
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
"let g:rspec_command = "Dispatch rspec {spec}"


" Ruby bindings
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2
