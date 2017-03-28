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
" No longer needed! neovim and tmux with iterm support true color
" see termguicolors https://deductivelabs.com/en/2016/03/using-true-color-vim-tmux/
" Plug 'godlygeek/csapprox'
Plug 'kien/ctrlp.vim'
Plug 'ivalkeen/vim-ctrlp-tjump'
" ctrlp
" let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
" let g:ctrlp_match_window = 'bottom,order:btt'
" let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
let g:ctrlp_regexp = 0
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*
nnoremap <leader>, :CtrlPBufTagAll<CR>
nnoremap <leader>. :CtrlPTag<CR>
" use fzf instead
" let g:loaded_ctrlp = 1
" nnoremap <C-p> :Files<CR>
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/syntastic'
" Plug 'mtscout6/syntastic-local-eslint.vim'
let g:syntastic_javascript_checkers = ['yarn run eslint_d']
let g:syntastic_javascript_eslint_exec = "yarn run eslint_d"
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
" Plug '~/dev/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'

Plug 'tpope/vim-fugitive' " git
" open files with line numbers and jump to them .i.e.  myfile.vim:20
Plug 'bogado/file-line'
" ruby
Plug 'tpope/vim-rake', { 'for': ['ruby','rails'] }
Plug 'tpope/vim-rails', { 'for': ['ruby','rails'] }
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'rails'] }
Plug 'thoughtbot/vim-rspec', { 'for': ['ruby', 'rails']}
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'rails']}
Plug 'kchmck/vim-coffee-script', { 'for': ['ruby', 'rails', 'coffee']}
Plug 'alexgenco/neovim-ruby'
"javascript
Plug 'jaxbot/syntastic-react', { 'for': ['javascript', 'javascript.jsx']}
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'moll/vim-node'
Plug 'flowtype/vim-flow'

" tags
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
" colorschemes
Plug 'schuster-rainer/vim-theme-purplehaze'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'dracula/vim'
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'zcodes/vim-colors-basic'
Plug 'schuster-rainer/vim-ultisnippets', { 'do': './install.sh'}
" ui
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
" let g:airline_symbols.space = "\ua0"
" let g:airline_theme='tomorrow'
" let g:airline_theme='silver'
let g:airline_theme='lucius'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tmuxline#enabled = 0
" devops
Plug 'hashivim/vim-terraform'
Plug 'MicahElliott/Rocannon', { 'for': ['ansible', 'yaml', 'yml', 'ansible_template']}
Plug 'pearofducks/ansible-vim', { 'for': ['ansible', 'yaml', 'yml', 'ansible_template'], 'do': 'python UltiSnips/generate.py'}
Plug 'ekalinin/Dockerfile.vim'
"tmux
Plug 'tpope/vim-tbone'
Plug 'benmills/vimux'
" send visual to tmux
vmap <LocalLeader>vs "vy :call VimuxSendText(@v)<CR>
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
    Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
    Plug 'ivanov/vim-ipython'
endif

Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>" " Make the tabing on completion menu go from top to bottom
let g:SuperTabClosePreviewOnPopupClose = 1 " Close the preview when completion ends

" writing
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'beloglazov/vim-online-thesaurus'
Plug 'junegunn/vim-easy-align'
Plug 'robertbasic/vim-hugo-helper'
Plug 'cespare/vim-toml'

" diffing
Plug 'will133/vim-dirdiff'

" go
Plug 'fatih/vim-go'
Plug 'dgryski/vim-godef'

" doc
Plug 'Shougo/echodoc.vim'

" saving
Plug 'https://github.com/907th/vim-auto-save'
let g:auto_save = 1
let g:auto_save_write_all_buffers = 1

Plug 'https://github.com/edkolev/tmuxline.vim'

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

" highlight Normal ctermfg=251 ctermbg=235

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

if has("termguicolors")
    set termguicolors
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
let test#filename_modifier = ':.'
" let test#ruby#minitest#file_pattern = '_spec\.rb'
let test#javascript#mocha#file_pattern = '__NULL__'
let test#javascript#jest#file_pattern = '\.test\.js'
" let test#javascript#runner = 'yarn run test'
let g:test#runner_commands = ['Minitest', 'RSpec', 'Jest']
let test#ruby#minitest#options = '--verbose --rg'
" let g:test#ruby#rspec#executable = 'bundle exec rails '
let g:test#ruby#rspec#options = {
            \ 'nearest': '--format documentation --color',
            \ 'file':    '--format documentation --color --fail-fast',
            \}

nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

autocmd BufWritePost *_test.exs,*_spec.rb :TestNearest

" function! VagrantTransform(cmd) abort
"     let vagrant_project = get(matchlist(s:cat('Vagrantfile'), '\vconfig\.vm.synced_folder ["''].+[''"], ["''](.+)[''"]'), 1)
"     return 'vagrant ssh --command '.shellescape('cd '.vagrant_project.'; '.a:cmd)
" endfunction

" let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
" let g:test#transformation = 'vagrant'

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

elseif  executable('ag')
    "The Silver Searcher
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor\ --hidden

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


" let g:UltiSnipsExpandTrigger="<c-h>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEnableSnipMate=0 " use UltiSnips snippets
" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-ultisnippets/UltiSnips'

" react
let g:jsx_ext_required = 1 " Allow JSX in normal JS files


"easytags
let g:easytags_async = 1
let g:easytags_auto_highlight = 0
" autocmd BufWritePost * exe ":UpdateTags"
set tags=./tags;
let g:easytags_dynamic_files = 1
let g:easytags_auto_highlight = 0
let g:easytags_languages = {
            \   'javascript': {
            \     'cmd': "jsctags",
            \	    'args': [],
            \	    'fileoutput_opt': '-f',
            \	    'stdout_opt': '-f-',
            \	    'recurse_flag': '-R'
            \   }
            \}
"find . -type f -iregex ".*\.js$" -exec jsctags {} -f \; | sed '/^$/d' | sort > tags

" function! VimuxSlime()
"   call VimuxSendText(@v)
"   call VimuxSendKeys("Enter")
"  endfunction


"go
let g:godef_same_file_in_same_window=1


" javascript
" command Jest Dispatch jest
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
" vim-jsx-pretty
let g:vim_jsx_pretty_colorful_config = 0
let g:vim_jsx_pretty_enable_jsx_highlight = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_ignore_case = 1

call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#set('ultisnips', 'rank', 1000)

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.javascript = '[^. *\t]\.\w*'
let g:echodoc_enable_at_startup = 1
autocmd CompleteDone * pclose!

" Don't map any tabs, I'll do it later
let g:UltiSnipsExpandTrigger = '<NOP>'
let g:UltiSnipsJumpForwardTrigger = '<NOP>'
let g:UltiSnipsJumpBackwardTrigger = '<NOP>'
let g:SuperTabMappingForward = '<NOP>'
let g:SuperTabMappingBackward = '<NOP>'
let g:SuperTabMappingTabLiteral = 'C-TAB>'
" Don't unmap my mappings
let g:UltiSnipsMappingsToIgnore = [ "SmartTab", "SmartShiftTab" ]

" Make <CR> smart
let g:ulti_expand_res = 0
function! Ulti_ExpandOrEnter()
  " First try to expand a snippet
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res
    " if successful, just return
    return ''
  elseif pumvisible()
    " if in completion menu - just close it and leave the cursor at the
    " end of the completion
    return deoplete#mappings#close_popup()
  else
    " otherwise, just do an "enter"
    return "\<return>"
  endif
endfunction
inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>

" Enable tabbing and shift-tabbing through list of results
function! g:SmartTab()
  if pumvisible()
    return SuperTab("n")
  else
    call UltiSnips#JumpForwards()
    if g:ulti_jump_forwards_res == 0
      return SuperTab("n")
    endif
    return ''
  endif
endfunction
inoremap <silent> <tab> <C-R>=g:SmartTab()<cr>
snoremap <silent> <tab> <Esc>:call g:SmartTab()<cr>


function! g:SmartShiftTab()
  if pumvisible()
    return SuperTab("p")
  else
    call UltiSnips#JumpBackwards()
    if g:ulti_jump_backwards_res == 0
      return SuperTab("p")
    endif
    return ''
  endif
endfunction
inoremap <silent> <s-tab> <C-R>=g:SmartShiftTab()<cr>
snoremap <silent> <s-tab> <Esc>:call g:SmartShiftTab()<cr>


let g:enable_bold_font = 1
set background=dark
colorscheme material-theme

