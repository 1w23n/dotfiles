colorscheme koehler
set display=lastline
set numberset ruler
set matchtime=1set showmatch
set tabstop=2set shiftwidth=2set expandtab
syntax onset scrolloff=5set noswapfileset nowritebackupset nobackupset autoindentset smartindent
inoremap eee <ESC>
inoremap <C-h> <LEFT>inoremap <C-j> <DOWN>inoremap <C-k> <UP>inoremap <C-l> <RIGHT>
inoremap <C-e> <ESC>$ainoremap <C-a> <ESC>^anoremap <C-e> <ESC>$noremap <C-a> <ESC>^
inoremap <C-o> <ESC>oinoremap <C-y> <ESC>Oinoremap <C-t><C-t> <ESC>ddOnoremap <C-t><C-t> <ESC>ddOinoremap <C-r><C-r> <ESC>ddainoremap <C-u> <ESC>ua
inoremap <C-d> <DELETE>inoremap <C-b> <BACKSPACE>
inoremap <C-c> <ESC>inoremap {} {}<LEFT>inoremap [] []<LEFT>inoremap () ()<LEFT>inoremap <> <><LEFT>inoremap "" ""<LEFT>inoremap '' ''<LEFT>inoremap %% %%<LEFT>
inoremap {<Enter> {}<LEFT><CR><ESC><S-o>inoremap [<Enter> []<LEFT><CR><ESC><S-o>inoremap (<Enter> ()<LEFT><CR><ESC><S-o>
inoremap html<Enter> <html><CR><CR></html><UP>inoremap head<Enter> <head><CR><CR></head><UP>inoremap title<Enter> <title></title><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>inoremap body<Enter> <body><CR><CR></body><UP>inoremap read<Enter> <read><CR><CR></read><UP>inoremap div<Enter> <div><CR><CR></div><UP>
inoremap th<Enter> <th></th><LEFT><LEFT><LEFT><LEFT><LEFT>inoremap td<Enter> <td></td><LEFT><LEFT><LEFT><LEFT><LEFT>
set listset listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
