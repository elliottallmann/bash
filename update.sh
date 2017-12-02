#!/bin/bash

function pushChanges() {
   git add .bash_aliases
   git commit -asm "Created alias $1 for $2."
   git push
   source ~/.bashrc
}

function pullChanges() {
   git pull
   source ~/.bashrc
}


if [ -z "$1" ]; then 
	pullChanges
else pushChanges $1 $2;
fi
