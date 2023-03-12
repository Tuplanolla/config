set nocompatible

syntax enable

filetype plugin indent on

set noautochdir
set autoindent " local to buffer
set autoread
set noautowrite
set noautowriteall
set background=dark
set backspace=indent,eol,start
set nobackup
set backupcopy=auto
set backupskip=
"" These `try` blocks are used with some of the newer settings
"" to remain compatible with all versions from 7.4 to 8.2.
try | set belloff=all | catch | endtry
set breakat=\ !,.:;?
set browsedir=current
augroup vimrc_cindent
  autocmd!
  autocmd FileType c setlocal
  \ cindent
  \ cinkeys=
  \ cinoptions=l1,c0
  \ cinwords=
  \ comments=nsr:/**,m:\ ,e:*/,sr:/*,m:\ ,e:*/,n://
  autocmd FileType coq setlocal
  \ comments=nsr:(**,m:\ ,e:*),sr:(*,m:\ ,e:*)
  autocmd FileType haskell setlocal
  \ comments=nsr:{-,m:\ ,e:-},nb:--
augroup END
if has('unnamedplus')
  set clipboard=unnamedplus,autoselect
else
  set clipboard=autoselect
endif
set cmdheight=1
set cmdwinheight=5
augroup vimrc_colorcolumn
  autocmd!
  autocmd BufEnter,VimEnter,WinEnter *
  \ setlocal colorcolumn=+1,73,81
  autocmd BufLeave,VimLeave,WinLeave *
  \ setlocal colorcolumn=
augroup END
set complete=.,w,b,k,s " local to buffer
set completeopt=menuone,preview
set noconfirm
set copyindent " local to buffer
set cpoptions=
augroup vimrc_cursor
  autocmd!
  autocmd BufEnter,VimEnter,WinEnter * setlocal
  \ cursorcolumn
  \ cursorline
  autocmd BufLeave,VimLeave,WinLeave * setlocal
  \ nocursorcolumn
  \ nocursorline
augroup END
if &t_Co == 8
  highlight CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
  highlight CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
elseif &t_Co == 16
  highlight CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
  highlight CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
elseif &t_Co == 256
  highlight CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=236
  highlight CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=236
else
  highlight CursorColumn gui=NONE guifg=NONE guibg=#262626
  highlight CursorLine gui=NONE guifg=NONE guibg=#262626
endif
set delcombine
"" This works, but is usually not helpful.
" set dictionary+=/usr/share/dict/words
set nodigraph
set directory=~/.vim/swap//,~/tmp//,/var/tmp//,/tmp//
set display=lastline
set eadirection=both
set encoding=utf-8
set noequalalways
set expandtab " local to buffer
augroup vimrc_filetype
  autocmd!
  autocmd BufNewFile,BufRead *.scad setfiletype c
augroup END
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:\ ,diff:\ "
try | set fixendofline | catch | endtry " local to buffer
" set foldclose=all
" set foldopen=all
set formatoptions=roqnj " local to buffer
set hidden
set history=4096
set nohlsearch
set noignorecase
set noincsearch
set noinsertmode
augroup vimrc_iskeyword
  autocmd!
  autocmd FileType tex
  \ setlocal iskeyword+=\\
augroup END
set nojoinspaces
set keymodel=startsel
set laststatus=2
set lazyredraw
set linebreak " local to window
set list " local to window
set listchars=tab:\|_,trail:_,extends:>,precedes:<,nbsp:_
augroup vimrc_matchpairs
  autocmd!
  autocmd FileType c setlocal
  \ matchpairs=(:),[:],{:}
  autocmd FileType coq setlocal
  \ matchpairs=(:),[:],{:}
augroup END
set matchpairs=(:),<:>,[:],{:} " local to buffer
set maxcombine=6
set nomodeline " local to buffer
set more
set mouse=
set nomousefocus
set mousemodel=popup
augroup vimrc_nrformats
  autocmd!
  autocmd FileType c
  \ setlocal nrformats=octal,hex,bin
  autocmd FileType haskell
  \ try | setlocal nrformats=hex,bin,unsigned |
  \ catch | setlocal nrformats=hex,bin |
  \ endtry
augroup END
try | set nrformats=unsigned |
\ catch | set nrformats= |
\ endtry " local to buffer
set number " local to window
"" When `cursorline` or `relativenumber` is enabled,
"" it is not helpful to `underline` the current line number.
highlight CursorLineNr term=NONE cterm=NONE
set numberwidth=1 " local to window
set preserveindent " local to buffer
set prompt
set redrawtime=1000
set relativenumber " local to window
augroup vimrc_relativenumber
  autocmd!
  autocmd BufEnter,VimEnter,WinEnter *
  \ if &number | setlocal relativenumber | endif
  autocmd BufLeave,VimLeave,WinLeave *
  \ if &number | setlocal norelativenumber | endif
augroup END
set report=0
set ruler
set scrolljump=1
set scrolloff=1
set selection=inclusive
set selectmode=
set shiftround
augroup vimrc_shiftwidth
  autocmd!
  autocmd FileType *
  \ setlocal shiftwidth=2
augroup END
doautocmd vimrc_shiftwidth FileType
set shortmess=atT
set showbreak=
set showcmd
set showmatch
set showmode
set showtabline=1
set sidescroll=1
set sidescrolloff=8
set smarttab
set softtabstop=-1 " local to buffer
set splitbelow
set splitright
set nostartofline
" set statusline=
set switchbuf=
set synmaxcol=800 " local to buffer
" set tabline=
set tabstop=2 " local to buffer
try | set termwinscroll=4096 | catch | endtry " local to buffer
set notildeop
set timeout
set ttimeout
set timeoutlen=10000
set ttimeoutlen=100
set undodir=~/.vim/undo//,~/tmp//,/var/tmp//,/tmp//
set noundofile " local to buffer
set undolevels=4096
set undoreload=-1
set updatecount=80
set updatetime=10000
set viminfo='4096,/4096,:4096,@4096,h,s64
set virtualedit=
set novisualbell
set whichwrap=
set nowildmenu
set wildmode=longest:list
set wildoptions=
set winaltkeys=no
set nowrap " local to window
set nowrapscan
set write
set nowriteany

"" Return the string from the beginning of the line
"" to the position of the cursor,
"" excluding the character that the cursor is on.
function! GetLineBeforeCursor()
  let l:col = col('.')
  if l:col <= 1
    return ''
  endif
  return getline('.')[:l:col - 2]
endfunction

"" Return the value of `strcharpart` if it is available or
"" a hopefully-equivalent value using `matchstr` otherwise.
function! StrCharPart(src, start, ...)
  let l:len = get(a:, 2, strwidth(a:src) - a:start)
  let l:skipcc = get(a:, 3, 0)
  if exists('?strcharpart')
    return strcharpart(a:src, a:start, l:len, l:skipcc)
  else
    return matchstr(a:src, '.\{,' . l:len . '}', 0, 1 + a:start)
  endif
endfunction

"" Return the character preceding the position of the cursor or
"" an empty string if the cursor at the beginning of the line.
function! GetCharBeforeCursor()
  let l:line = GetLineBeforeCursor()
  return StrCharPart(l:line, strchars(l:line) - 1)
endfunction

"" Perform a `<C-N>` or `<C-P>` completion operation
"" if the preceding character is part of a keyword or
"" merely insert or delete a `<Tab>` character.
"" This is a more elaborate version of the `CleverTab` function defined
"" in the documentation for `ins-completion`.
function! ClevererTab(shift)
  if GetCharBeforeCursor() =~ '\k'
    if a:shift
      return "\<C-P>"
    else
      return "\<C-N>"
    endif
  else
    if a:shift
      return "\<BS>"
    else
      return "\<Tab>"
    endif
  endif
endfunction

noremap ä \
noremap ö :

inoremap <silent> <Tab> <C-R>=ClevererTab(0)<CR>
inoremap <silent> <S-Tab> <C-R>=ClevererTab(1)<CR>

nnoremap <silent> <F1> :help!<CR>
nnoremap <silent> <F2> :bprevious<CR>
nnoremap <silent> <F3> :bnext<CR>
nnoremap <silent> <F4> :buffer #<CR>
nnoremap <silent> <F5> :redraw!<CR>
" nnoremap <F6>
" nnoremap <F7>
nnoremap <silent> <F8> :%s/\\s\\+$//<CR>
nnoremap <silent> <F9> :make!<CR>
" nnoremap <F10>
" nnoremap <F11>
" nnoremap <F12>
