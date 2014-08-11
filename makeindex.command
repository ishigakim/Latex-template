#!/bin/sh

# change dir to current directory
cd `dirname $0`


#old=OpenFOAM-memo-ver1
#new=OpenFOAM-memo
#diff=OpenFOAM-memo-diff-ver2

src=OpenFOAM-memo

# compile 
platex ${src}.tex
jbibtex ${src}

#makeindex ${src}.idx
platex ${src}.tex
mendex -s MyindexStyle -r -c -g  ${src}
platex ${src}.tex

dvipdfmx ${src}.dvi



