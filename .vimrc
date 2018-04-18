call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

 " Unmanaged plugin (manually installed and updated)

"colorscheme
Plug 'ajmwagar/vim-deus'

"statusLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-signify'


Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-smooth-scroll'
 " Initialize plugin system
Plug 'myhere/vim-nodejs-complete'
Plug 'Shougo/neocomplcache.vim'
Plug 'suan/vim-instant-markdown'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
call plug#end()



let mapleader = "," 



" NerdTree
let NERDTreeShowLineNumbers=1
let NERDTreeShowLineNumbers=1
let NERDTreeshowHidden=1
let NERDTreeShowBookmarks=1
" shift+i切换隐藏文件



" airline 配置
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
set laststatus=2 
set t_Co=256
let g:airline_theme='atomic'

"切换buffer 快捷键映射"
nnoremap <LEADER>n :bn<CR>
nnoremap <LEADER>p :bp<CR>
colorscheme deus

set relativenumber
set nu
set shortmess=atI
syntax on
set nocompatible
set nobackup
set confirm
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoread
set autoindent "自动对齐
set smartindent "智能缩进
set hlsearch "高亮查找匹配
set showmatch " 显示匹配
set ruler " 显示标尺
set showcmd " 显示输入的命令
set cursorcolumn
set cursorline
highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236

" 被分割窗口显示空白
set fillchars=vert:/
set fillchars=stl:/
set fillchars=stlnc:/




" NeoComplCache ------------------------------
" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make
" it play nice)
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'
" <TAB>: completion.
inoremap <expr><SPACE> pumvisible() ? "\<C-n>" : "\<SPACE>"
" Define keyword.

if !exists('g:neocomplcache_keyword_patterns')
let g:neocomplcache_keyword_patterns = {}
endif

let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()






" Vim-markdown ------------------------------
" Disabled automatically folding
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1
" Vim-instant-markdown -----------------
" If it takes your system too much, you can specify
" let g:instant_markdown_slow = 1
" if you don't want to manually control it
" you can open this setting
" and when you open this, you can manually trigger preview
" via the command :InstantMarkdownPreview
let g:instant_markdown_autostart = 0





"limelight
"<Leader>l触发limelight功能
nmap <Leader>l :Goyo<CR>
xmap <Leader>l :Goyo<CR>
"进入goyo模式后自动触发limelight,退出后则关闭
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1






if &term =~ '256color'
"disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
