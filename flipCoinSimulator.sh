#!/bin/bash -x
head=0;
tail=1;
flipcoin=$((RANDOM%2));
if (( $flipcoin == $head ))
then
	echo "Head";
else
	echo "Tail";
fi
