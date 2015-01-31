set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-16

" adjust configuration for such hostile environment as Windows {{{
if has("win32") || has("win16")
  let vimrplugin_i386 = 0
  let vimrplugin_r_path = "c:\\R\\R-3.1.2\\bin\\x64"
  source $VIMRUNTIME/mswin.vim
  set guifont=Sauce_Code_Powerline:h12
  set rtp+=~\vimfiles\bundle\Vundle.vim
  let vundlepath='~/vimfiles/bundle'
elseif has("gui_macvim")
  let os = 'Mac'
  set guifont=Sauce\ Code\ Powerline\ Light:h14
else
  let os=substitute(system('uname'), '\n', '', '')
  if os == 'Darwin' || os == 'Mac'
    let os = 'Mac'
  endif
endif
if os == 'Mac'
" set the runtime path to include Vundle 
  set rtp+=~/.vim/bundle/Vundle.vim
  let vundlepath='~/.vim/bundle'
endif
" }}}


" Vundle setup {{{
" initialize Vundle
call vundle#begin(vundlepath)

" let Vundle manage Vundle, required
Plugin 'airblade/vim-gitgutter'
Plugin 'matchit.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-latex/vim-latex'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'jcfaria/Vim-R-plugin'
Plugin 'mllg/vim-devtools-plugin'
Plugin 'tpope/vim-sensible'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'Shougo/neocomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" }}}

filetype plugin indent on    " required
syn on
set hidden

" Tab settings {{{
set expandtab
set tabstop=2
set shiftwidth=2
" }}}

set tw=79

" Settings for airline {{{
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
if has("gui_running")
  let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"
endif
" }}}

set autoindent
set number

" Settings for syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Configuration for lintr {{{
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = 1
" }}}
" }}}


" Folding {{{
set foldenable          
set foldlevelstart=10   " open most folds by default
set foldmethod=indent
" space open/closes folds
nnoremap <space> za
" }}}

" Short-cuts {{{
" NERD-tree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}
" ctrl-p {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" }}}
" }}}

" Settings for neocomplete {{{
" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" }}}


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set backup		" keep a backup file
set history=100		" keep 100 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set tags+=~/.vim/systags
set backupdir=~/.backup,~/tmp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax on
	set background=dark
	set hlsearch
endif
colorscheme wombat256
set t_Co=256

if has("gui_running")
  " Turn off useless toolbar
  set guioptions-=T
  " Turn off menu bar 
  set guioptions-=m
  " Turn off right-hand scroll-bar 
  set guioptions-=r
  " Turn off left-hand scroll-bar 
  set guioptions-=l
  " Turn off bottom scroll-bar 
  set guioptions-=b
  " Turn off bottom scroll-bar 
  set guioptions-=L
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,

	" Needed for omnicppcomplete
	set nocp

	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
		au!
		" For all text files set 'textwidth' to 78 characters.
		autocmd FileType text setlocal textwidth=78
		autocmd FileType tex setlocal textwidth=78
		autocmd FileType tex nmap <C-O> :!open %:r.pdf <CR>
		autocmd FileType c nmap <C-M> :!gcc -o %:r -ansi -Wall -Wextra -pedantic -w -Werror -g -O3 % <CR>
		autocmd FileType java set makeprg=ant\ -emacs 
		autocmd FileType java set efm=%f:%l:%v:%*\\d:%*\\d:%*\\s%m,%f:%l:%m,%A%*\\d.\ %t%.%#\ in\ %f,%C\ (at\ line\ %l),%-C\ %.%#,%Z%m 
		:nmap <C-S-N> :setlocal spell spelllang=nl <CR>
		:nmap <C-S-E> :setlocal spell spelllang=en <CR>
		:nmap <C-S-F> :setlocal spell spelllang=fr <CR>
		:nmap <C-S-S> :setlocal nospell <CR>

    if os == 'Mac'
      let g:Tex_CompileRule_pdf="latexmk -pdf $* && /usr/bin/open %:r.pdf"
      let g:Tex_DefaultTargetValue="pdf"
      let g:TreatMacViewerAsUNIX=1
      let g:Tex_ViewRule_pdf="open"
      let g:tex_flavor="tex"
      let g:Tex_GotoError=0
      set grepprg=grep\ -nH\ $*
      let vimrplugin_term = "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal"	
      let vimrplugin_term = "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal"
    endif
		let rrst_syn_hl_chunk = 1
		let rmd_syn_hl_chunk = 1

		" When editing a file, always jump to the last known cursor position.
		" Don't do it when the position is invalid or when inside an event handler
		" (happens when dropping a file on gvim).
		autocmd BufReadPost *
					\ if line("'\"") > 0 && line("'\"") <= line("$") |
					\   exe "normal g`\"" |
					\ endif

		" Because most .m files I open are matlab and not objective-c
		"autocmd FileType objc set filetype=matlab

		au BufNewFile,BufRead *.doxygen setfiletype doxygen 

		let g:DoxygenToolkit_briefTag_pre=""
		let g:DoxygenToolkit_paramTag_pre="@param "
		let g:DoxygenToolkit_returnTag="@returns   "
		let g:DoxygenToolkit_blockHeader=""
		let g:DoxygenToolkit_blockFooter=""
		let g:DoxygenToolkit_authorName="Anton Bossenbroek"
		let g:DoxygenToolkit_licenseTag="My own license\<enter>"
		let g:DoxygenToolkit_commentType = "C++" 
	augroup END

	nnoremap ,l mayiw`a:exe "!dict -d moby-thes - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
	nnoremap ,n mayiw`a:exe "!dict -d nld-eng  $(echo " . @" . "\| recode latin1..utf-8)"<CR>
	"imap <leader>t mayiw`a:exe "!dict -d moby-thes - $(echo " . @" . "\| recode latin1..utf-8)"<CR>

else
endif " has("autocmd")

" vim:foldmethod=marker:foldlevel=0:


