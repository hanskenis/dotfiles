#!/usr/bin/env bash

# Install tools and apps using Homebrew.

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
  echo "Homebrew not installed. Attemptin to install Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  if [ ! "$?" -eq 0 ] ; then
    echo "Something went wrong. Exiting..." && exit 1
  fi
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Core Utils
brew install coreutils

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-hack
