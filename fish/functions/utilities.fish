function resume --description "resume mover"
  if not set -q argv[1]
    echo "Requires a command line arg"
    return
  else
    set resume_path ~/Documents/Resumes/KrishnaNarayan_Resume_$(date '+%Y_%m_%d').pdf
    if test -e $resume_path
      set_color red
      echo "A resume was already generated for this date. Replacing..."
    end
    mv $argv[1] $resume_path
  end
end

function sample_args --description "args template"
  set --local options 'h/help' 'p/path='
  argparse $options -- $argv
  or return

  if set --query _flag_help
    echo help
  end
end

function changebranch --description "jump to another branch in the repo with fzf"
  # check if it is a git repo
  git checkout $(git branch | sed 's/^[ \t]*//' | fzf)
end
