"Set the formatter as paw with 80 line limit
:set formatprg=par\ -w80

"Add mappings
:map ,p {v}!par -jw60<CR>
:vmap <A-q> !par -jw60<CR>
