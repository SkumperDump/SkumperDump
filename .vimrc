" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" making vim hard :(
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" clipboard setup
set clipboard+=unnamedplus
let g:clipboard = {
			\   'name': 'xclip-xfce4-clipman',
			\   'copy': {
			\      '+': 'xclip -selection clipboard',
			\      '*': 'xclip -selection clipboard',
			\    },
			\   'paste': {
			\      '+': 'xclip -selection clipboard -o',
			\      '*': 'xclip -selection clipboard -o',
			\   },
			\   'cache_enabled': 1,
			\ }

" display settings
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
set number " enabled with relative number for hybrid mode
set relativenumber " relative line numbers

" write settings
set confirm " confirm :q in case of unsaved changes
set fileencoding=utf-8 " encoding used when saving file

" edit settings
set nojoinspaces " no extra space after '.' when joining lines
set tabstop=4 " set tabulator length to 4 columns
set softtabstop=0 " backspacing over 4 spaces like over tabs
set shiftwidth=4 " set indentation depth to 4 columns
set expandtab

" omni complete
set omnifunc=syntaxcomplete#Complete

" vanilla closings
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" characters for displaying non-printable characters
set listchars=eol:$,tab:>-,trail:.,nbsp:_,extends:+,precedes:+

" General Key Mappings

" center view on the search result
noremap n nzz
noremap N Nzz

" press F4 to fix indentation in whole file; overwrites marker 'q' position
noremap <F4> mqggVG=`qzz
inoremap <F4> <Esc>mqggVG=`qzza

" press F8 to turn the search results highlight off
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl<CR>a

" press F12 to toggle showing the non-printable charactes
noremap <F12> :set list!<CR>
inoremap <F12> <Esc>:set list!<CR>a
