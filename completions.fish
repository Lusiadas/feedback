# Load auxiliary function
type -t contains_opts 2>/dev/null | string match -q function
or fish (dirname (status -f))/hooks/install.fish

# Add completions
set -l cmd (commandline -op)[1]
complete -c $cmd -n 'not contains_opts' -s h -d \
'Display instructions'
complete -c $cmd -s n -d \
'Do not output a newline'
complete -c $cmd -s s -d \
'Do not separate arguments with spaces'
complete -c $cmd -s o -d \
'Overwrite current line'
complete -c $cmd -n 'not contains_opts e' -s E -d \
'Disable interpretation of backslash escapes (default)'
complete -c $cmd -n 'not contains_opts E' -s e -d \
'Enable interpretation of backslash escapes'
