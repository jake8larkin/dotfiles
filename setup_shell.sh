set -eu

if [[ "$OSTYPE" == "darwin"* ]]; then
  # OSX specific installation
  
  # install command line tools w/o xcode
  xcode-select --install

  # install homebrew  (somewhat sketchy execution)
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  brew install coreutils
  brew install zsh
  brew install git
  # install a nice new version of vim
  brew install vim --override-system vim
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  # assumes debian-based, uses aptitude
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install build-essential
  sudo apt-get install git-core
  # add other linux specfic as need arises
else
  # add error here
fi


# install oh-my-zsh (todo remove sketchy execution)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install my custom prompt theme
curl -fsSl https://raw.githubusercontent.com/jake8larkin/dotfiles/master/.oh-my-zsh/themes/jakeo.zsh-theme > ~/.oh-my-zsh/themes/jakeo.zsh-theme
sed -i '' 's/ZSH_THEME\=\".*"/ZSH_THEME="jakeo"/' ~/.zshrc

# symlink vi to vim
ln -s /usr/local/bin/vim /usr/local/bin/vi
sudo mv /usr/bin/vi /usr/bin/vi_old

# get my .vimrc from github
curl -fsSSL https://raw.githubusercontent.com/jake8larkin/dotfiles/master/.vimrc > ~/.vimrc

# install pathogen vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install custim vim color theme (sublime inspired)
mkdir -p ~/.vim/colors
curl -fsSSL https://raw.githubusercontent.com/jake8larkin/dotfiles/master/.vim/colors/molokai.vim > ~/.vim/colors/molokai.vim

# get the vim plugins i use
mkdir -p ~/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/moll/vim-node.git ~/.vim/bundle/node
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/Raimondi/delimitMate ~/.vim/bundle/delimitMate
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/derekwyatt/vim-scala ~/.vim/bundle/vim-scala
#git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script/ #yuck

# get my gitignore_global
curl -fsSSL https://raw.githubusercontent.com/jake8larkin/dotfiles/master/.gitignore_global >> ~/.gitignore_global
