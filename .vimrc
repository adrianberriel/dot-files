" ---------------------------------------------------------------------------- "
" Referencias
" ---------------------------------------------------------------------------- "
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" http://items.sjbach.com/319/configuring-vim-right
" https://github.com/derekwyatt/vim-config/blob/master/vimrc

" ---------------------------------------------------------------------------- "
" Lo basico
" ---------------------------------------------------------------------------- "
call pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible        " No compatible con vi

" ---------------------------------------------------------------------------- "
" Colores y GUI
" ---------------------------------------------------------------------------- "
set guioptions=acg
set t_Co=256 "256 colores
set mouse=a
set background=dark
"colorscheme mustang
colorscheme molokai
"colorscheme xoria256
"colorscheme calmar256-dark
if has("gui_running")
    set guifont=Terminus\ 10
endif

" ---------------------------------------------------------------------------- "
" Preferencias para los tabs
" ---------------------------------------------------------------------------- "
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" ---------------------------------------------------------------------------- "
" Preferencias generales
" ---------------------------------------------------------------------------- "
set virtualedit=all " Edicion en todas partes
set encoding=utf-8
set scrolloff=4
set autoindent
set showmode
set showcmd         " Muestra comandos parciales en la linea de estado
set hidden          " Si se cierra el buffer no se cierra el archivo
set wildmenu
set ruler           " Posicion del cursor
set backspace=indent,eol,start  " Backspace intuitivo
set laststatus=2    " Linea de estado aunque haya solo una ventana
set number          " Numeros de linea
set wrapscan        " Set the search scan to wrap around the file
set history=1000
set clipboard=unnamed
" Hacen casi lo mismo asi que los mapeo
nnoremap ' `
nnoremap ` '

let mapleader = ","     " Por defecto la tecla leader es \

" ---------------------------------------------------------------------------- "
" Preferencias para busquedas
" ---------------------------------------------------------------------------- "
set ignorecase
set smartcase
set gdefault " Busquedas globales por defecto
set incsearch
set showmatch
set hlsearch
nmap <silent> <leader>n :silent :nohlsearch<cr>  " Apagar resaltado

" ---------------------------------------------------------------------------- "
" Backup
" ---------------------------------------------------------------------------- "
set backupdir=~/.vim/backup,/tmp
set directory=~/.vim/backup,/tmp

" ---------------------------------------------------------------------------- "
" Manejo de lineas largas
" ---------------------------------------------------------------------------- "
set wrap
set textwidth=79
set formatoptions=c,q,r,t

" ---------------------------------------------------------------------------- "
" Caracteres invisibles
" ---------------------------------------------------------------------------- "
set list
set listchars=tab:▸\ ,eol:¬

" ---------------------------------------------------------------------------- "
" Edicion de vimrc
" ---------------------------------------------------------------------------- "
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>

" ---------------------------------------------------------------------------- "
" Mapeos
" ---------------------------------------------------------------------------- "
nmap <silent> ,t :NERDTreeToggle<cr>
nmap <silent> ,be :BufExplorer<cr>
nmap <silent> ,bv :BufExplorerVerticalSplit<cr>
nmap <silent> ,bs :BufExplorerHorizontalSplit<cr>
