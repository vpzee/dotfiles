" Install this file in ~/.config/nvim/
filetype plugin indent on "detects filetype, indentation, and loads plugin file

" Plug https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " https://github.com/junegunn/fzf
Plug 'junegunn/fzf.vim' " https://github.com/junegunn/fzf.vim
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes' " https://github.com/vim-airline/vim-airline-themes
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " https://github.com/fatih/vim-go
Plug 'tpope/vim-fugitive' " https://github.com/tpope/vim-fugitive
Plug 'sheerun/vim-polyglot' " https://github.com/sheerun/vim-polyglot
" colorschemes
Plug 'adrian5/oceanic-next-vim' " https://github.com/adrian5/oceanic-next-vim
Plug 'franbach/miramare' " https://github.com/franbach/miramare
Plug 'junegunn/seoul256.vim' " https://github.com/junegunn/seoul256.vim
Plug 'morhetz/gruvbox' " https://github.com/morhetz/gruvbox
Plug 'nightsense/cosmic_latte' " https://github.com/nightsense/cosmic_latte
Plug 'sainnhe/gruvbox-material' " https://github.com/sainnhe/gruvbox-material
Plug 'tomasiser/vim-code-dark' " https://github.com/tomasiser/vim-code-dark
Plug 'lifepillar/gruvbox8' " https://github.com/lifepillar/vim-gruvbox8

call plug#end()


" Basic options
inoremap jj <ESC>
set encoding=utf-8
set nomodeline "when set doesn't check the first few lines of a file for modelines
set autoindent "copies the indent from the previous line when you start a newline with o
set cursorline "highlight the text line of the cursor with CursorLine
set visualbell "flashes the screen
set relativenumber "use relative numbers instead of absolute numbers
set hidden "so you can switch to other buffers without saving the current buffer
set backspace=indent,eol,start "so you can use backspace everywhere
set listchars=tab:▸\ ,eol:¬ "TextMate style invisible characters
set cpo+=J "Using two spaces after a sentence
set scrolloff=100 "keeps the cursor in the middle
syntax enable


" Tabs, Spaces, Wrapping
set tabstop=4       "number of spaces that a <TAB> in the file counts for
set shiftwidth=4
set softtabstop=4   "insert spaces instead of tabs
set expandtab       "use the appropriate number of spaces to insert a <TAB>
set colorcolumn=80


" Searching
set ignorecase "case of normal letters is ignored
set smartcase  "override the 'ignorecase' option if the pattern contains upper case characters
set hlsearch   "highlight all the matches of a search
set incsearch  "while typing show where the pattern matches


set background=dark

if (has("termguicolors"))
 set termguicolors
endif

" Vim-Code-Dark
colorscheme codedark
let g:airline_theme = 'codedark'

" Seoul color scheme
"let g:seoul256_background = 233
"colorscheme seoul256

" vim-airline general options
let g:airline_powerline_fonts = 1 "uses the powerline fonts to make it pointy
let g:airline#extensions#tabline#enabled = 1 "enable tabline


" Leader
let mapleader=","

nmap <leader>, :set list!<cr>
nnoremap <leader><space> :nohlsearch<cr>
vnoremap <leader>s :sort<cr>
nnoremap <silent><leader>1 :source ~/.config/nvim/init.vim \| :PlugInstall<CR>


" Buffer remaps
nmap <leader>l :bnext<CR> " Move to the next buffer
nmap <leader>h :bprevious<CR> " Move to the previous buffer
