echo ".dotfiles" >> $HOME/.gitignore
git clone --bare https://github.com/gamma-pan/dotfiles $HOME/.dotfiles
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -f
