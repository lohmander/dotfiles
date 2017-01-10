call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/seoul256.vim'
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'
Plug 'tell-k/vim-autopep8'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ap/vim-css-color'
Plug 'othree/yajs.vim'
Plug 'udalov/kotlin-vim'
Plug 'schickling/vim-bufonly'
Plug 'othree/es.next.syntax.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax enable
filetype plugin indent on

" colors
colo seoul256-mod
set background=dark

" deoplete
let g:deoplete#enable_at_startup = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'zenburn'

" neomake
let g:neomake_python_python_maker = {
    \ 'exe': 'python3',
    \ }

let g:neomake_javascript_enabled_makers = ['eslint']

autocmd! BufWritePost * Neomake

" neosnippet

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


" git gutter

let g:gitgutter_updatetime = 250

" autopep8
let g:autopep8_disable_show_diff = 1
autocmd BufWritePre *.py :Autopep8

" ctrl p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|deps\|_build\|\v\.(o|hi)$'

" indent guides
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter * :IndentGuidesEnable

" disable stuff
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" misc
set clipboard=unnamed
set splitbelow
set splitright
set backupcopy=yes
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set termguicolors
set number
set tabstop=4
set shiftwidth=4
set expandtab
set cc=80
