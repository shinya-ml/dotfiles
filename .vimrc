call plug#begin()
Plug 'fatih/vim-go'
Plug 'cocopon/vaffle.vim'
Plug 'Yggdroot/indentLine'
Plug 'simeji/winresizer'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tomtom/tcomment_vim'
Plug 'Townk/vim-autoclose'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" auto complication (lsp)
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

let g:airline_theme='deus'

set tabstop=4
set expandtab
set softtabstop=0
set shiftwidth=4
set smarttab

set relativenumber

set title

set ambiwidth=double

set clipboard=unnamed

set laststatus=2

set list
set listchars=tab:>-,extends:<,precedes:<
highlight specialkey ctermfg=darkgray

set autoindent
set smartindent

if has("persistent_undo")
    set undodir=~/.undodir
    set undofile
endif

colorscheme palenight

noremap <s-h> ^
noremap <s-l> $
inoremap <C-j> <esc>
tnoremap <Esc> <C-\><C-n>
" quick run
nnoremap <Space>q :QuickRun<CR>
" vim-go
nnoremap <Space>i :GoImports<CR>
nnoremap <Space>e :GoIfErr<CR>
" vaffle
nnoremap <Space>v :Vaffle<CR>
