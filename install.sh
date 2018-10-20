#!/bash/sh

sudo apt-get install zsh curl

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt-get install ctags

sudo apt-get install ack

sudo cp vimrc ~/.vimrc

