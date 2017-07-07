set nocompatible      " We're running Vim, not Vi!
set statusline=%{fugitive#statusline()}\ %<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
syntax on

set tags=./tags,./TAGS,tags,TAGS
set encoding=utf-8
set fileformats=unix,dos,mac

set softtabstop=2
set tabstop=2                     " Like emacs tab-width variable
set shiftwidth=2                  " Like emacs c-basic-offset variable
set expandtab                     " Use spaces, not tabs (optional)
set backspace=indent,eol,start    " Backspace through everything in insert mode"
set autoindent                    " Match indentation of previous line
set smartindent
set et
set backspace=2                   " make backspace work like most other apps"

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set showmatch                     " Show matching brackets/parenthesis
set hidden                        " Handle multiple buffers better.
set title                         " Set the terminal's title
set number                        " Show line numbers.
set ruler		                      " Show the cursor position all the time
set scrolloff=3
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wildignore+=*/node_modules/*,*/tmp/**,*.so,*.swp,*.zip,*~     " Stuff to ignore when tab completing (MacOSX/Linux)
set visualbell
set noerrorbells
set laststatus=2                  " Show the status line all the time

" performance
set ttyfast
set lazyredraw
set cursorline
" set relativenumber
set synmaxcol=200
set foldmethod=manual
" set foldmethod=indent

set undofile
set nobackup                      " Don't make a backup before overwriting a file.
set noswapfile
set history=50		                " Keep 50 lines of command line history
set clipboard=unnamed

" Searching/moving
set incsearch                     " Find as you type search
set hlsearch                      " Highlight search terms
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set gdefault

" Handle long lines correctly
"set wrap
set nowrap                        " Don't wrap lines
set linebreak
set textwidth=90
set formatoptions=qrn1
set colorcolumn=95

" Set list
set listchars=tab:▸\ ,eol:¬

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"nnoremap ; :
au FocusLost * :wa
inoremap jj <ESC>

let mapleader = ","
nnoremap <leader><space> :noh<cr>
" Strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>c :CtrlP<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader>g :GitGutterToggle<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
" I work with HTML often, so I have ,ft mapped to a “fold tag” function
nnoremap <leader>ft Vatzf
nnoremap <leader>it vat
nnoremap <leader>at vit
" I also work with Nick Sergeant and he likes his CSS properties sorted, so here’s a ,S mapping that sorts them for me
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
" This next mapping imitates TextMates Ctrl+Q function to re-hardwrap paragraphs of text
nnoremap <leader>q gqip
" I have a ,v mapping to reselect the text that was just pasted so I can perform commands (like indentation) on it
nnoremap <leader>v V`]
" This last mapping lets me quickly open up my ~/.vimrc file in a vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap / /\v
vnoremap / /\v

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

" Split windows
nnoremap <leader>W <C-w><C-v><C-l>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" YankRing
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
nnoremap <leader>y :YRShow<CR>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Substitute all occurrences of the word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" Finds and replaces in files based on the the current line.
" map <Leader>fr ^l"ayt/^v$h"byu:vsp<CR>:args `ag -l <C-R>a`<CR>:argdo %s<C-R>bge \| update<CR>
map <Leader>as :args `ag -l `<Left>
map <Leader>ado :argdo %s///ge \| update

" Same as above but asks before all the changes.
map <Leader>far ^l"ayt/^v$h"byu:vsp<CR>:args `ag -l <C-R>a`<CR>:argdo %s<C-R>bgce \| update<CR>
"--------------------------------------------

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-markdown'

" tmux
Plug 'jgdavey/vim-turbux'
Plug 'benmills/vimux'

" language
Plug 'vim-ruby/vim-ruby'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user' " Trigger by press var and vir
Plug 'mustache/vim-mustache-handlebars'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'jimenezrick/vimerl'
Plug 'rhysd/vim-crystal'

" tools
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
Plug 'vim-syntastic/syntastic', { 'on': 'SyntasticCheck' }
Plug 'godlygeek/tabular'
Plug 'Lokaltog/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'sickill/vim-pasta' " Pasting in Vim with indentation adjusted to destination context.
Plug 'Raimondi/delimitMate' " Automatic closing of quotes, parenthesis, brackets, etc.
Plug 'ervandew/supertab'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-scripts/matchit.zip'

" color theme
" Plug 'morhetz/gruvbox'
" Plug 'tomasr/molokai'
" Plug 'sickill/vim-monokai'
" Plug 'nanotech/jellybeans.vim'
" Plug 'endel/vim-github-colorscheme'
" Plug '29decibel/codeschool-vim-theme'
" Plug 'w0ng/vim-hybrid'
Plug 'dracula/vim'
call plug#end()

" *********************************************
" *           Plugin Customization            *
" *********************************************

" vim-markdown-preview
let vim_markdown_preview_github = 1

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1

let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

" extra rails.vim help
let g:rails_projections = {
      \ "app/uploaders/*_uploader.rb": {
      \   "command": "uploader",
      \   "template":
      \     ["class {camelcase|capitalize|colons}Uploader < "
      \      . "CarrierWave::Uploader::Base", "end"],
      \   "test": [
      \     "test/unit/{}_uploader_test.rb",
      \     "spec/models/{}_uploader_spec.rb"
      \   ],
      \   "keywords": "process version"
      \ },
      \ "app/policies/*_policy.rb": {
      \   "command": "policy",
      \   "template":
      \     ["class {camelcase|capitalize|colons}Policy < "
      \      . "CarrierWave::Uploader::Base", "end"],
      \   "test": [
      \     "test/unit/{}_policy_test.rb",
      \     "spec/models/{}_policy_spec.rb"
      \   ],
      \   "keywords": "process version"
      \ },
      \ "features/support/*.rb": {"command": "support"},
      \ "features/support/env.rb": {"command": "support"}}

" vim-ruby
" compiler ruby         " Enable compiler support for ruby
" let g:ruby_operators = 1
" let g:ruby_space_errors = 1
" let g:ruby_fold = 1
" let g:ruby_no_expensive = 0
" let g:ruby_minlines = 500
" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1

"# ctrlp.vim
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ -g ""'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" vimux
let g:VimuxHeight = "30"
let g:VimuxOrientation = "h"

" turbux
let g:turbux_command_test_unit = 'rails test'

" syntastic
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers=['eslint']
nnoremap <leader>e :SyntasticCheck<CR>

" Tidying whitespace
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>

if has("gui_running")
  set guioptions=-t
  set guifont=Hermit\ medium:h14
  " set guifont=Fira\ Code\ Retina:h14
  " set guifont=ProFontX:h13
endif

" colorscheme gruvbox
" colorscheme molokai
" colorscheme monokai
" colorscheme jellybeans
" colorscheme github
" colorscheme codeschool
" colorscheme hybrid
colorscheme dracula

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

if has("autocmd")
 " When editing a file, always jump to the last known cursor position.
 " Don't do it when the position is invalid or when inside an event handler
 " (happens when dropping a file on gvim).
 " Also don't do it when the mark is in the first line, that is the default
 " position when opening a file.
 autocmd BufReadPost *
       \ if line("'\"") > 1 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif

  augroup END

 " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml

  " run this command automatically when a file is saved
  " autocmd BufWritePre .vimrc,*.rb,*.erb,*.css,*.scss,*.html,*.py,*.js,*.coffee :call Preserve("%s/\\s\\+$//e")

  " inky & ecr
  autocmd BufRead,BufNewFile *.inky set filetype=html.eruby
  autocmd BufRead,BufNewFile *.ecr set filetype=html.eruby
endif
