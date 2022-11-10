"set nocompatible

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" HTML
Plugin 'othree/html5.vim'

" React native snippet
Plugin 'tellijo/vim-react-native-snippets'

Plugin 'scrooloose/syntastic'

Plugin 'thosakwe/vim-flutter'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Async syntax checking
Plugin 'dense-analysis/ale'

" Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'BjRo/vim-extest'
Plugin 'mhinz/vim-mix-format'
Plugin 'mmorearty/elixir-ctags'

Plugin 'Shougo/deoplete.nvim'
Plugin 'elmcast/elm-vim'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'junegunn/fzf.vim'

Plugin 'ervandew/supertab'
"Plugin 'godlygeek/csapprox'
Plugin 'gregsexton/gitv'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mileszs/ack.vim'

Plugin 'plasticboy/vim-markdown'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'esneider/YUNOcommit.vim'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'cocopon/iceberg.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'arcticicestudio/nord'
Plugin 'junegunn/seoul256.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'bluz71/vim-moonfly-colors'
Plugin 'mhartington/oceanic-next'
Plugin 'voronianski/oceanic-next-color-scheme'
Plugin 'flazz/vim-colorschemes'
Plugin 'sjl/badwolf'
Plugin 'tpope/vim-vividchalk'
Plugin 'rakr/vim-one'
Plugin 'sainnhe/edge'

" JSX
"Plugin 'mtscout6/vim-cjsx'
"Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'MaxMEllon/vim-jsx-pretty'

" Themes
Plugin 'joshdick/onedark.vim'
Plugin 'challenger-deep-theme/vim', { 'name': 'challenger_deep'  }
Plugin 'crusoexia/vim-monokai'
Plugin 'w0ng/vim-hybrid'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'ajh17/spacegray.vim'
Plugin 'morhetz/gruvbox'
Plugin 'trevordmiller/nova-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'othree/yajs.vim'
Plugin 'sainnhe/vim-color-forest-night'

"Minimap
Plugin 'wfxr/minimap.vim'


" Erlang
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-erlang/vim-erlang-omnicomplete'


call vundle#end()            " required
filetype plugin indent on    " required

"Syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '$(npm bin)/eslint'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nnoremap <Leader>h :SyntasticCheck<CR>

set re=0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let mapleader = ","

let g:jsx_ext_required = 0

let g:limelight_conceal_ctermfg = 1

let g:ackprg = 'ag --nogroup --nocolor --column'

let g:airline#extensions#branch#vcs_checks = ['untracked']

let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"

let g:nova_transparent = 1
let g:hybrid_custom_term_colors = 1
let base16colorspace=256

set ruler
set ttyfast
set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=5
set showmode
set showcmd
set hidden
set norelativenumber
set cursorline

" Wildmenu completion "
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"

set number
set incsearch
set autoindent
set vb t_vb= "
set showmatch
set hlsearch
set novisualbell
set ignorecase
set smartcase

" Make Vim to handle long lines nicely.
set wrap
set textwidth=180
set formatoptions=qrn1

" Dictionary path, from which the words are being looked up.
set dictionary=/usr/share/dict/cracklib-small

set keywordprg=google

" MAPPINGS
"
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-\> :BufExplorer<CR>
silent! map <F3> :NERDTreeFind<CR>
nnoremap <silent> <C-p> :FZF<CR>
nmap <C-f>j :%!python -m json.tool<CR>
vnoremap <silent><Leader>c :'<,'>w !xclip -selection clipboard<CR><CR>
vnoremap <silent><Leader>y "yy <Bar> :call system('xclip', @y)<CR>
nnoremap gp :silent %!prettier --stdin-filepath %<CR>
" Get Rid of stupid Goddamned help keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au BufNewFile,BufRead *.erl
  \ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |
	\ set textwidth=79 |
	\ set expandtab |
	"\ set autoindent |
	\ set fileformat=unix |
	\ set foldmethod=syntax |
	\ set colorcolumn=100
" Clear last search highlighting
nnoremap <Space> :noh<cr>

" Naviagations using keys up/down/left/right
" Disabling default keys to learn the hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap <leader>c "+y
nnoremap <leader>p "+p
vnoremap <leader>c "+y
vnoremap <leader>p "+p

" quit
nnoremap <leader>q :q<CR>

" delete buffer
nnoremap <leader>b :bd<CR>

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <leader>g :Gstatus<CR>gg<c-n>
nnoremap <leader>d :Gdiff<CR>
set diffopt=vertical
set mouse=a

" FZF
let g:fzf_layout = { 'down': '~50%' }
nnoremap <leader>t :FZF<CR>
nnoremap <leader><Space> :Buffers<CR>
vnoremap <leader><Space> :Buffers<CR>

"nnoremap <leader>html :-1read $HOME/.vim/snippets/.skeleton.html<CR>3jwf>a

" De-fuckify syntax hilighting
"nnoremap <F3> :syn sync fromstart<CR>
set pastetoggle=<leader>x

" Editing vimrc
nmap <leader>v :source $MYVIMRC<CR>
nmap <leader>e :edit $MYVIMRC<CR>


"Buffer stuff -------------------------{{{
"Switch between buffers using ,,
nnoremap <leader>,  :b#<CR>

"New buffer with new
nnoremap <leader>n  :new<Space>

"Close a tab with bd
"nnoremap <leader>bd  :bdelete<CR>
"}}}

nmap <leader>ag <Esc>:Ack!

"nerd-tree
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>


"Save quicker with <leader>s - saves all buffers
nnoremap <leader>s :wa<CR>
"Switch between windows in the same tab -------------------------{{{
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
"}}}

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
"set ls=2 " always show status line

filetype plugin on

" ELM
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0
au FileType elm nnoremap <leader>. :ElmShowDocs<CR>
au FileType elm nnoremap <leader>.. :ElmMake<CR>

" Elixir
let g:mix_format_on_save = 1

" ALE
let g:elm_setup_keybindings = 1

let g:ale_sign_error = '▶'
let g:ale_sign_warning = '▶'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
"ale error_symbol
"let airline#extensions#ale#error_symbol = '❌'

"ale warning_symbol
"let airline#extensions#ale#warning_symbol = '⚠️ '

let g:javascript_plugin_jsdoc = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fixers = {
\'javascript': ['eslint', 'prettier'],
\'html': ['prettier'],
\'elixir': ['mix_format'],
\}
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
nnoremap <leader>f :ALEFix<cr>
"Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>
"au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:ale_linters = {
\   'javascript': ['eslint', 'prettier'],
\   'elm': ['make'],
\   'elixir': ['credo'],
\}

let g:everforest_background = 'hard'
"let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1
"let g:everforest_cursor = 'green'
"let g:everforest_current_word = 'bold'

set guifont=DroidSansMono\ Nerd\ Font\ 12
"let g:airline_left_sep = "\ue0b8"
"let g:airline_right_sep = "\ue0ba"
"let g:lightline = {'colorscheme' : 'everforest'}
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#error_symbol = ''
let g:airline#extensions#ale#warning_symbol = ''
"let g:airline#extensions#ale#error_symbol = '❌'
"let g:airline#extensions#ale#warning_symbol = '⚠️ '

"let g:airline_solarized_bg='dark'
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"let g:solarized_degrade = 0
"let g:solarized_bold = 0
"let g:solarized_contrast = "high"
"let g:solarized_visibility = "high"
"let g:airline_theme='simple'
"let g:airline_theme='luna'
let g:airline_theme='serene'
"let g:airline_theme='everforest'
"let g:airline_theme='oceanicnext'
"let g:airline_mode_map = {'__':'-','c':'COMMAND','i':'INSERT','ic':'I','ix':'I','n':'NORMAL','multi':'MULTI','ni':'N','no':'N','R':'R','Rv':'R','s':'S','S':'S','':'S','t':'T','v':'VISUAL','V':'V'}
"let g:airline_section_z = '%3p%% %3l/%L:%3v'
"let g:airline_section_y = ''
"let g:airline_section_x = ''
"let g:airline_section_b = ''
"let g:molokai_original = 1
"let g:rehash256 = 1
"let g:seoul256_background = 233

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:solarized_termcolors=256
set background=dark
syntax enable

"Folding
set foldlevelstart=20
set foldlevel=20
set foldmethod=manual

set backspace=indent,eol,start

"Html
"autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags
"au FileType css set ofu=csscomplete#CompleteCSS

"vim-obsess settings
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

"expand %% to curent full path
cabbr <expr> %% expand('%:p:h')
set path==**         " gf rulez
"let g:moonflyCursorColor = 1
"let g:moonflyTerminalColors = 0
"let g:moonflyTransparent = 1
"let g:moonflyUndercurls = 1


"let g:edge_style = 'neon'
"let g:edge_disable_italic_comment = 0

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" =========== Gvim Settings =============
" Removing scrollbars
if has("gui_running")
    colors onedark
    set guitablabel=%-0.12t%M
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions+=a
    set guioptions-=m
    set listchars=tab:▸\ ,eol:¬         " Invisibles using the Textmate style

    set guifont=Fira\ Code\ Retina\ 18
    if has("gui_gtk2")
        set guifont=Fira\ Code\ Retina\ 13
    elseif has("gui_macvim")
        set macligatures
        set guifont=Fira\ Code\ Retina:h18
    elseif has("gui_win32")
        set guifont=Source\ Code\ Pro:h13
    endif
else
    set t_Co=256
    "set termguicolors
    "colorscheme papercolor
    "colorscheme onedark
    "colorscheme molokai
    "colorscheme spacegray
    "colorscheme gruvbox
    "colorscheme nova
    "colorscheme iceberg
    colorscheme nord
    "colorscheme seoul256
    "colorscheme hybrid
    "colorscheme base16-default-dark
    "colorscheme moonfly
    "colorscheme OceanicNext
    "colorscheme wombat
    "colorscheme badwolf
    "colorscheme vividchalk
    "colorscheme one
    "colorscheme solarized
    "colorscheme edge
    "colorscheme space-vim-dark
    "colorscheme tomorrow
    "colorscheme everforest
endif

"Credit joshdick
""Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
""(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)

"if (empty($TMUX))
  "if (has("nvim"))
    ""For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  "endif
  ""      "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  ""        "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  ""          " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  "if (has("termguicolors"))
    "set termguicolors
  "endif
"endif


" Source the vimrc file after saving it
"autocmd bufwritepost .vimrc source ~/.vimrc


" disable visual bell
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
" ========== END Gvim Settings ==========
"
"Getting tired of swap files
set nobackup
set nowritebackup
set noswapfile
set synmaxcol=300

"highlight PmenuSel ctermfg=black ctermbg=white guibg=white
"highlight Pmenu ctermbg=blue guibg=blue

function! StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

autocmd BufWritePre * :call StripTrailingWhitespaces()
let &t_ut=''
" General colors
if has('gui_running') || has('nvim')
    hi Normal 		guifg=#f6f3e8 guibg=#242424
else
    " Set the terminal default background and foreground colors, thereby
    " improving performance by not needing to set these colors on empty cells.
    hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
    let &t_ti = &t_ti . "\033]10;#f6f3e8\007\033]11;#242424\007"
    let &t_te = &t_te . "\033]110\007\033]111\007"
endif

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
