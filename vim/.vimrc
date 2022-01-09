if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'groenewege/vim-less'
Plug 'elzr/vim-json'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug 'vim-python/python-syntax'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-journal'
Plug 'airblade/vim-rooter'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'morhetz/gruvbox'
" Plug 'tomasr/molokai'
call plug#end()


set background=dark
" colorscheme molokai
colorscheme gruvbox

filetype plugin indent on
syntax enable

nnoremap <SPACE> <Nop>
let mapleader = " "

" good practice
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

" own config binds
"
nmap <leader><cr> :term<CR>
nmap <leader>t :TagbarToggle<CR>
" no highlights
nmap <leader>h :nohl<CR>
" comment
nmap <leader>c gcc
" code format everything
nmap <leader>f gg=G

" maximizer
nnoremap <leader>m :MaximizerToggle<CR>
"vnoremap <leader>m :MaximizerToggle<CR>gv
"inoremap <leader>m <C-o>:MaximizerToggle<CR>

" DEBUGGER
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dq :call vimspector#Reset()<CR>
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nnoremap <leader>dc :call win_gotoid(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call win_gotoid(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call win_gotoid(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call win_gotoid(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call win_gotoid(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call win_gotoid(g:vimspector_session_windows.output)<CR>

nmap <leader>dh <Plug>VimspectorStepOver
nmap <leader>dj <Plug>VimspectorStepInto
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>dl <Plug>VimspectorRunToCursor
nmap <leader>dr <Plug>VimspectorRestart
nmap <leader>db <Plug>VimspectorToggleBreakpoint
nmap <leader>dbc <Plug>VimspectorToggleConditionalBreakpoint

nmap <C-x> :q<CR>
nmap <C-x><C-x> :q!<CR>
nmap <C-y> :w<CR>
nnoremap <C-z> <NOP>
map <C-n> :NERDTreeToggle<CR>
nmap <C-h> :set hlsearch!<CR>

" navigate through windows
nmap <c-l> <C-w><C-w>
nmap <c-h> <C-w>h
nmap <c-k> :bnext<cr>
nmap <c-j> :bprevious<cr>


" Fugitive Conflict Resolution
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gl :diffget //3<CR>
nnoremap <leader>gu :diffupdate<CR>
nnoremap <leader>gw :Gwrite!<CR>

" FZF
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fr :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>ft :Tags<CR>


set noswapfile
set number
set hlsearch
set cursorline

" airline
" let g:airline_theme="badwolf"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set ttimeoutlen=50
set encoding=utf-8
set laststatus=2

" tab / space settings
set expandtab
set tabstop=2
retab
set shiftwidth=2

" remove trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

" colors
" let g:solarized_termcolors=256
let g:NERDTreeDirArrows=0
" set encoding=utf-8

" markown
let g:vim_markdown_folding_disabled=1

" nerdtree
let g:nerdtree_plugin_open_cmd = 'open'
" let NERDTreeShowHidden=1

let g:python_highlight_all = 1

hi Normal guibg=NONE ctermbg=NONE

" SNIPPETS
" ab print_r echo "<pre>";<CR>print_r();<CR>die();<ESC>kf)

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync
\| endif
