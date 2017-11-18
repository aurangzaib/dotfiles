#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Tapping branches of brew
brew tap homebrew/science
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Common tools
brew install make wget convertlit imagemagick boost ruby

# Opencv
brew install opencv3

# Google Chrome
brew cask install google-chrome

# Sourcetree
brew cask install sourcetree

# Skype
brew cask install skype

# Jetbrains
brew cask install clion
brew cask install pycharm
brew cask install webstorm

# Visual Studio Code
brew cask install visual-studio-code

# Postman
brew cask install postman

# Shady
brew cask install shady

# Docker
brew cask install docker

# Slack
brew cask install slack

# Virtualbox
brew cask install virtualbox

# ffmpeg to convert mp4 to mp3 etc
brew install ffmpeg

# download youtube videos
brew install youtube-dl

# Macdown -- Markdown tool for macOS
brew cask install macdown

# IIVA media player -- used instead of VLC
brew cask install iina

# ccat provides color schemes for cat in Terminal.app
brew install ccat

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install binutils
brew install nmap
brew install pngcheck
brew install sqlmap

# Install other useful binaries.
brew install git
brew install diff-so-fancy
brew install imagemagick --with-webp
brew install lua
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install speedtest_cli
brew install tree
brew install ipopt --with-openblas
# merge mp3 files
brew install mp3wrap

# wifi password
brew install wifi-password

# Remove outdated versions from the cellar.
brew cleanup
