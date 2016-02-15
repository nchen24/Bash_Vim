set cindent
set smartindent
set autoindent
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set showcmd
set shiftround

"Tab aligns text
noremap <Tab> ==

"Scroll through menu
set wildmenu

set nu "Line n#
set ruler "Row, col #

"Syntax highlighting
syntax enable

"Autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Enable mouse selecting
set mouse=a

"Set up braces blinking
set showmatch
set mat=2

"Setup :make to run ./compile if it's c/c++
autocmd FileType c,cpp setlocal makeprg=./compile


"Paste from system clipboard with Ctrl-P
nmap <silent> <c-P> "+p

"Text highlighting for > 80 lines
set textwidth=80
set tw=80
set wrap
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/
command Wmake :exec ":w | :make"

"Set color scheme
if has("gui_running")
  colorscheme myDefault
else 
  colorscheme torte
endif
