" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Make tabs as wide as two spaces
set tabstop=2

"" Respect modeline in files
set modeline
set modelines=4


" Enhance command-line completion
"set wildmenu
"" Allow cursor keys in insert mode
"set esckeys
"" Optimize for fast terminal connections
"set ttyfast
"" Use UTF-8 without BOM
"set encoding=utf-8 nobomb
"" Respect modeline in files
"set modeline
"set modelines=4
"" Highlight current line
"set cursorline
"" Make tabs as wide as two spaces
"set tabstop=2
"" Show “invisible” characters
"" set lcs=tab:▸\ ,trail:·,nbsp:_
"set list
"" Highlight searches
"set hlsearch
"" Ignore case of searches
"set ignorecase
"" Highlight dynamically as pattern is typed
"set incsearch
"" Show the current mode
"set showmode
"" Show the filename in the window titlebar
"set title
"" Show the (partial) command as it’s being typed
"set showcmd
"
"" Automatic commands
"if has("autocmd")
"    " Enable file type detection
"    filetype on
"    " Treat .json files as .js
"    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
"    " Treat .md files as Markdown
"    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
"endif
