syntax on
:set spell spelllang=de
:set nospell
set number
set tabstop=2
set shiftwidth=2
set guifont=SourceCodePro:h16
set autowrite
set smartindent
set autoindent
set foldenable
:set foldmethod=manual
:set switchbuf=useopen
filetype plugin on

set updatetime=1000 " Update Time for gitgutter

let g:pymode_rope = 0
let NERDTreeShowHidden=1

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_doc_popup_window = 1

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'patstockwell/vim-monokai-tasty'

" formatter
Plug 'Chiel92/vim-autoformat'

" git
Plug 'airblade/vim-gitgutter'

" python
Plug 'vim-python/python-syntax'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" plantuml
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'

" latex
Plug 'lervag/vimtex'

" rainbow colored curly brackes
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1

" languagetool
Plug 'dpelle/vim-LanguageTool'
:let g:languagetool_jar='$HOME/.languagetool/languagetool-commandline.jar'

call plug#end()

" vim
filetype plugin indent on
syntax enable

" languagetool
set nocompatible
filetype plugin on

" THEME
set background=dark
colorscheme vim-monokai-tasty
"

" change dir in nerdtree when using cd
augroup DIRCHANGE
	au!
	autocmd DirChanged global :NERDTreeCWD
augroup END

" CUSTOM BINDINGS
map <C-d> :NERDTreeToggle<CR>

nnoremap e w
nnoremap w b
map <C-f> :Autoformat<CR>

map q <Nop>
map b <Nop>
map a <Nop>
map J <Nop>
map U <Nop>
map s <Nop>
map S <Nop>
map <C-l> :vertical resize +5<CR>
map qb :bp<bar>sp<bar>bn<bar>bd<CR>

:map <C-m> :bnext<CR>
:map <C-n> :bprevious<CR>
"

