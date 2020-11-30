#!/bin/bash

if [ $1 = '--help' ]
then
	echo "sc {platform} {name} {path} {boottoroot or challenge}"
if

platform=$1
name=$2
path=$3
=$4

mkdir $3/$1/$2
touch $3/$1/$2/writeup.md
mkdir $3/$1/$2/challenge
mkdir $3/docs/$2/