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
   flipCoin=$((RANDOM%4));
   ((counter++));
   case $flipCoin in
		$headHead )
      	doubletDictionary["$counter"]="Head-Head";
      	(( headHeadCount++ ))
			;;
   	$headTail )
      	doubletDictionary["$counter"]="Head-Tail";
      	(( headTailCount++ ))
			;;
      $tailHead )
      	doubletDictionary["$counter"]="Tail-Head";
      	(( tailHeadCount++ ))
			;;

   	$tailTail )
	      doubletDictionary["$counter"]="Tail-Tail";
   	   (( tailTailCount++ ))
			;;
		* )
				echo "Invalid selection";
	esac
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

#Triplet Combination
declare -A tripletDictionary;
headHeadHead=0;
headHeadTail=1;
headTailHead=2;
tailHeadHead=3;
tailTailTail=4;
tailTailHead=5;
tailHeadTail=6;
headTailTail=7;

headHeadHeadCount=0;
headHeadTailCount=0;
headTailHeadCount=0;
tailHeadHeadCount=0;
tailTailTailCount=0;
tailTailHeadCount=0;
tailHeadTailCount=0;
headTailTailCount=0;

for (( iteration=1; iteration<=numberOfTimes; iteration++ ))
do
   flipCoin=$((RANDOM%8));
   ((counter++));
   case $flipCoin in
		$headHeadHead )
      	tripletDictionary["$counter"]="Head-Head-Head";
      	(( headHeadHeadCount++ ))
			;;
     $headHeadTail )
			tripletDictionary["$counter"]="Head-Head-Tail";
      	(( headHeadTailCount++ ))
			;;
 	  $headTailHead )
     		tripletDictionary["$counter"]="Head-Tail-Head";
      	(( headTailHeadCount++ ))
			;;
     $tailHeadHead )
      	tripletDictionary["$counter"]="Tail-Head-Head";
      	(( tailHeadHeadCount++ ))
			;;
     $tailTailTail )
      	tripletDictionary["$counter"]="Tail-Tail-Tail";
      	(( tailTailTailCount++ ))
			;;
     $tailTailHead )
      	tripletDictionary["$counter"]="Tail-Tail-Head";
      	(( tailTailHeadCount++ ))
			;;

     $tailHeadTail )
      	tripletDictionary["$counter"]="Tail-Head-Tail";
      	(( tailHeadTailCount++ ))
			;;
     $headTailTail )
      	tripletDictionary["$counter"]="Head-Tail-Tail";
      	(( headTailTailCount++ ))
			;;
	  * )
			echo "Invalid selection";
   esac
done

echo ${tripletDictionary[@]};

headHeadHeadPercent=$(awk "BEGIN {printf $headHeadHeadCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${headHeadHeadPercent};

headHeadTailPercent=$(awk "BEGIN {printf $headHeadTailCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${headHeadTailPercent};

headTailHeadPercent=$(awk "BEGIN {printf $headTailHeadCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${headTailHeadPercent};

tailHeadHeadPercent=$(awk "BEGIN {printf $tailHeadHeadCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${tailHeadHeadPercent};

tailTailTailPercent=$(awk "BEGIN {printf $tailTailTailCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${tailTailTailPercent};

tailTailHeadPercent=$(awk "BEGIN {printf $tailTailHeadCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${tailTailHeadPercent};

tailHeadTailPercent=$(awk "BEGIN {printf $tailHeadTailCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${tailHeadTailPercent};

headTailTailPercent=$(awk "BEGIN {printf $headTailTailCount/$numberOfTimes}");
resultArray[((arrayIteration++))]=${headTailTailPercent};

echo ${resultArray[@]};
