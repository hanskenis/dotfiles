#!/bin/bash

PROMPT='[bootstrap]'
source .exports

# Initialize a few things
init () {
  echo "$PROMPT Making a Projects folder in $PATH_TO_PROJECTS if it doesn't already exist"
  mkdir -p "$PATH_TO_PROJECTS"
  echo "$PROMPT Making a Playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
  mkdir -p "$PATH_TO_PLAYGROUND"
}

install_tools () {
  echo "$PROMPT Installing useful stuff using brew. This may take a while..."
  sh brew.exclude.sh
}

init
install_tools
