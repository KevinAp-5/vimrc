call plug#begin()
Plug 'preservim/NERDTree'
Plug 'morhetz/gruvbox'
call plug#end()
nmap <C-o> :NERDTreeToggle<CR>
set listchars=tab:\|\ 
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
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
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
set background=dark
