if has('python3')
function! TestCustom()
python3 << EOF

import vim
import os

#print(dir(vim.current))

name = vim.current.buffer.name
ext = os.path.splitext(name)[1]
print(ext)

if ext == '.cpp' or ext == '.c':
    vim.command(":e %:r.h")
elif ext == '.h' or ext == '.hpp':
    vim.command(":e %:r.cpp")


EOF
endfunction

nmap <leader>o :call TestCustom()<cr>
endif
