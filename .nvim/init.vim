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

call plug#end()

syntax enable
filetype plugin indent on

" colors
colo seoul256
set background=light

" deoplete
let g:deoplete#enable_at_startup = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'sol'

" autopep8
let g:autopep8_disable_show_diff = 1
autocmd BufWritePre *.py :Autopep8

" ctrl p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|deps\|_build\|\v\.(o|hi)$'

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
set number
