TAC=/var/env/tacle/
TACLE=/var/www/tacle/
ENV=/home/taylor/.env/

export WINEPREFIX=~/.wine
export WINEARCH=win32
export GOPATH=$HOME/.golang
export PATH=$PATH:/bin:/$GOPATH/bin:/home/taylor/projects/openmw/build
#export PATH=$PATH:/bin:/$GOPATH/bin

alias python=/home/taylor/.local/env34/bin/python
alias pip=/home/taylor/.local/env34/bin/pip
alias easy_install=/home/taylor/.local/env34/bin/easy_install
S=/home/taylor/.local/env34/bin
E=/home/taylor/.local/env27/bin
#alias python=/home/taylor/.local/env27/bin/python
#alias pip=/home/taylor/.local/env27/bin/pip
#alias easy_install=/home/taylor/.local/env27/bin/easy_install

export VISUAL="vim"

myyoutube360() {
	youtube-dl $1 -f 243+171 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube480() {
	youtube-dl $1 -f 135+141 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube720() {
	youtube-dl $1 -f 136+141 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube() {
	youtube-dl $1 -f 137+141 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube2() {
	youtube-dl $1 -f 299+141 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube303() {
	youtube-dl $1 -f 303+171 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube2160() {
	youtube-dl $1 -f 266+141 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube1920() {
	youtube-dl $1 -f 272+171 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}
myyoutube1440() {
	youtube-dl $1 -f 264+141 -o '/home/taylor/Downloads/yc/%(uploader)s %(title)s-%(id)s.%(ext)s' --write-thumbnail
}

#eval $(dircolors -b ~/.dir_colors)
#alias ls='ls -color=auto'

if [ "$PS1" ]; then
	complete -cf sudo
fi

#source /etc/profile.d/bash-completion.sh
