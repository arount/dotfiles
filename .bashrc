
#
# GIT SHELL / COLORS
#
source ~/.git-prompt.sh
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
   alias ls='ls --color=auto'
    function _git_prompt() {
        local git_status="`git status -unormal 2>&1`"
        if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
           if [[ "$git_status" =~ nothing\ to\ commit ]]; then
                local ansi=32
            elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
                local ansi=34
           else
               local ansi=33
            fi
            echo -n '\[\e[0;33;'"$ansi"'m\]'"$(__git_ps1)"'\[\e[0m\]'
        fi
    }
    function _prompt_command() {
		PS1="\[\033[38;5;11m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\] \u \[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]`_git_prompt` \\$\[$(tput sgr0)\] "
    }
    PROMPT_COMMAND=_prompt_command
fi
unset color_prompt force_color_prompt
#
# END GIT / COLORS
#


#
# Personal
#

# Colors
export TERM=xterm-256color

