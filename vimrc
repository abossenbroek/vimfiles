﻿

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" adjust configuration for such hostile environment as windows {{{
if has("win32") || has("win16")
  let R_path = "c:\\program files\\r\\r-3.4.0\\bin\\x64"
  let R_args = ['--sdi',  '--no-save',  '--quiet',  '--internet2']
  let R_latexcmd = 'xelatex'
  let R_start_libs = "base,stats,graphics,grDevices,utils,methods"
  let R_show_args = 1
  source $vimruntime/mswin.vim
  set guifont=sauce_code_powerline:h12
  set rtp+=~\vimfiles\repos\github.com\Shougo\dein.vim
  let deinpath='~\vimfiles\'
  let os = 'win32'
elseif has("gui_macvim")
  let R_path = '/usr/local/bin/'
  let R_args = ['--no-save',  '--quiet']
  let R_latexcmd = 'xelatex'
  let R_start_libs = "base,stats,graphics,grDevices,utils,methods"
  let R_show_args = 1
  let os = 'mac'
  set guifont=sauce\ code\ powerline\ light:h14
else
  let os=substitute(system('uname'), '\n', '', '')
  if os == 'darwin' || os == 'mac'
    let os = 'mac'
  endif
endif

if os == 'mac' || os == 'linux' || os == 'Linux'
" set the runtime path to include vundle
  let deinpath='~/.vim/'
  set rtp+=~/.vim/repos/github.com/Shougo/dein.vim
endif
" }}}
"

" Required:
call dein#begin(deinpath)

  " Let dein manage dein
  " Required:
  call dein#add('Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })

  call dein#add('jeaye/color_coded',
        \ {'on_ft' : ['c', 'cpp', 'h', 'hpp']})
  call dein#add('rbtnn/rabbit-ui.vim')
  call dein#add('majutsushi/tagbar', 
        \ {'on_ft' : ['c', 'cpp', 'h', 'hpp']})
  call dein#add('tpope/vim-dispatch',
        \ {'on_ft' : ['c', 'cpp', 'h', 'hpp', 'py']})
  call dein#add('michalbachowski/vim-wombat256mod')

  call dein#add('miyakogi/sidepanel.vim',
        \ {'hook_add': "
        \   let g:sidepanel_use_rabbit_ui = 1\n
        \   let g:sidepanel_config = {}\n
        \   let g:sidepanel_config['nerdtree'] = {}\n
        \   let g:sidepanel_config['tagbar'] = {}\n
        \   let g:sidepanel_config['buffergator'] = {}\n
        \ "})

  call dein#add('mh21/errormarker.vim')
  call dein#add('chase/vim-ansible-yaml',
        \ {'on_ft': ['yaml']})
  call dein#add('sheerun/vim-polyglot')

  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-repeat',
        \{'on_i': 1})
  call dein#add('tpope/vim-commentary',
        \{'on_i': 1})

  "call dein#add('editorconfig/editorconfig-vim')
  "call dein#add('matchit.zip')
  call dein#add('scrooloose/nerdtree')
  "call dein#add('scrooloose/nerdcommenter')
  call dein#add('ntpeters/vim-better-whitespace')
  "call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('coot/atp_vim',
        \ {'on_ft': ['tex']})
  call dein#add('airblade/vim-gitgutter')
  call dein#add('bling/vim-airline')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/syntastic',
        \ {'on_ft': ['R', 'cpp', 'py', 'java', 'h', 'hpp', 'c']})
  call dein#add('jalvesaq/Nvim-R',
        \ {'on_ft': ['r', 'rmd', 'rnoweb']} )
  call dein#add('mllg/vim-devtools-plugin',
        \ {'on_ft': ['r', 'rmd', 'rnoweb']} )
  call dein#add('pgdouyon/vim-accio',
        \ {'on_ft': ['c', 'cpp', 'java']} )
  call dein#add('nlknguyen/vim-maven-syntax',
        \ {'on_ft': ['xml']} )
  call dein#add('tpope/vim-sensible')
  call dein#add('Shougo/neomru.vim')
  call dein#add('mhinz/vim-signify')
  call dein#add('luochen1990/rainbow')
  call dein#add('klen/python-mode',
        \ {'on_ft': ['py']} )
  call dein#add('vim-pandoc/vim-pandoc')
  call dein#add('vim-pandoc/vim-pandoc-syntax')
  call dein#add('vim-pandoc/vim-rmarkdown',
        \ {'on_ft': ['Rmd']} )
  call dein#add('JamshedVesuna/vim-markdown-preview',
        \ {'on_ft': ['Rmd', 'md']} )
  " lazy load on insert mode
  call dein#add('Shougo/deoplete.nvim',
        \{'on_i': 1})

  call dein#add('justmao945/vim-clang',
      \{'on_ft': ['c', 'cpp']})
  call dein#add('vim-scripts/c.vim',
        \ {'on_ft': ['c', 'cpp', 'h', 'hpp']} )
  call dein#add('octol/vim-cpp-enhanced-highlight',
        \ {'on_ft': ['c', 'cpp', 'h', 'hpp']} )

  call dein#add('cakebaker/scss-syntax.vim')
  call dein#add('idanarye/vim-merginal')

  "call dein#add('Konfekt/FastFold')


" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


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
if os == 'Mac' || os == 'Linux'
  set tags+=~/.vim/systags
  set backupdir=~/.vim/backup,~/tmp
elseif os == 'Win32'
  set tags+=~/vimfiles/systags
  set backupdir=~/vimfiles/backup
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax on
	set background=dark
	set hlsearch
  colorscheme wombat256mod
endif
if !has("gui_running")
  colorscheme wombat256mod
endif
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

"TODO: comment

set exrc
set secure

" vim:foldmethod=marker:foldlevel=0:
