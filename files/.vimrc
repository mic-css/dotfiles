" ==================================================================
" CORE
" ==================================================================

" PANES
set splitbelow
set splitright
set mouse=a

" LINES
set number relativenumber
set cursorline

" TABS
filetype plugin indent on
set expandtab " on pressing tab, insert 2 spaces
set tabstop=2 " show existing tab with 2 spaces width
set softtabstop=2
set shiftwidth=2 " when indenting with '>', use 2 spaces width

" HISTORY
set undofile
set undodir=~/.vim/undo_files//
set directory=~/.vim/swap_files//
set backupdir=~/.vim/backup_files//

" CLIPBOARD
set clipboard^=unnamed

" PERFORMANCE
set synmaxcol=200


" ==================================================================
" PLUGINS
" ==================================================================

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-vinegar'
Plug 'SirVer/ultisnips'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
call plug#end()

" APPEARANCE
colorscheme nova
let g:airline_powerline_fonts = 1
let g:indentLine_enabled = 0
let g:indentLine_setColors = 0
let g:indentLine_char = '│'
set encoding=utf-8

" LINTING
let g:ale_sign_error = '✘'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {
\  'sh': ['shell'],
\  'ruby': ['rubocop'],
\  'python': ['pylint'],
\}
let g:ale_fixers = {
\  'javascript': ['eslint'],
\  'vue': ['prettier'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'css': ['prettier'],
\}

" NAVIGATION
" let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore ~/.ignore --hidden -g ""'
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--path-to-ignore ~/.ignore --hidden', <bang>0)

" SHORTCUTS
let mapleader=' '
nnoremap <leader>e :Explore<cr>
nnoremap <leader>] :Tags<cr>
nnoremap <leader>s :Snippets<cr>
nnoremap <C-p> :FZF<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <C-f> :Ag<space>
nnoremap <leader>: :History:<cr>
nnoremap <leader>p :silent %!prettier --stdin --print-width 100 --single-quote --trailing-comma all<CR>
inoremap jk <Esc>
