filetype plugin indent on
filetype plugin on
set termguicolors
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
set hlsearch                   
set incsearch                   
set ignorecase                  
set smartcase 
set laststatus=2
set noshowmode

" VIM-PLUG
call plug#begin()

" THEME
Plug 'morhetz/gruvbox'

" ICONS
Plug 'ryanoasis/vim-devicons' 

" TOPBAR 
Plug 'vim-airline/vim-airline'

" TREE
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" SYNTAX
Plug 'sheerun/vim-polyglot'

" TYPING
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" AUTOCOMPLETE
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TEST
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" COLORS
Plug 'lilydjwg/colorizer'

" IDE
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter'

call plug#end()

" AIRLINE
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#formatter = 'unique_tail'

" SETTING NERDTree 
let NERDTreeQuitOnOpen=1

" CUSTOM MAPING
let mapleader=","

" SAVE
nmap <Leader>s :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>ss :wq<CR>:

" SPLIT S
nmap <Leader>p :vsp<CR>
nmap <Leader>pp :sp<CR>

" INIT.VIM
nmap <leader>r :so ~/.config/nvim/init.vim<CR>

" BUFFERS
nmap <Leader>qq :NERDTreeToggle<CR>
nmap \\ <leader>qq
nmap <Tab> :bnext<CR>
map <Leader>oo :Buffers<CR>
nnoremap <Leader>k :bnext<CR>
nnoremap <Leader>j :bprevious<CR>
nnoremap <Leader>q :bdelete<CR>

" TESTING
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" SPLIT
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" SEARCH FILES
nmap <leader>d :Files<CR>
nmap <leader>f :BLines<CR>
nmap <leader>n :Rg<CR>

" SCROOLLING
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
nmap <Leader>es <Plug>(easymotion-s2)

" DEFINITION.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" THEME TRANSPARENT
function! TransparentBackground()
    highlight Normal guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE ctermbg=NONE
    set fillchars+=vert:\│
    highlight VertSplit gui=NONE guibg=NONE guifg=#444444 cterm=NONE ctermbg=NONE ctermfg=gray
endfunction

augroup MyColors
    autocmd!
    colorscheme gruvbox
   autocmd ColorScheme * call TransparentBackground() 
augroup END

syntax on
