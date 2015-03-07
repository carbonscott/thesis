"vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set hlsearch
"set incsearch
hi IncSearch term=reverse cterm=reverse,bold ctermfg=0 ctermbg=5 gui=reverse guifg=black guibg=yellow
call vundle#rc()
Bundle 'gmarik/Vundle.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'

noremap <F9> :set hlsearch<CR>
noremap <F10> :set nohlsearch<CR>

"Bundle 'SirVer/ultisnips'
" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
set rnu
"set guifont=UbuntuMono\ 13
set guifont=Fantasque\ Sans\ Mono\ 13 
"set guifontwide=ComicSansMs\ 10
"set guifont=Consolas\ 11
set tabstop=4
set softtabstop=4
set shiftwidth=4
"colorscheme desert
colorscheme default
set mouse=a
"colorscheme koehler
"highlight Normal guibg=black guifg=#00ff00 
"highlight Visual guibg=blue guifg=white
set nolist
set listchars=tab:▸\~,eol:¬
"set listchars=tab:▸\→,eol:¬
"highlight SpecialKey guifg=#4a4a59 
"highlight NonText guifg=#4a4a59 
highlight SpecialKey guifg=gray 
highlight NonText guifg=gray 
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set autoindent
set number
set wrap
set linebreak
set textwidth=0


"tab
noremap <c-t> :tabnew<CR>
noremap <c-n> :tabn<CR>
"inoremap <c-Tab> <c-o>:tabn<CR>
noremap <c-p> :tabp<CR>
"inoremap <c-s-Tab> <c-o>:tabp<CR>


"access my setup file for Chong Wong format,,
"source ~/Documents/gvim/WongStyle.vim
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"snipt
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsListSnippets="<c-e>"
"=====================ycm===================== 
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:tex_flavor='latex'
"let g:ycm_path_to_python_interpreter = '/usr/bin/python'
nnoremap <c-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_use_ultisnips_completer=1  
"=====================snippets===================== 
" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-y>"
let g:UltiSnipsJumpForwardTrigger="<c-y>"
let g:UltiSnipsJumpBackwardTrigger="<s-l>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
""""""""""syntastic""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"whether to show balloons
let g:syntastic_enable_balloons = 1
"ycm tab
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"set StatusLine 
set laststatus=2
"hi StatusLine ctermbg=white ctermfg=darkmagenta
set statusline+=%F
"set statusline=%f

abbreviate incldue include
abbreviate incl include
abbreviate icd include
abbreviate itn int
abbreviate dox /*!<CR><CR>/
"abbreviate doy /*!<CR> *<CR><>*/


" move line 
nmap <down> ddp
nmap <up> ddkP
noremap <F7> :set list<CR>
noremap <F8> :set nolist<CR>

" map when insert
inoremap <c-h> <ESC>i
"inoremap <c-a> <c-o>a
inoremap <F6> <c-k>
inoremap <F7> <c-o>:set list<CR>
inoremap <F8> <c-o>:set nolist<CR>
inoremap <c-j> <c-o>j
inoremap <c-k> <c-o>k
inoremap <c-l> <c-o>a
"inoremap <c-R> <c-o>e
inoremap <c-f> <c-o>e
inoremap <c-e> <c-o>b

" buffer next, previous

noremap <F4> :ls<CR>
noremap <F2> :bp<CR>
noremap <F3> :bn<CR>

" mapleader
" let mapleader = <a>
"

" map <leader>
"imap <c-'> ''<esc>i
"imap <c-"> ""<esc>i
"imap <c-[> []<esc>i
"imap <c-{> {}<esc>i

let g:solarized_italic=0
"let g:solarized_termcolors=256
"set cursorline
"highlight CursorLine guibg=lightblue ctermbg=lightgray
set cursorline
"set cursorline!
"highlight CursorLine ctermbg=black

"highlight CursorLine ctermbg=234
highlight CursorLineNR cterm=bold ctermbg=12
au insertenter * hi CursorLineNR cterm=bold ctermbg=2
au InsertLeave * hi CursorLineNR cterm=bold ctermbg=12
"ctermfg=14

"save file
map <c-m> :w<CR>
map <c-h> :q<CR>
"inoremap <c-m> <c-o>:w<CR>
    
"indent

"inoremap <c-t> <c-o>>>

"write in the curse
"inoremap <c-i> <c-o>i<Space><Space><c-o>h
"inoremap <c-y> <c-o>i<Space><Space><c-o>h

"taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"cscope
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"
""omnicppcomplete
"set tags+=~/.vim/tags/cpp
""set tags+=~/.vim/tags/qt
""set tags+=~/.vim/tags/qt2
""set tags+=~/.vim/tags/qt3
"" ctags -R -f ~/.vim/tags/qt2 -I __THROW --extra=+f --languages=c --langmap=c:+.h --c-kinds=+px --fields=+aiKSz .
""ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f ~/.vim/tags/qt4 /home/scott/
""set tags+=/home/scott/Downloads/qt-everywhere-opensource-src-4.8.6/src/tags
""set tags+=~/.vim/tags/tags_qt_cpp
""set tags+=~/.vim/tags/tags_qt_h
""set tags+=~/Qt/5.3/Src/tags
""set tags+=/home/scott/Qt/5.3/gcc_64/include/tags;set autochdir
"map <c-j> :w<CR>:!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>:TlistUpdate<CR>
""map <c-j> :!ls<CR>
"set nocp  
" pathogen
"execute pathogen#infect()
"syntax on
"filetype plugin on
autocmd filetype c,cpp,hpp,h :set cindent 
""OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview

"Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

"if has('vim_starting')
"set nocompatible               " Be iMproved
"
"" Required:
"set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif

" Required:
"call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"call neobundle#end()

    " Required:
"    filetype plugin indent on

    " If there are uninstalled bundles found on startup,
    " this will conveniently prompt you to install them.
"    NeoBundleCheck

"NeoBundle 'bling/vim-airline'

"
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


"set t_Co=256
set t_Co=256

"powerline symbols
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_detect_whitespace=0
"Add buffer tab for vim-airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
autocmd VimEnter * AirlineTheme badwolf
"autocmd VimEnter * AirlineTheme wombat
"autocmd VimEnter * AirlineTheme bubblegum
"^^^^^^^^^^^^^^^^^
"      necessary part
":AirlineTheme understated
"
"
autocmd BufNewFile,BufRead *.md set filetype=markdown

""wrap paragraph
"set textwidth=84
"set formatoptions+=Mm
"set colorcolumun=86
""select paragraphs and press "gq"



"syn match WongSymbol "\(>>>\|\(,,\)\|;\)"
"syn match WongName "\(\(LO:\)\|\(LO@S:\)\)"
"syn match WongLink "\(:->\)"
"syn match WongLink2 "\(:=>\)"
"syn match WongQ "\(Q:\|Q@S:\)"
"syn match WongUnderLine "\^"
"syn region WongTag start="__" end="__"

"hi WongName ctermbg=darkblue ctermfg=yellow cterm=bold
"hi WongSymbol ctermfg=yellow cterm=bold
"hi WongLink ctermfg=white cterm=bold
"hi WongLink2 ctermfg=white cterm=bold
"hi WongUnderLine ctermfg=lightgray cterm=bold
"hi WongQ ctermfg=red ctermbg=yellow cterm=bold
"hi WongTag ctermfg=Cyan cterm=bold 

"hi WongName  cterm=bold
"hi WongSymbol  cterm=bold
"hi WongLink  cterm=bold
"hi WongLink2  cterm=bold
"hi WongUnderLine  cterm=bold
"hi WongQ  cterm=bold
"hi WongTag  cterm=bold 
"imap <c-l> >>><space>
"imap <c-j> <s-q>:<space>
"imap <c-u> <s-q>@<s-s>:<space>
"imap <c-k> <s-l><s-o>:<space>
"imap <c-i> <s-l><s-o>@<s-s>:<space>
"imap <c-o> ____<esc>hi
""imap <c-'> :-> 
"imap <c-]> :-> 

"abbreviate mymail *scott.chong.wong@gmail.com*
"abbreviate :> :->
"abbreviate := :=>
"let g:snips_trigger_key = '<c-b>'
"imap <Tab> <C-N>
