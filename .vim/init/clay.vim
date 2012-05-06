" manually grabbing things from clay's .vimrc

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" display incomplete commands
set showcmd

" tab complete ignores listed extensions
set wildignore=*.o,*.class

" Don't use Ex mode, use Q for formatting
map Q gq

" map j to gj and k to gk, so line navigation ignores line wrap
nmap j gj
nmap k gk

" cancel visualbell
set vb t_vb=

"typos"
map :W :w
map :Wq :wq

"ad-hoc filetypes that may not be recognized by vim on older dev box"
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd BufNewFile,BufRead *.hsc set filetype=haskell
autocmd BufNewFile,BufRead *.sbt set filetype=scala
autocmd FileType scala setlocal shiftwidth=2 tabstop=2
augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
  au BufNewFile,BufRead *.scala set filetype=scala syntax=scala
augroup END

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  "autocmd BufReadPost *
   " \ if line("'\"") > 0 &mp;&mp; line("'\"") <= line("$") |
    "\   exe "normal g`\"" |
    "\ endif

endif " has("autocmd")