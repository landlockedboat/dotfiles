set number
highlight LineNr ctermfg=white

set clipboard=unnamedplus

set tabstop=2
set shiftwidth=2

inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi

" use za to fold and zo to unfold
" use zm to fold all and zr to unfold all
set foldmethod=marker

call plug#begin()
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'elmcast/elm-vim' 
Plug 'leafo/moonscript-vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'editorconfig/editorconfig-vim'
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'
" For .ing vim-surround
Plug 'tpope/vim-repeat'
call plug#end()

call neomake#configure#automake('w')
