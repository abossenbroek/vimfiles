if &compatible
  set nocompatible               " Be iMproved
endif

filetype off                  " required


" adjust configuration for such hostile environment as windows {{{
if has("win32") || has("win16")
  source $vimruntime/mswin.vim
  set guifont=Source_Code_Pro_Medium:h12
  set rtp+=~\vimfiles\bundle\Vundle.vim
  let os = 'win32'
elseif has("gui_macvim")
  let os = 'mac'
  set guifont=sauce\ code\ powerline\ light:h14
else
  let os=substitute(system('uname'), '\n', '', '')
  if os == 'darwin' || os == 'mac'
    let os = 'mac'
  endif
endif

if os == 'mac' || os == 'linux' || os == 'Linux' || os == 'Darwin'
" set the runtime path to include vundle
  set rtp+=~/.vim/bundle/Vundle.vim
endif
" }}}
"

" set the runtime path to include Vundle and initialize
call vundle#begin()

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'jeaye/color_coded'

  Plugin('mh21/errormarker.vim')
  Plugin('sheerun/vim-polyglot')

  Plugin('tpope/vim-commentary')

  "call dein#add('matchit.zip')
  Plugin('scrooloose/nerdtree')
  Plugin('ntpeters/vim-better-whitespace')
  "call dein#add('ctrlpvim/ctrlp.vim')
  Plugin('airblade/vim-gitgutter')
  Plugin('bling/vim-airline')
  Plugin('tpope/vim-fugitive')
  Plugin('scrooloose/syntastic')
  Plugin('pgdouyon/vim-accio')
  Plugin('nlknguyen/vim-maven-syntax')
  Plugin('tpope/vim-sensible')
  Plugin('Shougo/neomru.vim')
  Plugin('mhinz/vim-signify')
  Plugin('luochen1990/rainbow')
  Plugin('klen/python-mode')
  Plugin('vim-pandoc/vim-pandoc')
  Plugin('vim-pandoc/vim-pandoc-syntax')
  Plugin('python/black')
  "Plugin('JamshedVesuna/vim-markdown-preview')
  " lazy load on insert mode

  Plugin('justmao945/vim-clang')
  Plugin('vim-scripts/c.vim')
  Plugin('octol/vim-cpp-enhanced-highlight')

  Plugin('idanarye/vim-merginal')
  Plugin('sickill/vim-monokai')
  Plugin 'fatih/vim-go'
  Plugin 'hashivim/vim-terraform'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'editorconfig/editorconfig-vim'

  "call dein#add('Konfekt/FastFold')


" Required:
call vundle#end()

" Required:
filetype plugin indent on

filetype off                  " required

set encoding=utf-8
set fileencoding=utf-8

syn on
syn match texInputFile      "\\\(epsfig\|input\|usepackage\|rinline\|lstinline\)\s*\(\[.*\]\)\={.\{-}}"      contains=texStatement,texInputCurlies,texInputFileOpt
syn match rnoweb      "\\\(epsfig\|input\|usepackage\|rinline\|lstinline\)\s*\(\[.*\]\)\={.\{-}}"      contains=texStatement,texInputCurlies,texInputFileOpt
set hidden

let R_assign = 2

" Tab settings {{{
set expandtab
set tabstop=2
set shiftwidth=2
" }}}

set tw=79

" Settings for airline {{{
if exists(':AirlineToggle')
  let g:airline#extensions#tabline#enabled = 1
  set laststatus=2
  if has("gui_running")
    let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    let g:airline_symbols.space = "\ua0"
  endif
endif
" }}}

" Settings for fugitive {{{
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gh :Gpush<cr>
nnoremap <leader>gl :Gpull<cr>
" }}}

set autoindent
set number

" Settings for syntastic {{{
if exists(':SyntasticInfo')
  set statusline+=%#warningmsg#
  set statusline+=%{fugitive#statusline()}
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  " Configuration for lintr {{{
  let g:syntastic_enable_r_lintr_checker = 1
  let g:syntastic_r_checkers = ['lintr']
  let g:syntastic_loc_list_height=5
  " }}}
endif
" }}}

" Kite settings {{{
set statusline+=%{kite#statusline()}
nmap <silent> <buffer> gK <Plug>(kite-docs)
" }}}

" Folding {{{
set foldenable
set foldlevelstart=15   " open most folds by default
set foldmethod=indent
" space open/closes folds
nnoremap <space> za
" }}}

" Short-cuts {{{
" NERD-tree {{{
if exists(":NERDTreeToggle")
  map <C-n> :NERDTreeToggle<CR>
endif
" }}}
" }}}


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set backup		" keep a backup file
set history=100		" keep 100 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
if os == 'mac' || os == 'Linux'
  set tags+=~/.vim/systags
  set backupdir=~/.vim/backup
elseif os == 'Win32'
  set tags+=~/vimfiles/systags
  set backupdir=~/vimfiles/backup
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	set background=dark
	set hlsearch
  colorscheme monokai
elseif !has("gui_running")
	syntax on
  colorscheme elflord
endif

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

    if os == 'mac'
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


  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()

  " Remove trailing whitespace
  autocmd BufWritePre *.Rmd,DESCRIPTION,NAMESPACE,*.Rnw,*.tex,*.sty,*.c,*.h,*.cpp,*.hpp,*.sc :StripWhitespace

	nnoremap ,l mayiw`a:exe "!dict -d moby-thes - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
	nnoremap ,n mayiw`a:exe "!dict -d nld-eng  $(echo " . @" . "\| recode latin1..utf-8)"<CR>
	"imap <leader>t mayiw`a:exe "!dict -d moby-thes - $(echo " . @" . "\| recode latin1..utf-8)"<CR>

else
endif " has("autocmd")

let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" Settings for indent-guides {{{
if exists(':IndentGuidesToggle')
  :IndentGuidesToggle
endif
" }}}

if exists(':SortScalaImports')
endif
" Settings for rainbow {{{
"if exists(':RainbowToggle')
let g:rainbow_active = 1
" }}}

"TODO comment
"let g:rooter_patterns = ['configure.ac', '.git/', 'DESCRIPTION', '.Rproj.user']

: let g:rainbow_active = 1
" GUI usually can use any color, so we devide a color circle into parts:
" 5-based circle, use order: 24130(mod 5); for 6-based, use 241-530(mod 6)
" A standard color wheel or rainbow can be obtained via: (3: RGB)
"   R 255,      G 0->255,   B 0;        #FF0000->#FF4000->#FF8000->#FFC000->
"   R 255->0,   G 255,      B 0;        #FFFF00->#C0FF00->#80FF00->#40FF00->
"   R 0,        G 255,      B 0->255;   #00FF00->#00FF40->#00FF80->#00FFC0->
"   R 0,        G 255->0,   B 255;      #00FFFF->#00C0FF->#0080FF->#0040FF->
"   R 0->255,   G 0,        B 255;      #0000FF->#4000FF->#8000FF->#C000FF->
"   R 255,      G 0,        B 255->0;   #FF00FF->#FF00C0->#FF0080->#FF0040->
" I'll use the Munsell color wheel (5-based):
" #F0EA00, #B1D700, #00CA24, #00A877,   #EE3338, #F26C36, #F89734, #FFC32D,
" #00A78A, #00A59C, #00A3AC, #0093AF,   #FFF215, #CCDC3C, #90C84B, #47B754,
" #0082B2, #006EBD, #7D00F8, #9F00C5,   #00A85A, #008F71, #007683, #2A5D8F,
" #B900A6, #D00081, #E20064, #F2003C,   #3F4096, #6D3D94, #953993, #BE3291,
" #F85900, #F28800, #F2AB00, #EFCC00,   #ED2790, #ED2B78, #EE2F62, #EE324C,
" cterm colors: DarkRed, Brown, DarkGreen, DarkCyan, DarkBlue, DarkMagenta;
" (Black Gray) Red, Yellow, Green, Cyan, Blue, Magenta; (DarkGray, White)
: let munsell5 = ['#00EA42', '#E700F8', '#FECC00', '#00A3EA', '#E20064']
: let basic5 = ['DarkCyan','DarkMagenta','DarkGreen','DarkBlue','DarkRed']
: let enpairs = [ ['(',')'], ['\[','\]'], ['{','}'], ]
: scriptencoding utf-8                  " For utf8 characters.
: let zhpairs = [['（','）'],['【','】'],['“','”'],['‘','’'],['《','》'],]
: scriptencoding
: let separators = ',\|;'
: let operators = '&&\|||\|==\|!=\|>=\|<='
: let xhtml_ignore = '\<script\>\|\<style\>'    " prevent highlight errors
: let html_ignore = xhtml_ignore.'\|\<area\>\|\<base\>\|\<br\>\|\<col\>\|\<embed\>\|\<hr\>\|\<img\>\|\<input\>\|\<link\>\|\<meta\>\|\<param\>\|\<source\>'
: let tex_ignore = '\<equation\>\|\<eqnarray\>\|\<multline\>\|\<split\>\|\<gather\>\|\<align\>\|\<verbatim\>'
: let g:rainbow_conf = {
\   'guifgs': munsell5,
\   'ctermfgs': basic5,
\   'operators': '_'.separators.'\|'.operators.'_',
\   'parentheses': zhpairs + enpairs,
\   'separately': { '*': {}, }
\   }
: let g:rainbow_conf.separately['xml'] = {
\   'parentheses': [
\       ['<\z(\a\w*\)\%(\_s*\| \_[^>]*\%(\/\)\@1<!\)>', '</\z1>'],
\       ] + enpairs,
\   }
: let g:rainbow_conf.separately['xhtml'] = {
\   'parentheses': [
\   [   '<\z(\%('.xhtml_ignore.'\)\@!\a\w*\)\%(\_s*\| \_[^>]*\%(\/\)\@1<!\)>',
\       '</\z1>'
\           ],
\       ] + enpairs,
\   }
: let g:rainbow_conf.separately['html'] = {
\   'parentheses': [
\   [   '<\z(\%('.html_ignore.'\)\@!\a\w*\)\%(\_s*\| \_[^>]*\%(\/\)\@1<!\)>',
\       '</\z1>'
\           ],
\       ] + enpairs,
\   }
: let g:rainbow_conf.separately['vim'] = {
\   'parentheses': [
\       ['\<fu\%[nction][!]\{,1}\ze\s\+.*)', '\<endf\%[unction]\>'],
\       ['\<for\>', '\<endfo\%[r]\>'],
\       ['\<wh\%[ile]\>', '\<endw\%[hile]\>'],
\       ['\<if\>', '_\<elsei\%[f]\>\|\<el\%[se]\>_', '\<en\%[dif]\>'],
\       ['\<try\>', '_\<cat\%[ch]\>\|\<fina\%[lly]\>_', '\<endt\%[ry]\>'],
\       ] + enpairs,
\   }
: let g:rainbow_conf.separately['tex'] = {
\   'parentheses': [
\   [   '\\begin{\z(\%('.tex_ignore.'\)\@![^}]*\)}',
\       '_\\item\|\\bibitem_',
\       '\\end{\z1}'
\           ],
\       ['\\left\\\{,1}.','\\right\\\{,1}.'],
\       ['\\langle', '\\rangle'],
\       ] + enpairs + zhpairs,
\   }

" Set position (left or right) if neccesary (default: "left").
let g:sidepanel_pos = "right"
" Set width if neccesary (default: 32)
let g:sidepanel_width = 26

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" clang error message
set errorformat=%f:%l:%c:\ %t%s:\ %m

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

map <Leader>j :make<CR>

autocmd BufWritePre *.py execute ':Black'

"TODO: comment

set exrc
set secure

" vim:foldmethod=marker:foldlevel=0:
