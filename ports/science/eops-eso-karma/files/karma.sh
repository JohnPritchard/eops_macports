#! /bin/sh

if [ ! -e ${HOME}/karma ]; then
  if mkdir ${HOME}/karma ; then
    echo "Created \${HOME}/karma and starting up in this directory just this first time"
    ## Successfully created karma directory
    if ln -fs #KARMA_PATH#/data ${HOME}/karma/example_data ; then
      echo "Created \${HOME}/karma/example_data where you'll find some useful examples"
    else
      echo "Warning. Unable to create link to karma example data"
    fi
    cd ${HOME}/karma
  fi
else
  if [ ! -d ${HOME}/karma ]; then
    echo "Warning. Found some kind of file \${HOME}/karma, but it is not a directory"
    echo "Proceeding with karma anyway..."
  fi
fi

#KARMA_PATH#/bin/karma.sh $*
