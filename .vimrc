
call plug#begin()
" color theme
Plug 'arzg/vim-colors-xcode'
" golang
Plug 'mattn/vim-goimports'
Plug 'nametake/golangci-lint-langserver'
" others
Plug 'junegunn/fzf', {'do': {-> fzf#install}}
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'cocopon/vaffle.vim'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'simeji/winresizer'
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
Plug 'markonm/traces.vim'
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
if has("autocmd")
    autocmd FileType js setlocal sw=2 sts=2 ts=2 et
endif

set tabstop=4
set expandtab
set softtabstop=0
set shiftwidth=4
set smarttab

set number

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

colorscheme xcodedark
let g:xcodedark_green_comments = 1

let maplocalleader="\<Space>"

noremap <s-h> ^
noremap <s-l> $
inoremap <C-j> <esc>
tnoremap <Esc> <C-\><C-n>
nnoremap <Space>t :vert term<CR>
" fzf
map <Space>b :Buffer<CR>
map <Space>f :FZF<CR>
" easymotion
map <Leader>s <Plug>(easymotion-bd-f2)
map <Space>m <Plug>(easymotion-overwin-f2)
" quick run
nnoremap <Space>q :QuickRun<CR>
" nerdtree
nnoremap <Space>v :NERDTreeToggle<CR>
" lsp
nmap <silent> gd :LspDefinition<CR>
nmap <silent> gh :LspHover<CR>
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_pupup_delay = 200
let g:lsp_settings_filetype_go = ['gopls', 'golangci-lint-langserver']

let g:lsp_settings = {}
let g:lsp_settings['gopls'] = {
  \  'workspace_config': {
  \    'usePlaceholders': v:true,
  \    'analyses': {
  \      'fillstruct': v:true,
  \    },
  \  },
  \  'initialization_options': {
  \    'usePlaceholders': v:true,
  \    'analyses': {
  \      'fillstruct': v:true,
  \    },
  \  },
  \}
" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>""
autocmd! BufNewFile *slide.tex 0r $HOME/dotfiles/template/slide_tex.txt

autocmd! BufNewFile *paper.tex 0r $HOME/dotfiles/template/paper_tex.txt

autocmd! BufNewFile *diary.md 0r $HOME/dotfiles/template/diary_md.txt

autocmd vimenter * NERDTree

" lang
autocmd FileType html setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType vue setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript setl tabstop=2 expandtab shiftwidth=2 softtabstop=2

