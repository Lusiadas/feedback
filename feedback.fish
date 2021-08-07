set -l cmd (status -f | string match -r '[^/]+(?=\.[^/]+$)')
function $cmd -V cmd -d 'Display a feedback message'

  # Parse flags
  if argparse -n $cmd -x (string join ' -x ' e,E h,{n,s,e,E} | string split ' ') o h n s e E -- $argv 2>&1 | read err
    err $err
    reg "Use |$cmd -h| to see examples of valid syntaxes"
    return 1
  end
  set -l flags $_flag_n $_flag_s $_flag_e $_flag_E

  # Display instructions if so was asked for
  if set --query _flag_help
    source (status filename | xargs dirname)/../instructions.fish
    not string length -q (set --names | string match -r "_flag_.+")$argv
    return $status
  end

  # Read piped arguments
  if not isatty
    while read -l line
      set -a argv $line
    end
  end

  # Colorize text
  set -l creg; set -l cbld
  switch $cmd
    case win
      set creg (set_color normal)(set_color green)
      set cbld (set_color green --bold)
    case wrn
      set creg (set_color normal)(set_color yellow)
      set cbld (set_color yellow --bold)
    case err
      set creg (set_color normal)(set_color red)
      set cbld (set_color red --bold)
    case dim
      set creg (set_color normal)(set_color --dim)
      set cbld (set_color --bold --dim)
    case reg
      set creg (set_color normal)
      set cbld (set_color --bold)
  end

  # Stylize text
  set -l bold false
  while string match -qe -- '|' "$argv"
    if test $bold = false
      set argv (string replace -- '|' "$cbld" "$argv")
      set bold true
    else
      set argv (string replace -- '|' "$creg" "$argv")
      set bold false
    end
  end

  # Output text
  set --query _flag_o
  and echo -en \r(tput el) 1>&2
  switch $cmd
    case win
      echo $flags -- $creg"✔ $argv" 1>&2
    case wrn
      echo $flags -- $cbld"! "$creg"$argv" 1>&2
    case '*'
      echo $flags -- $creg"$argv" 1>&2
  end
  set_color normal
end
