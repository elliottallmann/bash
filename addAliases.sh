#!/bin/bash
echo "updateAlias"
echo "First, enter the command you want to use as the alias."
echo "Then, enter the command you want that to reference."
echo "Example: 
	Use : mak
	For : make"

read -p "Use : " useCommand
read -p "For : " forCommand

echo "alias $useCommand=\"$forCommand\"" >> ~/bash/.bash_aliases
echo "updateAlias $useCommand $forCommand"
source ~/.bashrc

