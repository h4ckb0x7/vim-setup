"Enable Pathogen
execute pathogen#infect()

"Color Scheme Settings
syntax on
set background=dark
colorscheme wombat256

"File & Save Settings
set nocp					"Enable Non-Compatible VI Features
set nobackup				"No Backup File (Original File Before Edits)
set nowritebackup			"Saves to Original File
set noswapfile				"Swap Files are a Distraction

"Tab/Indentation Settings
set tabstop=4				"Tab Width
set shiftwidth=4			"Indentation Width
set expandtab				"Convert Tab to Spaces
set autoindent				"Retain Indentation from Previous Line
filetype plugin indent on	"Filetype Based Indenting

"Line Number Settings
set number					"Current Line Shows Absolute Line Number
set relativenumber			"Other Lines Show Relative Line Number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE

"Miscellaneous Settings
set noerrorbells            "Turn Off Error Bells

"Disable Arrow Keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"Enable Mouse Scrolling
set mouse=a

"Exuberant Ctags
set tags=./tags;/

"Explorer Settings
let g:netrw_liststyle=1
let mapleader=" "
map <leader>k :Explore<CR>

"Settings for TagList
let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
nmap ; :TlistToggle<CR>

"Settings for NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"nmap <C-n> :NERDTreeToggle<CR>
