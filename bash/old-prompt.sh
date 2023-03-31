#!/bin/bash

function old-prompt {
    local git_ps workdir

    # Git prompt
    if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
        source /usr/share/git-core/contrib/completion/git-prompt.sh
    fi

    # Tmux
    if [[ -n "${TMUX}" ]]; then
        PSE="[\[\e[0;31m\]TMUX\[\e[00m\]]"
    fi

    git_ps="\$(type __git_ps1 1>/dev/null 2>/dev/null && __git_ps1)"
    workdir="\[\e[0;33m\]\w\[\e[00m\]"

    export PROMPT_DIRTRIM=3
    export PS1="\[\e[0;32m\]\u\[\e[00m\]${PSE} ${workdir}${git_ps} \$ "
}

old-prompt "${@}"
