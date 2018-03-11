"Set the formatter as paw with 80 line limit
:set formatprg=par\ -w80

"Fast fmt all lines > 100 to 100
:map ,f1 g/.\{100,\}/ .!par w100
