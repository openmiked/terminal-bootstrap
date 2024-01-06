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

function chromeProxy()
{
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
     --user-data-dir="$HOME/proxy-profile" \
     --proxy-server="socks5://localhost:$1"
}

function assumeRole()
{
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_SESSION_TOKEN

  case $1 in
  "Sandbox")
      ACCOUNT_ID="<ACCOUNT_ID>" ;;
  "Development")
      ACCOUNT_ID="<ACCOUNT_ID>" ;;
  "Management")
      ACCOUNT_ID="<ACCOUNT_ID>" ;;
  "Production")
      ACCOUNT_ID="<ACCOUNT_ID>" ;;
  esac

  IAM_ROLE_CREDS=$(aws-vault exec management -- aws sts assume-role --role-arn "arn:aws:iam::${ACCOUNT_ID}:role/$2" --role-session-name "Donohue-$1-$2")

  export AWS_ACCESS_KEY_ID=$(echo "${IAM_ROLE_CREDS}" | jq -r .Credentials.AccessKeyId)
  export AWS_SECRET_ACCESS_KEY=$(echo "${IAM_ROLE_CREDS}" | jq -r .Credentials.SecretAccessKey)
  export AWS_SESSION_TOKEN=$(echo "${IAM_ROLE_CREDS}" | jq -r .Credentials.SessionToken)
}

function awssso()
{
    if [ -z "$2" ]
    then
        export AWS_PROFILE=donohue-sso
        POST_LOGIN_PROFILE=donohue-$1        
    else
        export AWS_PROFILE=$1
        POST_LOGIN_PROFILE=$1
    fi

    aws sso login

    export AWS_PROFILE=$POST_LOGIN_PROFILE
}