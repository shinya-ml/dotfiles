
call plug#begin()
Plug 'fatih/vim-go'
Plug 'cocopon/vaffle.vim'
Plug 'Yggdroot/indentLine'
Plug 'simeji/winresizer'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tomtom/tcomment_vim'
Plug 'cohama/lexima.vim'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" auto complication (lsp)
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

let g:tex_flavor="latex"

let g:airline_theme='deus'
" lspのhover非表示
let lsp_signature_help_enabled = 0
let g:UltiSnipsExpandTrigger="<tab>"

set noswapfile

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
set clipboard+=unnamed

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
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" template tex
autocmd! BufNewFile *slide.tex 0r $HOME/template/slide_tex.txt

autocmd! BufNewFile *paper.tex 0r $HOME/template/paper_tex.txt

autocmd! BufNewFile *diary.md 0r $HOME/template/diary_md.txt
