call plug#begin('~/.nvim/plugged')

if filereadable(expand("~/.config/nvim/bundles.vim"))
  source ~/.config/nvim/bundles.vim
endif
call plug#end()

" Leader
let mapleader = "\\"

set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set showmode " always show what mode we're currently editing in
set nowrap " don't wrap lines
set tabstop=4 " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4 " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab " expand tabs by default (overloadable per file type later)
set shiftwidth=4 " number of spaces to use for autoindenting
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set wildmenu "show wildmenu
set t_Co=256 "fix for bad colors
set background=dark " let vim know i use a dark background

syntax on
colorscheme github

" Numbers
set number              " Enables Numbers
set numberwidth=5       " fixed numberwidth
set relativenumber      " displays numbers relatively

" Swap files out of the project root
set backupdir=~/.nvim/backup//
set directory=~/.nvim/swap//

" Force me to use hjkl
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

"Toggle Marks
map <F2> :marks<CR>
"Toggle Nerdtree
map <F3> :NERDTreeToggle<CR>
"Toggle Tagbar
map <F4> :TagbarToggle<CR>

" colorscheme toggle
nnoremap <silent> <F9> :exec "color " .
    \ ((g:colors_name == "github") ? "Monokai" : "github")<CR>

" use tab to switch between buffers
function SwitchBuffer()
    b!#
endfunction
nmap <Tab> :call SwitchBuffer()<CR>

" show buffers in powerline
let g:airline#extensions#tabline#enabled = 1

" enable powerline font
let g:airline_powerline_fonts = 1 

" limit size of nerdtree and tagbar
let g:NERDTreeWinSize = 30 
let g:tagbar_width = 30
let g:tagbar_autoclose = 1

set listchars=tab:>\ ,eol:$,trail:~
set listchars=tab:▸\ ,eol:¬,trail:«
nnoremap <F8> :set list!<CR>

let $PATH=$PATH . ':' . expand('~/.config/composer/vendor/bin')
let g:padawan#composer_command = "/usr/bin/composer"

command! StartPadawan call deoplete#sources#padawan#StartServer()
command! StopPadawan call deoplete#sources#padawan#StopServer()
command! RestartPadawan call deoplete#sources#padawan#RestartServer()
" Disable mouse!!
set mouse=
