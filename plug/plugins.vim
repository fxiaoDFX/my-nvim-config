call plug#begin('~/.config/nvim/autoload/plugged')

    " Conquer of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " vim-surround
    Plug 'tpope/vim-surround'
    " block comment based on function signature
    Plug 'heavenshell/vim-jsdoc', {'for': ['javascript', 'javascript.jsx', 'typescript'], 'do': 'make install'}

call plug#end()
