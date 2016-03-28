plugins=(git colored-man copydir copyfile dircycle history nyan themes brew zsh-syntax-highlighting)

alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -lF'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep -I --color=auto --exclude="*tag*" --exclude="*cscope*"'
alias fgrep='fgrep -I --color=auto --exclude="*tag*" --exclude="*cscope*"'
alias egrep='egrep -I --color=auto --exclude="*tag*" --exclude="*cscope*"'
alias reload='source ~/.zshrc'
alias work='ssh -X dicl.unist.ac.kr'
alias open='xdg-open'
alias clipboard='xclip -selection clipboard'

make()
{
   /usr/bin/make "$@" 2>&1 | sed -E -e "s/error/ $(echo -e "\\033[31m" ERROR "\\033[0m"/g)"   -e "s/warning/ $(echo -e "\\033[0;33m" WARNING "\\033[0m"/g)"
   return ${PIPESTATUS[0]}
}

explain () {
  if [ "$#" -eq 0 ]; then
    while read  -p "Command: " cmd; do
      curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$cmd"
    done
    echo "Bye!"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
  fi
}

source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
