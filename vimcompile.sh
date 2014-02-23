# Get the compile-dependencies of vim
sudo apt-get build-dep vim
# Get the source
git clone git@github.com:b4winckler/vim.git vim_source
# Compile it
cd vim_source
./configure \
    --enable-perlinterp=dynamic \
    --enable-pythoninterp=dynamic \
    --enable-rubyinterp=dynamic \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=huge \
    --with-x \
    --with-compiledby="Jake Oktawiec <jake.okt@gmail.com>" \
    --with-python-config-dir=/usr/lib/python2.7/config
make && sudo make install
