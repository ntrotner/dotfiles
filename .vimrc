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

set updatetime=500 " Update Time for gitgutter


call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInstall coc-json
" :CocInstall coc-tsserver
" :CocInstall coc-eslint

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'lervag/vimtex'

call plug#end()

let g:coc_global_extensions = ['coc-tsserver']

" THEME
let g:airline_theme = "palenight"
set background=dark
colorscheme palenight
"

" change dir in nerdtree when using cd
augroup DIRCHANGE
    au!
    autocmd DirChanged global :NERDTreeCWD
augroup END

" CUSTOM BINDINGS
map <C-d> :NERDTreeToggle<CR>

" coc-tsserver
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

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

:map <C-m> :bnext<CR>
:map <C-n> :bprevious<CR>
"
