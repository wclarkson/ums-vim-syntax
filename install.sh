#!/bin/sh

# make syntax directory if it doesn't exist and copy syntax file
mkdir -p ~/.vim/syntax
cp ums.vim ~/.vim/syntax/

# add necessary lines to vimrc
echo "filetype on" >> ~/.vimrc
echo "au BufNewFile,BufRead *.ums set filetype=ums" >> ~/.vimrc

echo "Install complete."
