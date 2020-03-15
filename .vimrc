
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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'thinca/vim-quickrun'
Plug 'lervag/vimtex'
Plug 'mattn/emmet-vim'
" auto complication (lsp)
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'ryanolsonx/vim-lsp-python', {'for' : 'python'}
call plug#end()
let g:UltiSnipsSnippetDirectories=['UltiSnips',$HOME.'/dotfiles/UltiSnips']
let g:tex_flavor="latex"
" LaTeX Quickrun
let g:tex_conceal=''
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '@line @pdf @tex'
let g:vimtex_quickfix_open_on_warning = 0
let g:airline_theme='deus'
" lspのhover非表示
let lsp_signature_help_enabled = 0
let g:UltiSnipsExpandTrigger="<tab>"

set noswapfile

filetype plugin indent on

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
set listchars=tab:>-,trail:-,extends:<,precedes:<
highlight SpecialKey ctermfg=darkmagenta

set autoindent
set smartindent
set clipboard+=unnamed
set backspace=indent,eol,start
if has("persistent_undo")
    set undodir=~/.undodir
    set undofile
endif

colorscheme palenight

let maplocalleader="\<Space>"

noremap <s-h> ^
noremap <s-l> $
inoremap <C-j> <esc>
tnoremap <Esc> <C-\><C-n>
nnoremap <Space>t :vert term<CR>
" quick run
nnoremap <Space>q :QuickRun<CR>
" vim-go
nnoremap <Space>i :GoImports<CR>
nnoremap <Space>e :GoIfErr<CR>
nnoremap gd :sp GoDef<CR>
" vaffle
nnoremap <Space>v :Vaffle<CR>
" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>""
autocmd! BufNewFile *slide.tex 0r $HOME/dotfiles/template/slide_tex.txt

autocmd! BufNewFile *paper.tex 0r $HOME/dotfiles/template/paper_tex.txt

autocmd! BufNewFile *diary.md 0r $HOME/dotfiles/template/diary_md.txt

" lang
autocmd FileType html setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType vue setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
