# Remove all oh-my-zsh loaded alias' too many crazy git alias.
unalias -m '*'
#youtube-dl
alias ytdownload="youtube-dl -x --audio-format m4a"
# ls
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls --color=tty'
# shortcuts to often used folders
alias dotfiles='cd ~/dotfiles'
alias edots='pushd ~/dotfiles;vim . -X;popd'
alias projects='cd /media/nas/projects'
