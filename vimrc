set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.k
Plugin 'kergoth/vim-bitbake'
Plugin 'godlygeek/csapprox'
Plugin 'schuster-rainer/vim-theme-purplehaze'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'kien/ctrlp.vim'
Plugin 'bogado/file-line'

call vundle#end()            " required
filetype plugin indent on    " required

" to install the plugins run :PluginInstall


" generanl settings
set wildmenu 	" show completions in Statusbar
set autoindent 	" indent on newline and CTRL-O
set hidden 	" change buffers (e.g. open an new one)
		" without saving the current
set autowrite	" autowrite buffer on specific commands befe
		" executing them
		
" UI settings

colorscheme purplehaze

set cursorcolumn " highlight the current column
set cursorline	 " highlight current line
set incsearch 	 " highlight as you type your search phrase
set hlsearch 	 " highlight searched for phrases
set laststatus=2 " always show the status line
set nolazyredraw " do not redraw while running macros
set linespace=0  " don't insert any extra pixel lines 
    		 " betweens rows
set nolist 	 " hide unprintable chars. see settings below (listchars)
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< " show whitespace
set list
set matchtime=5   " how many tenths of a second to blink 
                  " matching brackets for
set nostartofline " try leaving the cursor in the same column
		  " when moving rows
set nonumber 	  " NOTE: turn off line quickfix = 1

set report=2 	  " set to 0 to tell us when anything is changed via : commands
set shortmess=aOstT " shortens messages to avoid 
                    " 'press a key' prompt
set showcmd 	  " show the command being typed, set off if terminal is slow
set showmatch     " show matching brackets

