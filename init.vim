" plugins path
source ~/.config/nvim/plug/plugins.vim

" plugin settings file path
source ~/.config/nvim/plug/settings/coc.vim " coc keymaps
source ~/.config/nvim/plug/settings/jsdoc.vim " <C-l> when cursor is on function
" use <C-j> and <C-k> to move between edit points when using autocompletion

" Color Scheme settings
set background=dark
colorscheme PaperColor " <--- color from plugin

" coc-settings.json custom directory
let g:coc_config_home = '~/.config/nvim/plug/settings'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" basic settings """
"set termguicolors
" number line
set nu relativenumber

" tab options
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent smartindent

" scroll options
set scrolloff=8

" set wrap options
set wrap linebreak nolist
set tw=80
set whichwrap+=<,>,h,l

" buffer options
set hidden
set wildmenu
set path+=**
set wildignore+=**/node_modules/**

" mouse options
set mouse=nv

" colors options
highlight CocUnusedHighlight guibg=Gray guifg=Pink

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" remap for vim shortcuts """
" <C-a> go to start of line
" <C-e> go to end of line
map <C-a> <ESC>^
imap <C-a> <ESC>I 
map <C-e> <ESC>$
imap <C-e> <ESC>A 
nnoremap <CR> o<ESC>k

" keymap for coc-yank
nnoremap <silent><space>y :<C-u>CocList -A --normal yank<cr>

" remap for rename current word
nmap <F2> <Plug>(coc-rename)

" buffer/tab keymaps
nnoremap gb :tabprevious<CR>
nnoremap gt :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>i

" turn off highlights
nmap <leader>h :noh<CR>

""" vim keymaps
" <C-u> --- scroll up fast
" <C-d> --- scroll down fast 

""" vim-surround keymaps
" cs[old-grouping-symbol][new-grouping-symbol] to change pairs
" yss[grouping-symbol] --- to wrap entire line
