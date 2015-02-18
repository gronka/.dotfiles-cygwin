#!/bin/bash
# only difference between packing and unpacking should be
# the next two lines
DOTFILEDIR=$(pwd)
LINKTO=$(pwd)
echo linking .vimrc and co
ln -s $DOTFILEDIR/.vimrc $HOME/.vimrc
ln -s $DOTFILEDIR/.snippets_custom.json $HOME/.snippets_custom.json
echo linking .zsh and bash
ln -s $DOTFILEDIR/.zshrc $HOME/.zshrc
ln -s $DOTFILEDIR/.zshrc.zni $HOME/.zshrc.zni
ln -s $DOTFILEDIR/.zsh-update $HOME/.zsh-update
ln -s $DOTFILEDIR/.oh-my-zsh $HOME/.oh-my-zsh
ln -s $DOTFILEDIR/.bash_profile $HOME/.bash_profile
ln -s $DOTFILEDIR/.bashrc $HOME/.bashrc
echo linking .asoundrc
ln -s $DOTFILEDIR/.asoundrc $HOME/.asounrc
echo linking .xinitrc
ln -s $DOTFILEDIR/.xinitrc $HOME/.xinitrc
echo linking openbox configs and launchers
ln -s $DOTFILEDIR/startx1mon $HOME/startx1mon
ln -s $DOTFILEDIR/startxlaptop $HOME/startxlaptop
ln -s $DOTFILEDIR/startx2mon $HOME/startx2mon
ln -s $DOTFILEDIR/startxtrio $HOME/startxtrio
ln -s $DOTFILEDIR/.config/openbox $HOME/.config/openbox
ln -s $DOTFILEDIR/.config/lxpanel $HOME/.config/lxpanel
echo linking server files
ln -s $DOTFILEDIR/cassarun $HOME/cassarun
ln -s $DOTFILEDIR/killcassa $HOME/killcassa
ln -s $DOTFILEDIR/uwsgirun $HOME/uwsgirun
ln -s $DOTFILEDIR/gruntrun $HOME/gruntrun
