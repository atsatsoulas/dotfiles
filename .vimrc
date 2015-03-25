call pathogen#infect()
syntax enable  
filetype plugin on  
set number  
let g:go_disable_autoinstall = 0
let g:neocomplete#enable_at_startup = 1
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
nmap <C-t> :TagbarToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>
set nobackup
set noswapfile
set laststatus=2
let $PATH='/Users/darky/Projects/playground/golang/bin:' . $PATH
colorscheme molokai
function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/darky/Projects/playground/golang/src/darky.org/estatesrv/src'
	let $GOPATH='/Users/darky/Projects/playground/golang/src/darky.org/estatesrv/'
  endif
endfunction

autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

set incsearch
set ignorecase
set smartcase
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb


" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space
set listchars=tab:▸\ ,eol:¬

" Enable file type detection
filetype on

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
autocmd FileType go noremap <buffer> <c-f> :GoFmt<cr>
" Treat .json files as .js
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript


" ctrlp
set wildignore+=*/tmp/*,*.exe,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif
