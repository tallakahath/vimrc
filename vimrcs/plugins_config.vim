"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
" call pathogen#infect('~/.vim_runtime/sources_forked/{}')
call pathogen#infect('~/.vim_runtime/sources_non_forked/{}')
call pathogen#helptags()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="dracula"
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-latex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_MultipleCompileFormats = 'pdf'
" let g:Tex_ViewRule_pdf = 'open -a preview'
let g:Tex_ViewRule_pdf = 'evince'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Syntastic (syntax checker)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_python_checkers=['pylint', 'flake8']
""let g:syntastic_python_pylint_post_args='--extension-pkg-whitelist=numpy'
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 2
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_rst_checkers = ['Sphinx']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => ALE (syntax checker)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['ruff', 'ruff_format'],
\}

let g:ale_linters = {
\   'python': ['ruff'],
\}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 0
" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
" let g:ale_completion_enabled = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:ale_python_pylint_options='--extension-pkg-allow-list=rdkit,numpy'

" Set a toggle-able pylint config
function! TogglePylint()
    " if !exists('g:ale_linters["python"]')
    "     let g:ale_linters["python"] = ['ruff']
    " endif

    if index(g:ale_linters['python'], 'pylint') == -1
        let g:ale_linters['python'] += ['pylint']
        let g:ale_lint_on_text_changed = 'never'
        let g:ale_lint_on_insert_leave = 0
        echo "Enabled pylint"
    else
        let g:ale_linters['python'] = filter(g:ale_linters['python'], {idx, val -> val != 'pylint'})
        let g:ale_lint_on_text_changed = 'normal'
        let g:ale_lint_on_insert_leave = 1
        echo "Disabled pylint"
    endif
endfunction

" Map a key to toggle pylint (optional)
nnoremap <leader>p :call TogglePylint()<CR>



" Set a toggle-able mypy config
function! ToggleMypy()
    " if !exists('g:ale_linters["python"]')
    "     let g:ale_linters["python"] = ['ruff']
    " endif

    if index(g:ale_linters['python'], 'mypy') == -1
        let g:ale_linters['python'] += ['mypy']
        let g:ale_lint_on_text_changed = 'never'
        let g:ale_lint_on_insert_leave = 0
        echo "Enabled mypy"
    else
        let g:ale_linters['python'] = filter(g:ale_linters['python'], {idx, val -> val != 'mypy'})
        let g:ale_lint_on_text_changed = 'normal'
        let g:ale_lint_on_insert_leave = 1
        echo "Disabled mypy"
    endif
endfunction

" Map a key to toggle pylint (optional)
nnoremap <leader>m :call ToggleMypy()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <silent> <leader>tt :TagbarToggle<cr>


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
" ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
" snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
" imap <C-J> <Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>mm :MRU<CR>


"""""""""""
" => pymode
"""""""""""
" let pymode_rope_completion=1
" let pymode_rope_complete_on_dot=1
" let pymode_rope_autoimport = 0

""""""""""""
" => dracula
""""""""""""


""""""""""""
" => taglist
""""""""""""
" let g:Tlist_Ctags_CMD='/u/nyc/decolven/.local/bin/ctags'
" nnoremap <silent> <leader>tt :TlistToggle<cr>
