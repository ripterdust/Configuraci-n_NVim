set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch 
set sw=2
set laststatus=2


" Instalando plugins con Vim-Plug

call plug#begin('.~/.vim/plugged')

" Mis plugins
" Temas


Plug 'rafi/awesome-vim-colorschemes' 


" Funcionalidades

Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'

call plug#end()

" Ajustes con los plugins
" Tema

colorscheme PaperColor

" Plugins
"
" Easymotion configuration

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)

" Nerdtree configuration
nmap <Leader>nt :NERDTreeFind<CR>

" PlugUpdate
nmap <Leader>p :PlugUpdate<CR>

" Shortcuts
nmap <Leader>q :wq<CR>
nmap <Leader>w :w<CR>
nmap <Leader>e :q!<CR>

" Javascript configuration


" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

