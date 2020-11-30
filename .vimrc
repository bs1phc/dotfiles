syntax on
filetype plugin indent on
set smartindent
set wrap
set undodir=~/.vim/undodir
set tabstop=4 softtabstop=4
set shiftwidth=4
set relativenumber
set termguicolors





call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'bluz71/vim-moonfly-colors'
Plug 'bs1phc/mnc.vim'



call plug#end()

if has('termguicolors')
      set termguicolors
endif


"colorscheme
"let g:sonokai_style = 'shusia'
"let g:sonokai_cursor = 'blue'
"colorscheme sonokai
colorscheme moonfly


"nerdtree
map <C-n> :NERDTreeToggle<CR>

"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" show hidden files
let NERDTreeShowHidden=1