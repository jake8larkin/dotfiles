

# get ssh keys

# clone the dotfiles and copy to HOME
cd $HOME
git clone git@github.com:jakeokt/dotfiles.git
cp -r dotfiles/* ~/
cp -r dotfiles/.[a-zA-Z0-9]* ~/
rm -r dotfiles

# change default shell to zsh
#  .oh-my-zsh is included in dotfiles
sudo apt-get install zsh
chsh -s `which zsh`

