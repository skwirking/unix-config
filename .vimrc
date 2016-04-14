" show block cursor in normal mode; bar cursor in insert mode
" got this from:
"   http://superuser.com/a/634327/470290

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

:syntax on

" comments are a hard to read dark blue colour. fix this:
hi Comment ctermfg=LightBlue

noremap \w :wa<CR>
noremap <space> <C-D>
noremap <backspace> <C-U>


" Allow saving of files as sudo when I forgot to start vim using sudo.
"   see here for an explanation of how this hack actually works:
"   http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %

set hlsearch
set incsearch
set ignorecase
set smartcase
