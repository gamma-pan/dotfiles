echo ".dotfiles" >> $HOME/.gitignore
git clone --bare https://github.com/gamma-pan/dotfiles $HOME/.dotfiles
gitdot config --local status.showUntrackedFiles no
gitdot checkout
