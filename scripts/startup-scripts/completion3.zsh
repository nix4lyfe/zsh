#export FPATH="/usr/local/share/zsh-completions:/usr/local/share/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/functions:/usr/local/share/zsh-navigation-tools"

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zcompdump"
zstyle ':compinstall:*' filename '$HOME/scripts/startup-scripts/completion'
zstyle ':completion:*' completer _expand _oldlist _expand _complete _ignored _match _correct _approximate _prefix
export CLICOLOR=1
zstyle ':completion:*:*:*:*:*' menu yes select=long
zstyle ':completion:*' file-list all
zstyle ':completion:*' use-compctl false
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*' list-suffixes true
#zstyle ':completion:*' original false
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand suffix
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long-list select=1 select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p of %l%s'
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true

zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' rehash true
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

autoload -Uz compinit
compinit
