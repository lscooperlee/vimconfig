"How can I open a NERDTree automatically when vim starts up?
"Stick this in your vimrc: 

"autocmd vimenter * NERDTree

" How can I open a NERDTree automatically when vim starts up if no files were specified?
" Stick this in your vimrc:
" Note: Now start vim with plain vim, not vim .
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" How can I open NERDTree automatically when vim starts up on opening a directory?
" This window is tab-specific, meaning it's used by all windows in the tab. This trick also prevents NERDTree from hiding when first selecting a file.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" How can I map a specific key or shortcut to open NERDTree?
" Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):

:nnoremap <leader>n :NERDTreeToggle<CR>

" How can I close vim if the only window left open is a NERDTree?
" Stick this in your vimrc:

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

