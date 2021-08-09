# feedback

> A plugin for [Oh My Fish](https://www.github.com/oh-my-fish/oh-my-fish).

[![GPL License](https://img.shields.io/badge/license-GPL-blue.svg?longCache=true&style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.1-blue.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-blue.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Description

Display feedback and diagnostic messages - that is, messages that are printed to [stderr](https://www.jstorimer.com/blogs/workingwithcode/7766119-when-to-use-stderr-instead-of-stdout) and, as such, are not part of s program's output - stylized through [control characters](https://en.m.wikipedia.org/wiki/Control_character). Text placed between pipe characters, i.e. `|`, will be displayed in **bold**. Messages come in the following flavors:

- `win`, a confirmation message.

- `wrn`, a warning message.

- `err`, an error message. It is a good practice to prefix your error message with the name of the command that failed, such as `command: error message`.

- `dim`, a dimmed message. Commonly used to point out some activity in the background.

- `reg`, a regular message.

## Example Usage

[![asciicast](https://asciinema.org/a/Ce7HtwnyTpd8uchjrch1WmUmJ.png)](https://asciinema.org/a/Ce7HtwnyTpd8uchjrch1WmUmJ)

## Syntax

```
[win/err/wrn/dim/reg] [-nsEeh] [MESSAGE]
```

## Options

- `-o`, overwrite current line.

- `-n`, do not output a newline.

- `-s`, do not separate arguments with spaces.

- `-E`, disable interpretation of backslash escapes (default).

- `-e`, enable interpretation of backslash escapes.

- `-h`, display instructions.

## Escape sequences

If `-e` is used, the following sequences are recognized:

- `\`, backslash.

- `\a`, alert (BEL).

- `\b`, backspace.

- `\c`, produce no further output.

- `\e`, escape.

- `\f`, form feed.

- `\n`, new line.

- `\r`, carriage return.

- `\t`, horizontal tab.

- `\v`, vertical tab.

- `\0NNN`, byte with octal value NNN (1 to 3 digits).

- `\xHH`, byte with hexadecimal value HH (1 to 2 digits).

## Install

```fish
omf repositories add https://gitlab.com/argonautica/argonautica 
omf install feedback
```

## Dependencies

Plugin [contains_opts](https://gitlab.com/lusiadas/contains_opts). If not installed, it'll be installed together with `feedback`.
