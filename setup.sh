# install brew packages
bash dotfiles/brew.sh

# creating symlinks 
ln -s dotfiles/.bash_profile .bash_profile
ln -s dotfiles/.bash_prompt .bash_prompt
ln -s dotfiles/.function .function
ln -s dotfiles/.aliases .aliases
ln -s dotfiles/.exports .exports
ln -s dotfiles/.inputrc .inputrc
ln -s dotfiles/.wgetrc .wgetrc
ln -s dotfiles/.bashrc .bashrc

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

# update the bash profile
cd && source .bash_profile

# save to local isntead of iCloud
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# symlink for airport
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport
