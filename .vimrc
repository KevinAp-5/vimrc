call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine'
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim'

call plug#end()
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

let g:NERDTreeWinPos = "right"
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nnoremap <S-Down> :m+<CR>
nnoremap <S-Up> :m-2<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-Up> :m .-2<CR>==
inoremap <S-Down> <Esc>:m .+1<CR>==gi
inoremap <S-Up> <Esc>:m .-2<CR>==gi
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gvi

inoremap <C-k> <Esc>:s!^!#!<enter><CR>==gi
vnoremap <C-k> :s!^!#!<enter> 
nnoremap <C-k> :s!^!#!<enter><CR>==

inoremap <C-c> <Esc>:s!#!!<enter><CR>==gi
vnoremap <C-c> :s!#!!<enter>
nnoremap <C-c> :s!#!!<enter><CR>==

nnoremap <C-Up> 7k
nnoremap <C-Down> 7j

"shift tab
  "command mode
nnoremap <S-Tab> <<
  "for insert mode
inoremap <S-Tab> <C-d>
  "for visual mode
vnoremap <S-Tab> <<

syntax on
set list lcs=tab:\|\
set list
let g:python_highlight_all = 1
let g:indentLine_color_term = 12
let g:indentLine_char = '|'
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab
inoremap <C-H> <C-W>
set number
set noswapfile
set colorcolumn=80
highlight ColorColumn ctermbg=green
let python_hightlight_all=0
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE
set background=dark

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

highlight Comment ctermfg=blue
hi MatchParen cterm=Bold ctermbg=None ctermfg=red

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
