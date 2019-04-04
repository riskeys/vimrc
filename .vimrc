"To enable file type detection"

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" win32 users will need to have this set so latex can be called correctly ?
set shellslash

let g:tex_flavor='latex'


" UI Config {{{
set number		" show line numbers
set showcmd		" show command in bottom bar
set cursorline		" highlight current line
filetype indent on	" load filetype-specific indent files
set showmatch
set wildmenu
syntax enable " enable syntax processing (for comments)
"}}}


" Search Settings {{{
    set incsearch		" search as characters are entered
    set hlsearch		" highlight matches
    "turn off search highlight
    nnoremap <leader><space> :nohlsearch<CR>
"}}}


" Folding {{{
set foldenable      " enable folding
set foldlevelstart=1
set foldmethod=marker   " fold based on indent level
"}}}

" Movement{{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
"}}}

" Leader Shortcuts {{{

" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
"nnoremap <leader>ev :vsp $MYVIMRC<CR>
"nnoremap <leader>ez :vsp ~/.zshrc<CR>
"nnoremap <leader>sv :source $MYVIMRC<CR>

"}}}

" Section Tabbing {{{
" colorscheme murphy
set background=dark
hi Normal ctermbg=black
hi comment ctermfg=gray
hi comment cterm=italic
set tabstop=1		"number of visual spaces per TAB
set softtabstop=2
set expandtab
"}}}

" File Type Detection / augroup autocmd{{{
augroup configgroup
            "autocmd!
            "autocmd VimEnter * highlight clear SignColumn
            "autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
            "         \:call <SID>StripTrailingWhitespaces()
            "autocmd FileType java setlocal noexpandtab
            "autocmd FileType java setlocal list
            "autocmd FileType java setlocal listchars=tab:+\ ,eol:-
            "autocmd FileType java setlocal formatprg=par\ -w80\ -T4
            "autocmd FileType php setlocal expandtab
            "autocmd FileType php setlocal list
            "autocmd FileType php setlocal listchars=tab:+\ ,eol:-
            "autocmd FileType php setlocal formatprg=par\ -w80\ -T4
            "autocmd FileType ruby setlocal tabstop=2
            "autocmd FileType ruby setlocal shiftwidth=2
            "autocmd FileType ruby setlocal softtabstop=2
            "autocmd FileType ruby setlocal commentstring=#\ %s
            "autocmd FileType python setlocal commentstring=#\ %s
            "autocmd BufEnter *.cls setlocal filetype=java
            "autocmd BufEnter *.zsh-theme setlocal filetype=zsh
            "autocmd BufEnter Makefile setlocal noexpandtab
            "autocmd BufEnter *.sh setlocal tabstop=2
            "autocmd BufEnter *.sh setlocal shiftwidth=2
            "autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
"}}}


" HTML Tag Shortcut {{{
augroup HTMLTagSc
        autocmd FileType html inoremap <html> <html><Esc>o</html><Esc>O<BS><BS><BS>
        autocmd FileType html inoremap <body> <body><Esc>o</body><Esc>O<BS><BS>
        autocmd FileType html inoremap <head> <head><Esc>o</head><Esc>O<BS><BS>
augroup END
" }}}

set modelines=1
" vim:foldmethod=marker:foldlevel=0
