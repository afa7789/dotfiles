" plugins"  
call plug#begin('~/.vim/plugged')

" color
Plug 'NLKNguyen/papercolor-theme'

" vim-go
Plug 'fatih/vim-go'

" coc is a client for lps , programming language server
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" File Explorer
Plug 'scrooloose/nerdtree'

" tagbar
Plug 'majutsushi/tagbar'

" Fuzzy Finder
Plug 'junegunn/fzf'

" vim-solidity syntax for solidity
Plug 'tomlion/vim-solidity'

" multiple cursors, as sublime or code
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" colors
"  
set t_Co=256
set background=dark
colorscheme PaperColor

filetype on "detect files based on type
filetype plugin on "when a file is edited it's plugin file is loaded if there is one for it.
filetype indent on "maintain indentation   
syntax on

set path+=**

set clipboard+=unnamedplus

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.jpeg,*.xcf

set number
set linebreak
set ruler

set autoindent
set smartindent
set smarttab
set expandtab

set smartcase
set ignorecase

set nobackup
set nowrap
set nocompatible

set hlsearch
set incsearch

set showmode
set showmatch
set showcmd

set history=1000
set shiftwidth=4
set tabstop=4
set softtabstop=4
set scrolloff=10
set background=dark

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
