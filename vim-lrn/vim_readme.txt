-- Daily

• Pure/Clean vim -> vim -u NONE -N
• No plugins only vimrc -> vim -u NONE ~/.vimrc -c q
• vim version -> vim --version
• vim help -> vim --help
• Generate help tags -> vim -c "helptags docs/" -c q
• Forcefully set XML file -> :set ft=xml

-- Modlines
   Text - vim:tw=90:et:norl:
   Java -
   C++ -
   Python -

--- Search and Replace
  Rem -  the last search word.
  Use of search registers with <CTRL-a>/ while doing the search and replace with :%s/

-- Mapping
    - Map macro to key -> nmap ,m1 @a

-- Scripting

    - Check if interpreters available
    :echo has("perl")
    :echo has("python")
    :echo has("ruby")

    :py import vim
    :py print dir(vim.current.buffer.name)  (list all dirs)
    :py print vim.current.buffer.name

    - Command mode -> vim -c <command> <file>

-- Debugging
• Check load time for all scripts -> vim --startuptime load_time.txt
• vim verbose (level 1)  -> vim -V1 vim.config

-- Code formatting
    Java,C++ - Clang (astyle not good enough)
    Json - :% !jq .
    Python -

-- Registers
    - Use register a - Store macros, Store snippets
    1. copy the content in reg a
        "ay
    2. verify content in a
        :put a
    - View register content -> :echo @a
    - Update register content -> :let @a="yWjP0^A0"
    - Clear register a -> :qaq

-- Recording macro
    - Clear register a -> qaq
    - Start recording in register a -> qa
    - End recording in register a -> q
    - repeat macro 10 times using reg a  -> 10@a

-- Buffers
• Replace in all buffers
:set autowriteall
:bufdo %s/pattern/replace/ge or argdo %s/pattern/replace/g

• g - expects "command" v/s s - needs "replacement" (both works with range)
:.,$g/^\d/exe "normal! \<C-A>"

• s (Replace current line) v/s %s (Replace in whole file)


-- Marks

-- Marker
    - Set foldmethod -> :set fdm=marker
    - Set foldmarker -> :set fdr={,}
    - Set foldmarker for comments -> :set fdr=/**,*/

-- Plugins

-- Browsing
    1. Local file - gf
    2. Browser - gx

-- Session

-- Modes
    visual
    normal

-- Navigation

-- Regex
    - BackReference
    - Copy all matching line to end of file -> eg. %g/^\d\+/t$ (copy lines containing
      digits to EOF)
    - %g/.../d - matches V/S %v/.../d - except

-- Top plugins

-- + command line option

## 1. Delete host77 from known_hosts and save
vim +'/host77/d|wq!' ~/.ssh/known_hosts



vim:tw=90:et:norl:
