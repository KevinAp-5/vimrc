call plug#begin()
Plug 'preservim/NERDTree'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
nmap <C-o> :NERDTreeToggle<CR>
set listchars=tab:\|\ 
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

set list
set tabstop=4
set autoindent
set smartindent
let g:indentLine_color_term = 200
set shiftwidth=4
set expandtab
inoremap <C-H> <C-W>
set number
set noswapfile
set colorcolumn=80
set showmatch
highlight ColorColumn ctermbg=blue
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

highlight Comment ctermfg=green
