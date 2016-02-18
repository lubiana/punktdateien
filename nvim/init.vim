call plug#begin('~/.nvim/plugged')

if filereadable(expand("~/.vimrc.bundles"))
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
set t_Co=256
set background=dark
"set tw=80
colorscheme Monokai 

syntax on

" Numbers
set number              " Enables Numbers
set numberwidth=5       " fixed numberwidth
set relativenumber      " displays numbers relatively

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Get off my lawn
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
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Toggle Marks
map <F2> :marks<CR>
"Toggle Nerdtree
map <F3> :NERDTreeToggle<CR>
"Toggle Tagbar
map <F4> :TagbarToggle<CR>

" colorscheme toggle
nnoremap <silent> <F9> :exec "color " .
    \ ((g:colors_name == "Tomorrow") ? "Monokai" : "Tomorrow")<CR>


function SwitchBuffer()
    b!#
endfunction
nmap <Tab> :call SwitchBuffer()<CR>


" set space to toggle folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

let g:NERDTreeWinSize = 30 
let g:tagbar_width = 30
let g:tagbar_autoclose = 1

set listchars=tab:>\ ,eol:$
set listchars=tab:▸\ ,eol:¬
nnoremap <F8> :set list!<CR>

" Disable mouse!!
set mouse=

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


