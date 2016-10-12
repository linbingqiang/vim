<<<<<<< HEAD
 " Python PEP8 standard
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set textwidth=79
 set expandtab
 " solarized_termcolors autoindent
 set fileformat=unix
 set nu
 set encoding=utf-8
 " solarized
 set t_Co=16 
 let g:solarized_termcolors=256
 set background=dark
 colorscheme solarized

" Powerline
 let g:Powerline_symbols = 'fancy'

 " js html css
 au BufNewFile,BufRead *.js, *.html, *.css
     \ set tabstop=2
     \ set softtabstop=2 \ set shiftwidth=2
  
 set nocompatible              " required
 filetype plugin on                  " required
  
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
  
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
  
 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
  
 " Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
 Bundle 'Valloric/YouCompleteMe'

 " powerline 
 Bundle 'Lokaltog/vim-powerline'

 " tagbar
 Bundle 'majutsushi/tagbar'

 " TabBar
 Bundle 'humiaozuzu/TabBar'
 " File Browsing
 Plugin 'scrooloose/nerdtree'

 "------------------
 "" Code Completions
 "------------------
 Bundle 'Shougo/neocomplcache'
 Bundle 'mattn/emmet-vim'
 Bundle 'Raimondi/delimitMate'
 Bundle 'ervandew/supertab'
 " snippets
 Bundle 'garbas/vim-snipmate'
 Bundle 'honza/vim-snippets'
 "------ snipmate dependencies -------
 Bundle 'MarcWeber/vim-addon-mw-utils'
 Bundle 'tomtom/tlib_vim'
 
 "-----------------
 " Fast navigation
 "-----------------
 Bundle 'edsono/vim-matchit'
 Bundle 'Lokaltog/vim-easymotion'
 
 "--------------
 " Fast editing
 "--------------
 Bundle 'tpope/vim-surround'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'sjl/gundo.vim'
 Bundle 'godlygeek/tabular'
 Bundle 'nathanaelkane/vim-indent-guides'

 " 语法提示
 Bundle 'scrooloose/syntastic'

 " git
 Bundle 'tpope/vim-fugitive'

 Bundle 'kien/ctrlp.vim'

  
 " All of your Plugins must be added before the following line
 call vundle#end()            " required

 autocmd vimenter * NERDTree
 nmap <F6> :NERDTreeToggle<cr>
 " Nerd Tree
 let NERDChristmasTree=0
 let NERDTreeWinSize=20
 let NERDTreeChDirMode=2
 let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
 " let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
 let NERDTreeShowBookmarks=1
 " let NERDTreeWinPos = "right"

 " nerdcommenter
 let NERDSpaceDelims=1
 " nmap <D-/> :NERDComToggleComment<cr>
 let NERDCompactSexyComs=1

 " Python AutoComplete
 let g:ycm_python_binary_path = '/usr/bin/python3'

 " show tagbars
 nmap <F8> :TagbarToggle<CR>
 " tagbar width
 let g:tagbar_width = 20

 " tabbar
 let g:Tb_MaxSize = 2
 let g:Tb_TabWrap = 1

 autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

 " configure syntastic syntax checking to check on open as well as save
 let g:syntastic_check_on_open=1
 let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_wq = 0
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*"
 " ctrlp
 set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif "
 let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


 set laststatus=2 " Always display the status line
 set statusline+=%{fugitive#statusline()} "  Git Hotness

 hi Tb_Normal guifg=white ctermfg=white
 hi Tb_Changed guifg=green ctermfg=green
 hi Tb_VisibleNormal ctermbg=252 ctermfg=235
 hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

=======
set nocompatible              " required
filetype off                  " required

set splitbelow
set splitright
set nu
" make your code look pretty
let python_highlight_all=1
syntax on

" set to change splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" add  the proper PEP8 indentation
au BufNewFile,BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=unix

" full stack development
au BufNewFile,BufRead *.js, *.html, *.css
	\set tabstop=2
	\set softtabstop=2
	\set shiftwidth=2

" Flagging unnecessary whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" utf-8 support
set encoding=utf-8

" ycm setting
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf=0
let g:ycm_key_invoke_completion = '<C-/>'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"	project_base_dir = os.environ['VIRTUAL_ENV']
"	activate_this = os.path.join(project_base_dir, '/bin/activate_this.py')
"	execfile(activate_this, dict(__file__=activate_this))
"EOF


" hide .pyc files
let NERDTreeIgnore=['\.pyc$','\~$']

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" add SimpylFold
" Plugin 'tmhedberg/SimpylFold'

" Autoindent will help but in some cases, it doesn't always do what you want
" especially when it comes to conforming to PEP8 standar, to fix this ,use 
" the indentpython.vim extension
Plugin 'vim-scripts/indentpython.vim'

" YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

" Conque is a Vim plugin which allows you to run interactive program
Bundle 'jewes/Conque-Shell'


" hava VIM check your syntax on each save with the syntastic extension
" Plugin 'scrooloose/syntasitc'

" add PEP8 checking with this nifty little plugin:
Plugin 'nvie/vim-flake8'

" color schemes
 Plugin 'jnurmine/Zenburn'
 Plugin 'altercation/vim-colors-solarized'

"  colorscheme solarized

" file browsing
Plugin 'scrooloose/nerdtree'

" use tabs
Plugin 'jistr/vim-nerdtree-tabs'

" git integration
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
>>>>>>> 64bd584efb3e150259036eb8b3001291664e7ed3
