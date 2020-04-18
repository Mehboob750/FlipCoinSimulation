#!/bin/bash -x
#Singlet Combination
declare -A singletDictionary;
read -p "Enter how many time you want to flip the coin: " numberOfTimes;
head=0;
tail=1;
headCount=0;
tailCount=0;
counter=0;
arrayIteration=0;
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
#echo "Head Percentage : " `$(awk "BEGIN {printf $headCount/$numberOfTimes}")`;
#echo "Tail percentage : " `$(awk "BEGIN {printf $tailCount/$numberOfTimes}")`;

headPercent=$(awk "BEGIN {printf $headCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${headPercent};

tailPercent=$(awk "BEGIN {printf $tailCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${tailPercent};
echo ${resultArray[@]};


#Doublet combination
declare -A doubletDictionary;
headHead=0;
headTail=1;
tailHead=2;
tailTail=3;
headHeadCount=0;
headTailCount=0;
tailHeadCount=0;
tailTailCount=0;
for (( iteration=1; iteration<=numberOfTimes; iteration++ ))
do
   flipCoin=$((RANDOM%5));
   ((counter++));
   if (( $flipCoin == $headHead ))
   then
      doubletDictionary["$counter"]="Head-Head";
      (( headHeadCount++ ));
   elif (( $flipCoin == $headTail ))
	then
      doubletDictionary["$counter"]="Head-Tail";
      (( headTailCount++ ));
  elif (( $flipCoin == $tailHead ))
   then
      doubletDictionary["$counter"]="Tail-Head";
      (( tailHeadCount++ ));

  elif (( $flipCoin == $tailTail ))
   then
      doubletDictionary["$counter"]="Tail-Tail";
      (( tailTailCount++ ));

	fi
done

echo ${doubletDictionary[@]};
echo "Doublet Combination: "
#echo "Head-Head Percentage : "$(awk "BEGIN {printf $headHeadCount/$numberOfTimes}");
#echo "Head-Tail percentage : "$(awk "BEGIN {printf $headTailCount/$numberOfTimes}");
#echo "Tail-Head percentage : "$(awk "BEGIN {printf $tailHeadCount/$numberOfTimes}");
#echo "Tail-Tail percentage : "$(awk "BEGIN {printf $tailTailCount/$numberOfTimes}");

headHeadPercent=$(awk "BEGIN {printf $headHeadCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${headHeadPercent};

headTailPercent=$(awk "BEGIN {printf $headTailCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${headTailPercent};

tailHeadPercent=$(awk "BEGIN {printf $tailHeadCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${tailHeadPercent};

tailTailPercent=$(awk "BEGIN {printf $tailTailCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${tailTailPercent};

echo ${resultArray[@]};
