set tabstop=4 shiftwidth=2 
set number
set autochdir

set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,
      \ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

if has("gui_macvim")
  let macvim_skip_colorscheme = 1
endif

set guicursor+=i-ci:ver10-Cursor/lCursor

set shortmess+=I

nnoremap <leader>f :Sex<cr>

if has("gui_running")
  colorscheme acme
  nnoremap <Leader>c :colorscheme acme
  set macmeta
else
  set mouse=a
  nnoremap <f9> :update<bar>make<cr>
  hi clear SpellBad | hi SpellBad cterm=underline
  autocmd! ColorScheme * hi clear SpellBad | hi SpellBad cterm=underline
endif

nnoremap <silent> <Leader>d :set background=dark<bar>hi clear CursorLine<cr>

set cursorline
hi clear CursorLine
augroup CLClear
  autocmd! ColorScheme * hi clear CursorLine
augroup END

set statusline +=\ %n\ %*
set statusline +=%{&ff}%*
set statusline +=%y%*
set statusline +=\ %<%t%*
set statusline +=%m%*
set statusline +=%=%*
set statusline +=%5l%*
set statusline +=/%L%*
set statusline +=%4v\ %*

let g:netrw_liststyle=3

autocmd BufRead,BufNewFile *.txt,*.md,*.tex setlocal spell spelllang=en,el | 
      \ set textwidth=80 | nnoremap <silent> <Leader>g :Goyo<cr>

autocmd FileType tex setlocal makeprg=cd\ %:h\ &&\ latexmk\ -xelatex\ %:p\ &&\ open\ %:p:r.pdf
autocmd FileType c setlocal makeprg=clang\ -o\ %:r\ %
autocmd FileType cpp setlocal makeprg=clang++\ -o\ %:r\ %
autocmd FileType markdown setlocal makeprg=markdownmk\ %\ &&\ open\ %:r.html
autocmd FileType java setlocal makeprg=javac\ %

if filereadable("_localvimrc")
  source _localvimrc
endif

nnoremap <silent> <Leader>i1 :t. <bar> :s/.\=/=/g <bar> :norm $d80\|$<cr>
nnoremap <silent> <Leader>i2 :t. <bar> :s/.\=/-/g <bar> :norm $d80\|$<cr>

let &showbreak = '↪   '

function! Show_break()
  if line('$') > 99999
    let &showbreak = '↪      '
  elseif line('$') > 9999
    let &showbreak = '↪     '
  elseif line('$') > 999
    let &showbreak = '↪    '
  endif
endfunction

set cpo+=n

autocmd BufNewFile,BufRead * call Show_break()

autocmd Filetype html,xhtml,xml,xsl let b:unaryTagsStack=""

