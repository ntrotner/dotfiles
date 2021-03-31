syntax on
set number
set tabstop=3
set shiftwidth=2
set guifont:Courier:h16
set smartindent
set autoindent
set foldenable
set tabpagemax=2
set switchbuf=usetab
filetype plugin on

autocmd vimenter * NERDTree
set updatetime=500 " Update Time for gitgutter


call plug#begin()

Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()

" THEME
let g:airline_theme = "palenight"
set background=dark
colorscheme palenight
"

" MARKDOWN SETTINGS
let g:mkdp_port = '27000'
"

" CUSTOM BINDINGS
map <C-d> :NERDTreeToggle<CR>


nnoremap e w
nnoremap w b
map q <Nop>
map b <Nop>
map a <Nop>
map J <Nop>
map U <Nop>
map s <Nop>
map S <Nop>
map qb :bp<bar>sp<bar>bn<bar>bd<CR>

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

:map <C-m> :bnext<CR>
:map <C-n> :bprevious<CR>
"
