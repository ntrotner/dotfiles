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
" youcompleteme
Plug 'ycm-core/YouCompleteMe'

" theme
Plug 'NLKNguyen/papercolor-theme'

Plug 'preservim/nerdtree'

" formatter
Plug 'Chiel92/vim-autoformat'

" git
Plug 'airblade/vim-gitgutter'

" python
Plug 'vim-python/python-syntax'
let python_highlight_all = 1

" javascript
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" typescript
Plug 'leafgarland/typescript-vim'
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_auto_type_info = 1

" latex
Plug 'lervag/vimtex'
let g:vimtex_compiler_method = 'latexmk'    
let g:vimtex_compiler_latexmk = {    
       \ 'executable' : 'latexmk',    
       \ 'options' : [    
       \   '-pdf',    
       \   '-shell-escape',    
       \ ],    
       \}

" rainbow colored curly brackes
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1

" languagetool
Plug 'dpelle/vim-LanguageTool'
:let g:languagetool_jar='$HOME/.languagetool/languagetool-commandline.jar'


"theme

call plug#end()

" vim
filetype plugin indent on
syntax enable

" languagetool
set nocompatible
filetype plugin on

" THEME
set background=light
colorscheme PaperColor
let g:airline_powerline_fonts = 1
"

" change dir in nerdtree when using cd
augroup DIRCHANGE
	au!
	autocmd DirChanged global :NERDTreeCWD
augroup END

" CUSTOM BINDINGS
map <C-d> :NERDTreeToggle<CR>

nnoremap w b
map <C-f> :Autoformat<CR>

"switch spellcheck languages
let g:myLang = 0
let g:myLangList = [ "nospell", "de_de", "en_gb" ]
function! MySpellLang()
  "loop through languages
  let g:myLang = g:myLang + 1
  if g:myLang >= len(g:myLangList) | let g:myLang = 0 | endif
  if g:myLang == 0 | set nospell | endif
  if g:myLang == 1 | setlocal spell spelllang=de_de | endif
  if g:myLang == 2 | setlocal spell spelllang=en_gb | endif
  echo "language:" g:myLangList[g:myLang]
endf

map b :call MySpellLang()<CR>

map q :set invnumber<CR> 
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
