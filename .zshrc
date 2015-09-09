PATH=$HOME/.pyenv/shims:$HOME/.rbenv/shims:$HOMW/.rbenv/versions/2.0.0-p645/bin:$HOME/.rbenv/versions/2.2.2/bin:/Applications/Sublime\ Text\ 2/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/:$PATH

# History file and size
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Ignore duplicate history
setopt hist_ignore_all_dups
# Share history between processes
setopt share_history
# Prompt {{{
autoload -Uz vcs_info

zstyle ':vcs_info:*' formats '%s->(%b)'

precmd() {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  psvar[1]=$vcs_info_msg_0_
}

# Use escape sequence
setopt prompt_subst
function prompt_setup() {
  if [[ $TERM =~ ".*256color.*" ]]; then
    _prompt_colors=(
      "%F{124}"
      "%F{142}"
      "%F{27}"
      "%F{65}"
      "%F{66}"
    )
  else
    _prompt_colors=(
      "%F{red}"
      "%F{yellow}"
      "%F{green}"
      "%F{cyan}"
      "%F{cyan}"
    )
  fi

  local USER_HOST="${_prompt_colors[2]}%n@%m%f"
  local CURRENT_DIR="${_prompt_colors[2]}%~%f"
  local VCS_INFO="${_prompt_colors[2]}%1v%f"
#  local RETCODE="[%(?.${_prompt_colors[3]}.${_prompt_colors[1]})%?%f]"
#  local ARROWS="%B${_prompt_colors[1]}❯%f${_prompt_colors[2]}❯%f${_prompt_colors[3]}❯%f%b"

PROMPT="$USER_HOST $CURRENT_DIR $VCS_INFO> "
#$RETCODE $ARROWS "
}

prompt_setup
# }}}

autoload -U compinit
compinit

# Case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Change directory only path
setopt auto_cd
# Auto stack of source dir
# -<Tab>: Display candidates of direcctory stacks
setopt auto_pushd
# Ignore duplicate pushd
setopt pushd_ignore_dups
# Find home directory if not exist in current directory
cdpath=($HOME)

zstyle ':completion:*' group-name ''

HISTFILE=$HOME/.zsh_history

function peco_select_history() {
  local tac
  (which gtac &> /dev/null && tac="gtac") || \
    (which tac &> /dev/null && tac="tac") || \
    tac="tail -r"
  BUFFER=$(fc -l -n 1 | eval $tac | \
    peco --layout=bottom-up --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle -R -c
}
zle -N peco_select_history
bindkey '^r' peco_select_history
