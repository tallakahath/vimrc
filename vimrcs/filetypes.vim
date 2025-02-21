""""""""""""""""""""""""""""""
" => VASP section
""""""""""""""""""""""""""""""
au BufNewFile,BufRead INCAR set ft=fortran


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
let pymode_python='python3'
au FileType python syn keyword pythonDecorator True None False self

au FileType python set cc=119
au FileType python highlight ColorColumn ctermbg=9

au FileType python map <buffer> F :set foldmethod=indent<cr>

" au FileType python set makeprg=mypy
" au FileType python nnoremap <leader>m :silent make %:S <Bar> copen <CR>


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> $log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

au FileType gitcommit call setpos('.', [0, 1, 1, 0])


""""""""""""""""""""""""""""""
" => JSON section
"""""""""""""""""""""""""""""""
au FileType json :set foldmethod=syntax

""""""""""""""""
" => C++ section
""""""""""""""""
au FileType cpp :set foldmethod=syntax


""""""""""""""""""""""""""""""
" => FORTRAN section
""""""""""""""""""""""""""""""
au FileType fortran :set foldmethod=syntax

""""""""
" => Ark
""""""""
autocmd BufNewFile,BufRead *.ark set filetype=cfg
au FileType cfg :set foldmethod=syntax
