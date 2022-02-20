" Greg Hinch - vimrc
" Colors {{{
syntax on " syntax highlighting on
colorscheme codedark " dark colorscheme
set termguicolors
" }}}
" Misc {{{
set backspace=indent,eol,start
" }}}
" Tabs & Spaces {{{
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4  
set expandtab " tabs are spaces
set modelines=1 " check bottom of file for a modeline
" set nocompatible
set autoindent
" set shiftround
" }}}
" UI Layout {{{
set number " show linenumbers
set showcmd " show command line in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when need to
set showmatch " highligh matching [{()}]
set ruler " show a ruler
" set history=250
" }}}
" Searching {{{
set hlsearch " highlight matches
set incsearch " search as characters are entered
" }}}
" Folding {{{
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested folds max
set foldmethod=indent " fold based on indents
" }}}
" Tmux {{{
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" AutoGroups {{{
" augroup configgroup
"     autocmd!
"     autocmd VimEnter * highlight clear SignColumn
"     autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
"     autocmd BufEnter *.cls setlocal filetype=java
"     autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"     autocmd BufEnter Makefile setlocal noexpandtab
"     autocmd BufEnter *.sh setlocal tabstop=2
"     autocmd BufEnter *.sh setlocal shiftwidth=2
"     autocmd BufEnter *.sh setlocal softtabstop=2
"     autocmd BufEnter *.py setlocal tabstop=4
"    autocmd BufEnter *.md setlocal ft=markdown
" augroup END
" }}}
" Testing {{{
let test#strategy = 'neovim'
let test#python#runner = 'nose'
" }}}
autocmd FileType python setlocal commentstring=#\ %s " sets the comment string for python to #
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" Custom Functions {{{
" function! ToggleNumber()
"     if(&relativenumber == 1)
"         set norelativenumber
"         set number
"     else
"         set relativenumber
"     endif
" endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
" function! <SID>StripTrailingWhitespaces()
"     " save last search & cursor position
"     let _s=@/
"     let l = line(".")
"     let c = col(".")
"     %s/\s\+$//e
"     let @/=_s
"     call cursor(l, c)
" endfunction

" function! <SID>CleanFile()
"     " Preparation: save last search, and cursor position.
"     let _s=@/
"     let l = line(".")
"     let c = col(".")
"     " Do the business:
"     %!git stripspace
"     " Clean up: restore previous search history, and cursor position
"     let @/=_s
"     call cursor(l, c)
" endfunction
" }}}

" vim:foldmethod=marker:foldlevel=0
let g:flake8_cmd = '/usr/local/bin/flake8'
