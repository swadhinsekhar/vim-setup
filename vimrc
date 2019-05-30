execute pathogen#infect()

"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256

" size of a hard tabstop
"set tabstop=2
set tabstop=4

" size of an "indent"
set shiftwidth=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" highlight search
set hlsearch

"case-insensitive
set ignorecase

syntax enable
"colorscheme sol
set background=dark
"set background=light
"colorscheme solarized

highlight DiffAdd    cterm=bold ctermfg=black ctermbg=LightGreen gui=none guifg=bg guibg=LightGreen
highlight DiffDelete cterm=bold ctermfg=black ctermbg=Red gui=none guifg=bg guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=bg guibg=Cyan
highlight DiffText   cterm=none ctermfg=black ctermbg=Cyan gui=none guifg=bg guibg=Cyan

"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
"highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
"highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
"highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

"if &diff
"    colorscheme evening
"endif

highlight Search ctermbg=DarkGrey
highlight Search ctermfg=black

" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1

"call plug#begin()
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"call plug#end()
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

"map <C-.> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-l> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-k> :sp <CR>:exec("tag ".expand("<cword>"))<CR>

"set cursor last postition
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
