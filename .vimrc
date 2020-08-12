" plugins
call plug#begin('~/.vim/plugged')
" base
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'itchyny/lightline.vim'

" languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" color schemes
" Plug 'morhetz/gruvbox'
" Plug 'jnurmine/zenburn'
Plug 'junegunn/seoul256.vim'
call plug#end()

" edit
filetype plugin indent on
syntax enable
set number
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set autoindent
" set paste   // it conflicts with coc

" current color scheme
" set background=dark
" color gruvbox
" color zenburn
let g:seoul256_background = 100
color seoul256

" aliases
nnoremap <C-m> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-l> :CocAction<CR>
nnoremap <C-f> :FZF<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-e> :q<CR>
nnoremap <S-C-s> :wa<CR>

" coc - navs
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references) 
nmap <leader>rn <Plug>(coc-rename)

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

