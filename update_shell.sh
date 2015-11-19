set -eu

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "brew update ..."
  brew update
  echo "\nbrew upgrade ..."
  brew upgrade
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  echo "apt-get update ..."
  sudo apt-get update
  echo "apt-get upgrade ..."
  sudo apt-get upgrade
else
  # TODO throw error here
  echo "plaform error"
fi

echo "\nupdating oh-my-zsh ..."
cd ~/.oh-my-zsh && git pull
for bundle in `\ls ~/.vim/bundle`
do
  echo "\nupdating $bundle ..."
  cd ~/.vim/bundle/$bundle && git pull && cd ..
done
