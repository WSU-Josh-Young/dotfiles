# Create necessary directory
mkdir -p ~/.vim/bundle

# Clone Vundle repository
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create a backup of existing .vimrc file
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.backup
fi

# Create symbolic link to your vimrc file
ln -s ~/dotfiles/vimrc ~/.vimrc

# Install plugins using Vundle
vim -c 'PluginInstall' -c 'qa!'

# Install YouCompleteMe
python3 ~/.vim/bundle/youcompleteme/install.py --all
