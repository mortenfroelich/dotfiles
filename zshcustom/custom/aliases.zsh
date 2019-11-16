# Remove all oh-my-zsh loaded alias' too many crazy git alias.
unalias -m '*'
#youtube-dl
alias ytdownload="youtube-dl -x --audio-format m4a"
# ls
  alias l="ls -lhFG"
  alias la="ls -lhFGA"   # All files
  alias lt="ls -lhFGt" # By time
  alias ls="ls -lhFGS" # By size
  alias ltr="ls -lhFGtr" # By time, reverse
  alias lsr="ls -lhFGSr" # By size, reverse
# shortcuts to often used folders
alias dotfiles='cd ~/dotfiles'
alias edots='pushd ~/dotfiles;vim . -X;popd'
alias projects='cd /media/nas/projects'
alias AAAAAA='xdotool key Caps_Lock'
