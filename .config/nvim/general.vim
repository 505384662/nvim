" general settings
syntax on
" --------------------------
" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","
" --------------------------
"
set number                      "Line numbers are good
" odd, cannot use coc when setting paste option
" set paste                       " set paste mode default
" --------------------------- neovim auto reload file from disk ----------------------------
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
"set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认-

set clipboard=unnamed           " Add clipboard support
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set modifiable                   "设置能修改缓冲区，便于telescope 上能把剪切板上的东西粘贴到缓冲区 
" set gcr=a:blnkon0              "Disable cursor blink
" guicursor settings
" highlight Cursor gui=reverse guifg=black guibg=#AAC689
" 相匹配成对的符号高亮，比如括号，花括号等。
" hi MatchParen ctermbg=Yellow guibg=lightblue
" hi MatchParen guifg=red guibg=#f8f8f8

" default guicursor
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"       \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"       \,sm:block-blinkwait175-blinkoff150-blinkon175
set gcr=i:ver25-blinkon5,v:blinkon1


" set ttimeoutlen=10            " key delay time
set novisualbell                "No sounds
set noerrorbells
set laststatus=2
set noshowmode
set cursorline                  " set cursorline, highlight current line.
set guifont=Consolas:h14:cANSI:qDRAFT
" set cursorcolumn              " set cursorline, highlight current column.
set mouse=v                     " to disable, use `set mouse-=v`.
set mousehide                   " hide the mouse cursor when typing.
set hidden
set vb
set ruler
set nowrap                     "Don't wrap lines
set linebreak                 "Wrap lines at convenient points
set spelllang=en_us
set fileformats=unix,dos
set report=0                    " always report number of lines changed
set shortmess=atI               " disable welcome page.
set t_ti= t_te=                 " after exit vim, show context on the terminal.
set showmatch
set matchtime=2
set nrformats=
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set ffs=unix,dos,mac            " Use Unix as the standard file type
set autochdir
set relativenumber number       " use relative line number inside of absolute line number.
" or:
set guifont=VictorMono_Nerd_Font:h13
" vim-gitgutter
set updatetime=500
" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

set completeopt=longest,menu
" 
" au FileType c,cpp,python,vim,go set textwidth=80
" set colorcolumn=81


" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

" Wildmenu completion {{{
set wildmenu
"set wildmode=list:longest
set wildmode=longest:full,full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=go/pkg                           " Go static files
set wildignore+=go/bin                           " Go bin files
set wildignore+=go/bin-vagrant                   " Go bin-vagrant files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set wildignorecase
set smartcase       " ...unless we type a capital

" =============vimdiff colour===================
hi DiffChange    guibg=white  guifg=blue
hi DiffText        guibg=white guifg=lightRed
hi DiffAdd        guibg=white guifg=magenta
hi DiffDelete   guibg=white guifg=blue 
