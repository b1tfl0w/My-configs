"show line numbers:
set number

"set dark background:
"set background=dark

" supercollider flash on evaluate:
let g:scFlash = 1

" YCM compilation flags
let g:ycm_global_ycm_extra_conf = '/home/bitflow/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = "~/.ycm_c-c++_conf.py"

"let g:ycm_goto_buffer_command = 'split' " 'same-buffer'
nnoremap <F5> :rightbelow YcmCompleter GoTo<CR>

"theme params:
set termguicolors
set t_Co=256

"set color theme
"available default themes:
" blue        deep-space  delek       elflord     industry    morning     pablo       ron         slate       zellner
" darkblue    default     desert      evening     koehler     murphy      peachpuff   shine       torte	      space-sb
colo space-sb

"hi Normal ctermbg=NONE guibg=NONE
"hi NonText ctermbg=NONE guibg=NONE

" adjust colors sb ^_^
hi ModeMsg term=reverse cterm=reverse gui=reverse ctermfg=2 ctermbg=0
hi StatusLine term=bold,reverse cterm=bold,reverse gui=bold,reverse ctermfg=Black ctermbg=Grey
hi StatusLineNC term=bold,reverse cterm=bold,reverse gui=bold,reverse ctermfg=Black ctermbg=Grey
hi VertSplit term=bold,reverse cterm=bold,reverse gui=bold,reverse ctermfg=Black ctermbg=Grey
highlight Cursor guifg=NONE guibg=Green
highlight lCursor guifg=NONE guibg=Cyan

" Add full file path to your existing statusline, F full path, f relative path
"set statusline+=%F
set laststatus=2

syntax on
filetype plugin indent on
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" ultisnip settings:

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Vim Processing Ide
Plug 'https://github.com/sophacles/vim-processing.git'

" YouCompleteMe
Plug 'https://github.com/Valloric/YouCompleteMe.git'

" scvim Supercollider
Plug 'https://github.com/supercollider/scvim.git'

" open-browser
Plug 'https://github.com/tyru/open-browser.vim.git'

" Following are for SnipMate !!! 
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Powerline
" Plug 'vim-airline/vim-airline'

" Powerline themes
" Plug 'vim-airline/vim-airline-themes'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
