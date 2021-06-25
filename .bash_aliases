# Begin ls aliases
## Simple ls output in standard form
alias sl=ls
alias ls='ls --color=auto'
alias lsd='ls --group-directories-first --color'
alias lsdl='ls --group-directories-first --color | less -R'
alias lsdt="ls -trh --group-directories-first --color | less -R"
alias la='ls -A --color=always'
alias lst='ls -rt'

## ls output in -1 (one) form (like list, but without the detail)
alias lt='ls -1trF'
alias l1='ls -1'

## Long detailed list form of ls, output in different forms.
alias ll='ls -lh'
alias lla='ls -lhA --color=always'
alias lld="ls -lh --group-directories-first --color | less -R"
alias ld="ls -1h --group-directories-first --color | less -R"
alias lldd="ls -lh --group-directories-first --color |grep --color=always ^d | less -R"
alias llda="ls -lhA --group-directories-first --color | less -R"
alias lldt="ls -ltrh --group-directories-first --color | less -R"
alias lldta="ls -ltrhA --group-directories-first --color | less -R"
alias llt='ls -lrth'
alias llat='ls -lrthA'

## Tail only the last 3 lines.
alias lltt='ls -lrth --color | tail -n3'
alias lt='ls -1trF --color | tail -n3'
alias lldtt="ls -lth --group-directories-first --color | head -n4"

alias mnu='clear; less ~/menu.txt'
alias emnu='vim ~/menu.txt'

alias hpt='help test|less'
alias bashhelp='less ~/odh/linux/bash/bash-ref.txt'

alias psg="ps aux |grep"
#alias qt="/usr/local/bin/quote"
alias dvtme='dvtm /bin/bash snownews elinks'
#alias aptitude='echo "##################### --- RUNNING APTITUDE --- ####################"; aptitude'
alias by='byobu -S johnmain'
alias lessr='less -R'
alias notes='vim ~/notes.txt'
#alias show='apt-cache show ' # Moved to a script in ~/bin
alias showlong='apt-cache show ' 
alias search='apt-cache search '
alias fsearch='apt-file search' 
#alias sagi='sudo apt-get install' # This alias is taken over by the ~/bin/sagi script that keeps record of installed packages
alias grep='grep --color=auto'
alias cd..='cd ..'
alias cd....='cd ../..'
alias ps1='PS1=$'

alias vims='vim -S ./Session.vim'
alias vimr='vim --servername jackson --remote-tab'
alias vimrs='vim --servername jackson -S ./Session.vim'
alias vimsr='vim --servername jackson -S ./Session.vim'

alias dtmf='dtmfdial --output-dev /dev/dsp1'
alias asciicam='LD_PRELOAD=/usr/lib64/libv4l/v4l1compat.so hasciicam'

alias whatports='lsof -Pni4 | grep LISTEN'

#alias rackforce="ssh -p 9780 boot@69.10.155.177"
alias rackforce="ssh -p 9780 root@69.10.137.199"

alias wic="wicd-curses"

#Get a weather map for eastern half of USA.
alias wmap='wget -O -  http://www.goes.noaa.gov/GIFS/ECIR.JPG | display'
#Get a webcam shot of Purchase Knob Great Smokey Mountains TN
alias knob='wget -O -  http://www.nature.nps.gov/air/webcams/parks/grsmpkcam/grpklarge.jpg | display'

alias fdl='fdisk -l'
alias lsdisk='fdisk -l | grep "^Disk /"'
alias mounted='mount | grep /dev/sd'
alias spacegame='chromium-bsu'
alias tetris='gpe-tetris'
alias define=sdcv
alias iow=aiksaurus #thusaurus, alias is a mnumonic: In Other Words
alias filesystems="apt-cache search fs | egrep '^[a-z]*fs '"
alias cp='cp -i'
alias cvacash='gnucash /mass/gnucash-data-files/LIVE/CVACorp/cvacorp-2013-LIVE.gnucash'

#Jetfighter2
alias jf='dosbox /home/john/dls/games/dos/jf2/jetfighter-ii/JF2/JF2.EXE'

alias cdp="cd /mass/code/python/radioIsland"
alias lph=linphonecsh
alias ':q'=exit
alias amdcccle='catalist'
alias screen='TERM=xterm-256color screen'
alias ':q'=exit
alias 'tmux'='tmux -2'
#alias manbash='vim ~/odh/linux/bash.man' # I don't know why I ever made this. It's conflicting with my gnu.org firefox manbash script now.

alias pdfedit='masterpdfeditor3'

alias dis='disown'

alias dt='downtime-v0.2.py'
alias tree="tree -C | less -R"

alias venv='source ~/.mypython/bin/activate'

alias netmap='ooc /mass/admin/network/network_map.ods'
alias copyLast='lt | tail -n1 | xsel -b'
alias z='zathura'
alias zt='zathura "$(ls -1tr | tail -n1)"'

# GHCi is the haskel interpreter.
alias haskel-interpreter='ghci'

# tmux aliases.
alias ta='tmux attach'
alias t='tmux '

# Proton VPN
alias vpn='protonvpn-cli'

# Git
alias gs='git status'
alias gc='git commit -m'
alias ga='git add'
alias gl='git log'
