set runtimepath^=~/.vim/plugin/vim-sensible
set runtimepath^=~/.vim/plugin/vim-indent-object

set tabstop=4 shiftwidth=2 expandtab
set number

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
else
  set mouse=a
  nnoremap <f9> :update<bar>make<cr>
endif

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
      \ set textwidth=80

autocmd FileType tex setlocal makeprg=cd\ %:h\ &&\ latexmk\ -xelatex\ %:p\ &&\ open\ %:p:r.pdf
autocmd FileType c setlocal makeprg=clang\ -o\ %:r\ %
autocmd FileType cpp setlocal makeprg=clang++\ -o\ %:r\ %
autocmd FileType markdown setlocal makeprg=markdownmk\ %\ &&\ open\ %:r.html
autocmd FileType java setlocal makeprg=javac\ %

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

