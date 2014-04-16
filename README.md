# Vimfiles

My personalised vim configuration files

## Installation

First clone the repository to the vim directory and link vimrc

```
$ git clone git@github.com:jonathan-fantham/vimfiles.git ~/.vim
$ ln -s ~/.vim/.vimrc ~/.vimrc
```

Then initialize and download the plugins that are git submodules

```
$ cd ~/.vim
$ git submodule init
$ git submodule update
```

notes: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
