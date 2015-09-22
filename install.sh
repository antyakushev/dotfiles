DOTFILES_PATH=$HOME/dotfiles
DOTFILES_REPO=https://github.com/valerybugakov/dotfiles.git

if [ -d $DOTFILES_PATH ]; then
  rm -r $DOTFILES_PATH
fi
mkdir -p $DOTFILES_PATH
git clone $DOTFILES_REPO $DOTFILES_PATH
find ~/dotfiles/dots -name '.*' | xargs -I % ln -sfv % ~
