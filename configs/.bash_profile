#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# force color and type
alias ls='ls -hF --color=auto'

alias ll='ls -hFla --color=auto'

# force long format
alias dir='ls --color=auto --format=long'

# grep hilight
export GREP_OPTIONS='--color=auto'

# add ~/.bin to path
export PATH=$PATH:~/.bin

# man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m' # end the info box
export LESS_TERMCAP_so=$'\E[01;42;30m' # begin the info box
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

##-ANSI-COLOR-CODES-##
Color_Off="\[\033[0m\]"
###-Regular-###
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Purple="\[\033[0;35\]"
####-Bold-####
BRed="\[\033[1;31m\]"
BPurple="\[\033[1;35m\]"

# pretty PS1
export PS1="$BRed\u$Color_Off@$BRed\h$Color_Off:$BPurple\w$Color_Off \$ "

export PATH=$PATH:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/
