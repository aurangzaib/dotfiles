# creating symlinks
cd
ln -s .dotfiles/.bash_profile .bash_profile
ln -s .dotfiles/.bash_prompt .bash_prompt
ln -s .dotfiles/.functions .functions
ln -s .dotfiles/.variables .variables
ln -s .dotfiles/.utilities .utilities
ln -s .dotfiles/.aliases .aliases
ln -s .dotfiles/.exports .exports
ln -s .dotfiles/.inputrc .inputrc
ln -s .dotfiles/.krones .krones
ln -s .dotfiles/.wgetrc .wgetrc
ln -s .dotfiles/.bashrc .bashrc

# update the bash profile
cd; source .bash_profile; cd

# Xcode
xcode-select --install

# install brew
/usr/bin/ruby -e "$(curl -fsSL $brew_install)"

# update the bash profile
cd; source .bash_profile; cd

# install brew packages
bash dotfiles/brew.sh

# install miniconda
bash dotfiles/conda.sh

# install node global packages
bash dotfiles/node.sh

# git global settings
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta "227"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "227 bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"
git config --bool --global diff-so-fancy.markEmptyLines false

# save to local isntead of iCloud
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# clean all cache files of brew, node, conda
cleanup; bash-update
