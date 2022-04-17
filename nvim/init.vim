" auto source init.vim after save
autocmd! bufwritepost .vimrc source %

" plugins
call plug#begin("~/.local/share/nvim/site/autoload/plugged")

	Plug 'ryanoasis/vim-devicons'
	Plug 'prettier/vim-prettier'
	Plug 'terrortylor/nvim-comment'
	Plug 'chimay/wheel'
	Plug 'andweeb/presence.nvim'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	Plug 'joshdick/onedark.vim'
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'MaxMEllon/vim-jsx-pretty'
	Plug 'styled-components/vim-styled-components'
	Plug 'dag/vim-fish'
	Plug 'powerline/powerline'
	Plug 'vim-airline/vim-airline'
	Plug 'Raimondi/delimitMate'
	Plug 'tpope/vim-fugitive'

call plug#end()

" keybinds
source ~/.config/nvim/keybinds.vim

" coc.vim config
source ~/.config/nvim/plug-config/coc.vim

" joshdick/onedark settings
syntax on
colorscheme onedark

" make nvim background transparent
highlight Normal ctermbg=none

" force suggestions for coc
inoremap <silent><expr> <c-space> coc#refresh()

" hide netrw header
let g:netrw_banner=0

" show line numbers
set number

" replace waves on empty lines
set fillchars=eob:# 

" change tab size
set tabstop=2
set shiftwidth=2
