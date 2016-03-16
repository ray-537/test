alias ll='ls -l --color=tty'
alias l.='ls -d .* --color=tty'
alias ls='ls --color=tty'
alias ..='cd ..'
alias ..2='cd ../..'
alias l=ll
alias gcc99='gcc -std=c99'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '
export term=xterm-256color


#PS1='`a=$?;if [ $a -ne 0 ]; then a="  "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]"; fi`\[\e[1;32m\]\u@\h:\[\e[0m\e[1;34m\]\W\[\e[1;34m\]\$ \[\e[0m\]'
clib="/home/pd/pd1407/hive/Linux/cores/pearl/sdk/lib"
c3lib="/home/pd/pd1407/hive/Linux/cores/pearl_is3/sdk/lib"

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
 
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
 
# export PS1='\[\033[32m\]\u \[\033[34m\]\w\[\033[31m\] $(parse_git_branch)\[\033[00m\]$ '
export PS1='`a=$?;if [ $a -ne 0 ]; then echo -n -e "\[\e[01;32;41m\]{$a}"; fi`\[\033[01;32m\]\u \[\033[01;34m\]\w `b=$(parse_git_branch); if [ x"$b" != "x" ]; then echo -n -e "\[\e[33;40m\](branch:$b)\[\033[01;32m\]\[\e[00m\]"; fi`\[\033[01;34m\] $ \[\e[00m\]'
