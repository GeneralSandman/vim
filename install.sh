#!/bash/sh

# install zsh
sudo apt-get install zsh curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install vim-plug
mkdir ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apt-get install clang
sudo apt-get install cppcheck
sudo apt-get install pylint
sudo apt-get install golint
sudo apt-get install shellcheck

sudo apt-get install ctags

sudo apt-get install ack

sudo cp vimrc ~/.vimrc

