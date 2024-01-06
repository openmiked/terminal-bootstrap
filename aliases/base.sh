    #--- Common Helpers ---#
alias getcolors="for i in {0..255}; do print -Pn '%K{$i}  %k%F{$i}${(l:3::0:)i}%f ' ${${(M)$((i%6)):#3}:+$'\n'}; done"
alias debug="set -o nounset; set -o xtrace"
alias cls="clear"
alias down="cd ~/Downloads"
alias ..="cd .."
alias ....="cd ../.."

alias env='printenv'
alias look="find . -name"
alias search="grep --color -rnw ./ -e "
alias xclip="xclip -selection c"

# alias ports="lsof -PiTCP -sTCP:LISTEN"
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias speedtest="wget -O /dev/null cachefly.cachefly.net/100mb.test"


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history'
alias hs='history -a | grep'
alias j='jobs -l'
alias which='type -a'

alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias du='du -kh'
alias df='df -kTh'

    #--- Directory Helpers ---#
alias lx='ls -lXB' # Sort by extension
alias lk='ls -lSr' # Sort by size, biggest last
alias lt='ls -ltr' # Sort by date, most recent last
alias lc='ls -ltcr' # Sort by/show change time,most recent last
alias lu='ls -ltur' # Sort by/show access time,most recent last
alias ll="ls -lv --group-directories-first" # 'll': directories first, with alphanumeric sorting
alias lm='ll |more' # Pipe through 'more'
alias la='ll -A' # Show hidden files
alias lr='ll -R' # Recursive ls