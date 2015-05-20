set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
call vundle#end()            " required
filetype plugin indent on 

" remove .vim history tracking
let g:netrw_dirhistmax = 0

" syntax highlighting
syntax on
"filetype plugin indent on
colorscheme vividchalk
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%F
"set laststatus=2
"
"let g:syntastic_ruby_checkers=['mri']
"let g:syntastic_javascript=['javascript']
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_enable_signs=1
"set wildignore+=node_modules/**,public/**
"
"set expandtab
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set incsearch
"set hlsearch
"set cursorline
"set showmatch
"set number
"
" Command-T settings
let g:mapleader = ","
let g:CommandTMaxFiles=50000
let g:CommandTInputDebounce=50
let g:CommandTTraverseSCM='pwd' "searches downwards from current working directory
map <Leader>f :CommandTFlush<CR>
"
""fixing the height of the quickfix window
"au FileType qf call AdjustWindowHeight(3, 10) 
"function! AdjustWindowHeight(minheight, maxheight)
"  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
"endfunction
"
""let the quickfix window be modifiable by default to allow pruning of search
""results
":autocmd BufReadPost quickfix set modifiable
"
""keyboard shortcuts for grepping
"nnoremap GA :grep! "<C-R><C-W>" client app lib domain config bounded_contexts<CR>:copen<CR>
"nnoremap GT :grep! "\b<C-R><C-W>\b" spec test<CR>:copen<CR>
"nnoremap GB :grep! "\b<C-R><C-W>\b" client app lib domain config bounded_contexts spec test<CR>:copen<CR>
"nnoremap GF :grep! "\b<C-R><C-W>\b" %<CR>:copen<CR>
"
""QFilter and QFilter! for pruning the QuickFix window
"function! s:FilterQuickfixList(bang, pattern)
"  let cmp = a:bang ? '!~#' : '=~#'
"  call setqflist(filter(getqflist(), "bufname(v:val['bufnr']) " . cmp . " a:pattern"))
"endfunction
"command! -bang -nargs=1 -complete=file QFilter call s:FilterQuickfixList(<bang>0, <q-args>)
"
""Use SilverSearcher in grep
"if executable('ag')
"  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor
"endif
"" bind \ (backward slash) to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
"nnoremap \ :Ag<SPACE>
"
"" Defaults for splits are to the right and the bottom
"set splitright
"set splitbelow
"map <Leader>r :resize<SPACE>
