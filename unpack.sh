#!/bin/bash
# only difference between packing and unpacking should be
# the next two lines
DOTFILEDIR=$(pwd)
echo $DOTFILEDIR
echo $HOME
echo linking .vimrc and co
ln -sf $DOTFILEDIR/.vimrc $HOME/.vimrc
ln -sf $DOTFILEDIR/.snippets_custom.json $HOME/.snippets_custom.json
echo linking .zsh and bash
ln -sf $DOTFILEDIR/.zshrc $HOME/.zshrc
ln -sf $DOTFILEDIR/.zshrc.zni $HOME/.zshrc.zni
ln -sf $DOTFILEDIR/.zsh-update $HOME/.zsh-update
ln -sf $DOTFILEDIR/.oh-my-zsh $HOME/.oh-my-zsh
ln -sf $DOTFILEDIR/.bash_profile $HOME/.bash_profile
ln -sf $DOTFILEDIR/.bashrc $HOME/.bashrc
echo linking .asoundrc
ln -sf $DOTFILEDIR/.asoundrc $HOME/.asounrc
echo linking .xinitrc
ln -sf $DOTFILEDIR/.xinitrc $HOME/.xinitrc
echo linking openbox configs and launchers
ln -sf $DOTFILEDIR/startx1mon $HOME/startx1mon
ln -sf $DOTFILEDIR/startxlaptop $HOME/startxlaptop
ln -sf $DOTFILEDIR/startx2mon $HOME/startx2mon
ln -sf $DOTFILEDIR/startxtrio $HOME/startxtrio
ln -sf $DOTFILEDIR/.config/openbox $HOME/.config/openbox
ln -sf $DOTFILEDIR/.config/lxpanel $HOME/.config/lxpanel
echo linking server files
ln -sf $DOTFILEDIR/cassarun $HOME/cassarun
ln -sf $DOTFILEDIR/killcassa $HOME/killcassa
ln -sf $DOTFILEDIR/uwsgirun $HOME/uwsgirun
ln -sf $DOTFILEDIR/gruntrun $HOME/gruntrun
