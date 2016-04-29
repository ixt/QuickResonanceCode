#!/bin/zsh

# First argument "$1" has to be the mp3 file 
# This gets piped with base64 into a temporary text file

base64 -w 0 $1 > .temp.txt

# The text file as then appended and prepended by some
# text 

PREPEND='data:text/html;charset=utf-8,<audio autoplay controls loop><source src="data:audio/mp3;base64,'
ENCODED=$(cat .temp.txt)
APPEND='" type="audio/mp3"></audio>'

echo $PREPEND$ENCODED$APPEND > .temp.txt

# Encode that text into a qr code using qrencode
qrencode -o output.png < .temp.txt

# If there is any other arguments that arent 0, then 
# display the image
if [ "$2" -ne 0 ]; then 
    display output.png
fi

rm .temp.txt

