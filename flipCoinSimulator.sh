#!/bin/bash -x
declare -A singletDictionary;
read -p "Enter how many time you want to flip the coin: " numberOfTimes;
head=0;
tail=1;
headCount=0;
tailCount=0;
counter=0;
for (( iteration=1; iteration<=numberOfTimes; iteration++ ))
do
	flipcoin=$((RANDOM%2));
	((counter++));
	if (( $flipcoin == $head ))
	then
		singletDictionary["$counter"]="Head";
		(( headCount++ ));
	else
		singletDictionary["$counter"]="Tail";
		(( tailCount++ ));
	fi
done

echo ${singletDictionary[@]};
echo "Singlet Combination: "
echo "Head Percentage : "$(awk "BEGIN {printf $headCount/$numberOfTimes}");
echo "Tail percentage : "$(awk "BEGIN {printf $tailCount/$numberOfTimes}");
