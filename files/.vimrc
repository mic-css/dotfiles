" Silence DeprecationWarning in UtilSnips with Python 3.7
if has('python3')
  silent! python3 1
endif

" ==================================================================
" PLUGINS
" ==================================================================

" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-vinegar'
Plug 'SirVer/ultisnips'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" NOVA-VIM
colorscheme nova

" ALE
let g:ale_fix_on_save = 0
let g:ale_linters = {
\  'sh': ['shell'],
\  'javascript': ['eslint', 'flow'],
\  'ruby': ['rubocop'],
\  'python': ['pylint'],
\}
let g:ale_fixers = {
\  'sh': ['shfmt'],
\  'javascript': ['prettier', 'eslint'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'css': ['prettier'],
\  'python': ['yapf'],
\  'ruby': ['rubocop'],
\}

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore ~/.ignore --hidden -g ""'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--path-to-ignore ~/.ignore --hidden', <bang>0)

" SHORTCUTS
let mapleader=' '
nnoremap <leader>e :Explore<cr>
nnoremap <leader>] :Tags<cr>
nnoremap <leader>s :Snippets<cr>
nnoremap <leader>f :FZF<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>/ :Ag<space>
nnoremap <leader>: :History:<cr>
nnoremap <leader>p :silent %!prettier --stdin --print-width 100 --single-quote --trailing-comma all<CR>
inoremap jk <Esc>


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
