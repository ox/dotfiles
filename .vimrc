execute pathogen#infect()

" lol comment

syntax on
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line

augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd BufRead,BufNewFile *.md setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

""
"" General Settings
""

set tabstop=2 " Softtabs, 2 spaces
set shiftwidth=2
set expandtab
set mouse=a

" Colorschemes
set t_Co=256
colorscheme wombat256mod

" Remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" For Makefiles
autocmd FileType make setlocal noexpandtab

" For json
autocmd FileType json setlocal ft=javascript

" Display extra whitespace
set list listchars=tab:»·,trail:·

""
"" Use Ag (https://github.com/ggreer/the_silver_searcher) instead of Grep when
"" available
""

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Window movements with Ctrl + arrow keys
nnoremap <C-Down> <C-w>j
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l


""
"" NERDTree Settings
""

"" Ctrl + n opens up nerdtree
map <C-n> :NERDTreeToggle<CR>

"" close nerdtree if it's the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""
"" Syntastic Settings
""

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1

""
"" CtrlP Settings
""

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
