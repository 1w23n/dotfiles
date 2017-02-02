colorscheme koehler

set display=lastline

set number
set ruler

set matchtime=1
set showmatch

set tabstop=2

set shiftwidth=2

set expandtab

syntax on
set scrolloff=5
set noswapfile
set nowritebackup
set nobackup
set autoindent
set smartindent

inoremap eee <ESC>

inoremap <C-h> <LEFT>
inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-l> <RIGHT>

inoremap <C-e> <ESC>$a
inoremap <C-a> <ESC>^a
noremap <C-e> <ESC>$
noremap <C-a> <ESC>^

inoremap <C-o> <ESC>o
inoremap <C-y> <ESC>O
inoremap <C-t><C-t> <ESC>ddO
noremap <C-t><C-t> <ESC>ddO
inoremap <C-r><C-r> <ESC>dda
inoremap <C-u> <ESC>ua

inoremap <C-d> <DELETE>
inoremap <C-b> <BACKSPACE>

inoremap <C-c> <ESC>
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap <> <><LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap %% %%<LEFT>

inoremap {<Enter> {}<LEFT><CR><ESC><S-o>
inoremap [<Enter> []<LEFT><CR><ESC><S-o>
inoremap (<Enter> ()<LEFT><CR><ESC><S-o>

inoremap html<Enter> <html><CR><CR></html><UP>
inoremap head<Enter> <head><CR><CR></head><UP>
inoremap title<Enter> <title></title><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap body<Enter> <body><CR><CR></body><UP>
inoremap read<Enter> <read><CR><CR></read><UP>
inoremap div<Enter> <div><CR><CR></div><UP>

inoremap th<Enter> <th></th><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap td<Enter> <td></td><LEFT><LEFT><LEFT><LEFT><LEFT>

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
