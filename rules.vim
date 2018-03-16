"Set the formatter as paw with 80 line limit
:set formatprg=par\ -w80

"Fast fmt all lines > 100 to 100
:map ,f1 g/.\{100,\}/ .!par w100

func! Foldexpr_markdown(lnum)
    let l1 = getline(a:lnum)

    if l1 =~ '^\s*$'
        " ignore empty lines
        return '='
    endif

    let l2 = getline(a:lnum+1)

    if  l2 =~ '^==\+\s*'
        " next line is underlined (level 1)
        return '>1'
    elseif l2 =~ '^--\+\s*'
        " next line is underlined (level 2)
        return '>2'
    elseif l1 =~ '^#'
        " current line starts with hashes
        return '>'.matchend(l1, '^#\+')
    elseif a:lnum == 1
        " fold any 'preamble'
        return '>1'
    else
        " keep previous foldlevel
        return '='
    endif
endfunc

" current line starts with -
" v:lnum : read only variable , a:lnum - a -arg,cannot change it
" http://learnvimscriptthehardway.stevelosh.com/chapters/24.html
func! Foldexpr_text(lnum)

  let l1 = getline(a:lnum)
  if l1 =~ '^\s*$'
    return '='
  endif
  if l1 =~ '^-'
    return '>'.matchend(l1, '^-\+')
  elseif a:lnum == 1
    return '>1'
  else
    return '='
  endif

endfunc


"setlocal foldexpr=Foldexpr_markdown(v:lnum)
setlocal foldexpr=Foldexpr_text(v:lnum)
