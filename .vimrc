execute pathogen#infect()
syntax on

filetype plugin indent on

set number
set guifont=Source\ Code\ Pro:h12
set t_Co=256
set laststatus=2
set backspace=indent,eol,start
set clipboard=unnamed
set splitbelow
set splitright
set backupcopy=yes

colorscheme Kafka

let mapleader=","
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|deps\|_build'

" Elm stuff
let g:elm_format_autosave = 1
let g:elm_detailed_complete = 1
let g:elm_make_show_warnings = 0
let g:elm_jump_to_error = 1
let g:elm_classic_highlighting = 0
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}
let g:elm_syntastic_show_warnings = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

