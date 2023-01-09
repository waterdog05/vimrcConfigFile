set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'nanotech/jellybeans.vim'
Plugin 'http://github.com/michaeljsmith/vim-indent-object'
call vundle#end()

" nerdtree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F8> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1

" nerdcommenter
" let g:NERDSpaceDelims = 1
" let g:NERDCompactSexyComs = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDAltDelims_java = 1
" let g:NERDCustomDelimiters = { 'c': { 'left': '/*', 'right': '*/'} }
" let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1
" map <Leader>cc <plug>NERDComToggleComment
" map <Leader>c<space> <NERDComComment

" delimitMate
let delimitMate_expand_cr=1

" Syntax Highlighting
if has("syntax")
	syntax on
endif

set autoindent
set cindent
set bs=eol,start,indent
set history=256
" set paste 붙여넣기 계단현상 없애기
set nu
set ts=4
set sts=4
set sw=1
set autowrite
set autoread
set shiftwidth=4
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set hlsearch
set scrolloff=2
set wildmode=longest,list
set showmatch
set smartcase
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler
set incsearch

" 파일 인코딩 한국어
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif

colorscheme jellybeans
