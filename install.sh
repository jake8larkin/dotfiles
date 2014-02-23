

# get ssh keys

# clone the dotfiles and copy to HOME
cd $HOME
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
git clone git@github.com:jakeokt/dotfiles.git
cp -r dotfiles/* ~/
cp -r dotfiles/.[a-zA-Z0-9]* ~/
rm -r dotfiles

# change default shell to zsh
#  .oh-my-zsh is included in dotfiles
sudo apt-get install zsh
chsh -s `which zsh`
mv ~/.git ~/Agit   # disables git in home dir

# install vim plugins
mkdir ~/.vim
mkdir ~/vim/bundle
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script/

