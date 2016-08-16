execute pathogen#infect()
syntax on

filetype plugin indent on

set number
set guifont=Source\ Code\ Pro:h12
set t_Co=256
set laststatus=2
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed
set splitbelow
set splitright

colorscheme Kafka

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'PaperColor'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|deps\|_build\|\v\.(o|hi)$'
let g:elm_format_autosave = 1
let g:elm_detailed_complete = 1
let g:elm_make_show_warnings = 1
let g:elm_jump_to_error = 1
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}
let g:lightline = {
     \ 'colorscheme': 'seoul256',
     \ }
let g:jsx_ext_required = 0

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

