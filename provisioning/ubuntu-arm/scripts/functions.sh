  #--- Common Helpers ---#
function extract() # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.gz) tar xvzf $1 ;;
            *.tar.bz2) tar xvjf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) unrar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xvf $1 ;;
            *.tbz2) tar xvjf $1 ;;
            *.tgz) tar xvzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *.7z) 7z x $1 ;;
            *) echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

function maketar() # Creates an archive (*.tar.gz) from given directory.
{ tar cvzf "${1%%/}.tar.gz" "${1%%/}/"; }

function makezip() # Create a ZIP archive of a file or folder.
{ zip -r "${1%%/}.zip" "$1" ; }

function sanitize() # Make your directories and files access rights sane.
{ chmod -R u=rwX,g=rX,o= "$@" ;}

function printGitLogPrettily() # Print Git logs with "pretty" option
{
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}
