# Vimfiles

My personalised vim configuration files

## Installation

First clone the repository to the vim directory and link vimrc

```
$ git clone git@github.com:jonathan-fantham/vimfiles.git ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
```

Then initialize and download the plugins that are git submodules

```
$ cd ~/.vim
$ git submodule init
$ git submodule update
```
## Notes

Useful snippet files: [ruby](https://github.com/honza/vim-snippets/blob/master/snippets/ruby.snippets), [erb](https://github.com/honza/vim-snippets/blob/master/snippets/eruby.snippets), [haml](https://github.com/honza/vim-snippets/blob/master/snippets/haml.snippets).

