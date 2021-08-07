set -l bld (set_color 00afff -o)
set -l reg (set_color normal)
echo $bld"feedback

"$bld"DESCRIPTION

Display feedback messages. Text placed between pipe characters, i.e. "$bld"|"$reg", will be displayed in "$bld"bold"$reg". Feedback messages come in the following flavors:

"$bld"win"$reg", a positive feedback message.

"$bld"err"$reg", an error message. Prints to stderr.

"$bld"wrn"$reg", a warning message.

"$bld"dim"$reg", a dimmed message. Commonly used to point out some activity in the background.

"$bld"reg"$reg", a regular message.

"$bld"SYNTAX

"$bld"[win/err/wrn/dim/reg]"$reg" [-nsEeh] [MESSAGE]

"$bld"OPTIONS

"$bld"-o"$reg", overwrite current line.

"$bld"-n"$reg", do not output a newline.

"$bld"-s"$reg", do not separate arguments with spaces.

"$bld"-E"$reg", disable interpretation of backslash escapes (default).

"$bld"-e"$reg", enable interpretation of backslash escapes.

"$bld"-h"$reg", display instructions.

"$bld"ESCAPE SEQUENCES

If "$bld"-e"$reg" is used, the following sequences are recognized:

"$bld"\\"$reg", backslash

"$bld"\a"$reg", alert (BEL)

"$bld"\b"$reg", backspace

"$bld"\c"$reg", produce no further output

"$bld"\e"$reg", escape

"$bld"\f"$reg", form feed

"$bld"\n"$reg", new line

"$bld"\r"$reg", carriage return

"$bld"\t"$reg", horizontal tab

"$bld"\v"$reg", vertical tab

"$bld"\0NNN"$reg", byte with octal value NNN (1 to 3 digits)

"$bld"\xHH"$reg", byte with hexadecimal value HH (1 to 2 digits)
" | less -R
