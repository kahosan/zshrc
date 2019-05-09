# kphoen.zsh-theme

if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    PROMPT='%{$fg[magenta]%}[%T] kaho at %{$reset_color%}%{$fg_bold[megenta]%}Mi5sP in %{$reset_color%}:%{$fg_bold[cyan]%}[%{$fg_bold[cyan]%}%~]%{$reset_color%}$(git_prompt_info)
%{$fg[magenta]%}> '

    ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""

    RPROMPT='${return_code}$(git_prompt_status)%{$reset_color%}'

else
    PROMPT='[%n@%m:%~$(git_prompt_info)]
%# '

    ZSH_THEME_GIT_PROMPT_PREFIX=" on"
    ZSH_THEME_GIT_PROMPT_SUFFIX=""
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""

fi
