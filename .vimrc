"Enable Pathogen
execute pathogen#infect()

"Color Scheme Settings
syntax on
set term=screen-256color
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
set nowrap                  "Turn Off Line Wrapping
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

"Split Windows & Buffers
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map + <C-W>+
map - <C-W>-
let mapleader=" "
map <leader>l :vsp<CR><C-W>l
nnoremap <F5> :buffers<CR>:buffer<Space>

"File Explorer Settings
let g:netrw_liststyle=1
let mapleader=" "
map <leader>k :Explore<CR>

"Settings for TagList
let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
nmap ; :TlistToggle<CR>

"Settings for Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineModified()
    if &filetype == "help"
        return ""
    elseif &modified
        return "+"
    elseif &modifiable
        return ""
    else
        return ""
    endif
endfunction

function! LightlineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return ""
    else
        return ""
    endif
endfunction

function! LightlineFugitive()
    if exists("*fugitive#head")
        let branch = fugitive#head()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction

function! LightlineFilename()
    return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
                \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
                \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
set laststatus=2
set noshowmode

"Code Folding
nnoremap <silent> <F5> zfa}<CR>
nnoremap <silent> <F6> zo<CR>
