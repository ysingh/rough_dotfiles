#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Install brew Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install gyazo
brew cask install onepassword
brew cask install rescuetime
brew cask install flux
brew cask install vlc
brew cask install skitch
brew cask install evernote
brew cask install hipchat

# dev
brew cask install iterm2
# brew cask install sublime-text
brew cask install imagealpha
brew cask install imageoptim

# Remove outdated versions from the cellar.
brew cleanup