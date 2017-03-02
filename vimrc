" vim-plug setup
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim:w
"
" when running inside nvim make sure to call :CheckHealth
"
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
" Plug '~/dev/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive' " git
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'kchmck/vim-coffee-script', { 'for': ['ruby', 'rails', 'coffee']}
"javascript
Plug 'jaxbot/syntastic-react', { 'for': ['javascript', 'javascript.jsx']}
Plug 'pangloss/vim-javascript'
" tags
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
" colorschemes
Plug 'schuster-rainer/vim-theme-purplehaze'
Plug 'dracula/vim'
Plug 'altercation/vim-colors-solarized'
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'schuster-rainer/vim-ultisnippets', { 'do': './install.sh'}
" devops
Plug 'hashivim/vim-terraform'
Plug 'MicahElliott/Rocannon', { 'for': ['ansible', 'yaml', 'yml', 'ansible_template']}
Plug 'pearofducks/ansible-vim', { 'for': ['ansible', 'yaml', 'yml', 'ansible_template'], 'do': 'python UltiSnips/generate.py'}
Plug 'ekalinin/Dockerfile.vim'
"tmux
Plug 'tpope/vim-tbone'
Plug 'benmills/vimux'
" Plug 'jgdavey/tslime.vim'
Plug 'christoomey/vim-tmux-navigator'

" lisp like
Plug 'hylang/vim-hy'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'

" elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'thinca/vim-ref'
if has('nvim')
    Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
endif
Plug 'mattn/webapi-vim'
Plug 'lucidstack/hex.vim'

" testing 
Plug 'janko-m/vim-test'

Plug 'fidian/hexmode'

if has('nvim')
    Plug 'bfredl/nvim-ipy', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'ivanov/vim-ipython'
endif


call plug#end()            " required
filetype plugin indent on    " required

" to install the plugins run :PluginInstall

let &runtimepath.=','.escape(fnamemodify('.',':p'), '\,')

if !has('gui')
    set fillchars+=vert:\ 
endif

set clipboard=unnamed

" generanl settings
set wildmenu     " show completions in Statusbar
set autoindent   " indent on newline and CTRL-O
set hidden       " change buffers (e.g. open an new one)
                 " without saving the current
set autowrite    " autowrite buffer on specific commands befe
                 " executing them

" UI settings

colorscheme Benokai

set cursorcolumn " highlight the current column
set cursorline   " highlight current line
set incsearch    " highlight as you type your search phrase
set hlsearch     " highlight searched for phrases
set laststatus=2 " always show the status line
set nolazyredraw " do not redraw while running macros
set linespace=0  " don't insert any extra pixel lines
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

if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

if has("gui_running")
  set guioptions=ce
  "              |||
  "              ||+-- e use simple dialogs rather than pop-ups
  "              |+-- c use GUI tabs, not console style tabs
  "              +-- m use toolbar
  if has("unix")
    if g:os == "Darwin"
      set guifont=Source\ Code\ Pro\ for\ Powerline:h13
    elseif g:os  == "Linux"
      set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete\ 13
    elseif g:os == "Windows"
      set guifont=Consolas:h15:cDEFAULT
    endif
  endif
endif


let mapleader=";"
let maplocalleader=","

" Commentary
nnoremap \\ :Commentary<CR>
vnoremap \\ :Commentary<CR>

" whitespace  bindings
autocmd FileType ruby,javascript,html setlocal expandtab shiftwidth=2 softtabstop=2

" vim-test
let test#strategy = 'vimux'
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

autocmd BufWritePost *_test.exs,*_spec.rb :TestNearest

let g:test#ruby#rspec#executable = 'rspec'

" elixir
let g:alchemist#elixir_erlang_src = "/usr/local/share/src"
" autocmd FileType elixir nnoremap <localleader>s :call VimuxRunCommand("clear; mix test --only line:" . line(".") . " " . bufname("%"))<CR>

" ansible
autocmd FileType yaml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.yml,*.yaml set ft=ansible
autocmd BufRead,BufNewFile *.j2 set ft=ansible_template
let g:ansible_attribute_highlight = "ad"
let g:ansible_extra_syntaxes = "sh.vim ruby.vim"
let g:ansible_name_highlight = 'd' " 'd'im or 'b'righten
let g:ansible_extra_keywords_highlight = 1
let g:rocannon_ansible_command = 'ansible-playbook -i inventory/local site.yml'
let g:rocannon_open_action = 'edit'
let g:rocannon_enable_maps = 1
let g:rocannon_bypass_colorscheme = 1
autocmd FileType ansible setlocal commentstring=#\ %s


" ctrlp
" let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
" let g:ctrlp_match_window = 'bottom,order:btt'
" let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
let g:ctrlp_regexp = 0
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*
nnoremap <leader>, :CtrlPBufTagAll<CR>
nnoremap <leader>. :CtrlPTag<CR>


if executable('rg')
    " --column: Show column number
    " --line-number: Show line number
    " --no-heading: Do not show file headings in results
    " --fixed-strings: Search term as a literal string
    " --ignore-case: Case insensitive search
    " --no-ignore: Do not respect .gitignore, etc...
    " --hidden: Search hidden files and folders
    " --follow: Follow symlinks
    " --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
    " --color: Search color options
    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
  set grepprg=rg\ --vimgrep
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob "!.git/*"'
  let g:ctrlp_use_caching = 0
endif

" The Silver Searcher
" if executable('ag')
"   " Use ag over grep
"   set grepprg=ag\ --nogroup\ --nocolor\ --hidden

"   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"   " ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" endif

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
" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-ultisnippets/UltiSnips'

" react
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" syntastic
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"easytags
let g:easytags_auto_highlight = 0
" autocmd BufWritePost * exe ":UpdateTags"

"airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_powerline_fonts = 1
let g:airline_symbols.space = "\ua0"
let g:airline_theme='lucius'

" function! VimuxSlime()
"   call VimuxSendText(@v)
"   call VimuxSendKeys("Enter")
"  endfunction

" send visual to tmux
vmap <LocalLeader>vs "vy :call VimuxSendText(@v)<CR>

