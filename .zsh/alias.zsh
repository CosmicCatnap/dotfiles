alias rsync='rsync -P --recursive'
# $1 is the local {file,folder} and $2 is the remote dir
alias rsshnc="rsync -avh $1 'ssh -p 1973' smlb@smlb.me:$2"
alias ls='ls --classify --tabsize=0 --literal --color=auto --human-readable'
alias ms='ncmpcpp'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias less='less --quiet'
alias df='df --human-readable'
alias free='free -h'
alias gitmaster='git push -u origin master && echo " (╯°□°）╯︵ WTF DID YOU PUSH BRO?"'
alias grep='grep --color=auto'
alias dmesg='dmesg -H'
alias cower='cower -t ~/src --color=always'
alias netlisten='lsof -i -P | grep LISTEN'
alias paclog='tail -n 40 /var/log/pacman.log'
alias svim='sudo vim'
alias rmnotneeded='pacman -Rscn $(pacman -Qdtq)'
alias eduroam='sudo ip link set wlp7s0 down; sudo netctl start eduroam'
alias zzz='systemctl suspend ; i3lock -c 151515'
alias home='sudo ip link set wlp7s0 down; sudo netctl start devnull'
alias x='startx'
alias mountp='udevil mount $1 | awk '{print $NF}'' 
alias fdisk="sudo fdisk"
alias smlb="ssh -p 1973 smlb@smlb.me"
alias postg="sudo systemctl start postgresql && sudo -i -u postgres"
alias mine="java -jar ~/docs/minecraft/minecraft\ launcher/Minecraft\ Launcher.jar"
alias untar="tar -zxvf"
# tmux alias ----- {
alias tmuxn="tmux new -s $1"
alias tmuxa="tmux attach -t $1"
