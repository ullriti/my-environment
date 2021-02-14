filetype off                    " deaktiviert die File-Typen Erkennung

" load Pathogen (
    set nocp
    execute pathogen#infect()
" )

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

" Aussehen (
    set background=dark
    let g:gruvbox_contrast_dark='hard'
    colorscheme gruvbox             " ein schönes Colorscheme
    set number                      " zeigt Zeilennummern an
    "set relativenumber              " Zeilennummern relativ zur aktuellen Zeile
    set ruler                       " Zeilennummmern in Statusbar
    set showcmd                     " zeigt Kommando in unterster Zeile an 
    set laststatus=2                " zeigt immer Status Line an
    set nocursorline                " nocursorline
" )

" Nuetzliches (
    set encoding=utf-8              " UTF-8 setzen
    set visualbell                  " Statt Ton nur blinkender Cursor
    set modeline                    " In einer Datei können zusätziche VIM Commands angegeben werden
    set wildmenu                    " Besseres Auswahlmenue bei VIM Kommandos
    set backspace=indent,eol,start  " Backspace nützlich machen
    set scrolloff=20                " Datei nicht erst am Ende scrollen
" )

" Suche (
    set showmatch                   " hebe den Match bei einer Suche hervor
    set ignorecase                  " ignoriere Gross-/Kleinschreibung bei Suche
    set incsearch                   " Suche waehrend der Eingabe der Suche
    set hlsearch                    " Hebe alle Matches hervor
" )

" Tabs (
    set tabstop=4                   " Tab auf 4 Zeichen heruntersetzen
    set expandtab                   " Tab durch Leerzeichen ersetzen
    set softtabstop=4               " Tab auf 4 Zeichen heruntersetzen
    set shiftwidth=4                " Ein Tab = 4 Leerzeichen
    map  <C-l> :tabn<CR>
    map  <C-h> :tabp<CR>
    map  <C-n> :tabnew<CR>
" )

" Folding (
    set foldmethod=indent           " Folding an Ident Level fest machen
    set foldnestmax=10              " maximal 10 Folding Tiefe
    set nofoldenable                " Folding wird nicht automatisch beim Start angewendet
"   nnoremap <space> za             " Kuerzel fuer Folding
    set foldlevelstart=10           " Start mit dem Folding beim Start (im Hintergund)
" )

" Syntax (
    set autoindent                  " automatische Code Erkennung (Einruekungen)
    set smartindent                 " Verbesserte Code Erkennung
    syntax enable                   " Code Syntax anzeigen
    filetype plugin indent on       " File-Typen durch Plugins erkennen
" )

" Lightline Config (
    set laststatus=2                " Aktiviere Lightline
" )

" NerdTree Config (
    let mapleader = ","             " Setze anderen Leader fuer NerdTree
    nmap <leader>ne :NERDTree<cr>   " Setze Shortcut fuer NerdTree
    let NERDTreeShowHidden=1        " Zeige versteckte Files an
" )
