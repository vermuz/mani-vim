execute pathogen#infect()
set nocompatible
filetype off
syntax on
filetype plugin indent on
set number
set mouse=a
set ruler

"For Searching
set ignorecase
set smartcase
set incsearch
set hlsearch
" Global Tabs
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap

"Light colors for eyes
" color jellybeans
color SerialExperimentsLain
" set background=dark
map <F3> :NERDTreeToggle<CR>

"Enable powerline
"source rtp+=/Users/mali/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
source /Users/mali/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

" Poweline for info
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8


remove trailing whitespace and ^M
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
autocmd BufNewFile,BufRead *.py,*pyc setlocal expandtab
" on ruby files tabstop is 2
autocmd BufNewFile,BufRead *.rb setlocal tabstop=2
autocmd BufNewFile,BufRead *.rb setlocal softtabstop=2
autocmd BufNewFile,BufRead *.rb setlocal shiftwidth=2

" HTML-type things
au BufRead,BufNewFile,BufWrite {*.tpl,*.ng-template} set ft=html

" CSS-type things
au BufRead,BufNewFile,BufWrite {*.less} set ft=css

" Use ruby syntax for additional ruby types
au BufRead,BufNewFile,BufWrite {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

" JavaScript
au BufRead,BufNewFile,BufWrite {*.js.asp,*.json} set ft=javascript

" Varnish
au BufRead,BufNewFile,BufWrite {*.vcl.erb} set ft=vcl


