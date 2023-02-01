count1=0; count2=0; count3=0; count4=0; count5=0; count6=0

declare -A map

printf "\n"
echo "Dictionary :-"
printf "\n"
echo "Value -> Freq"
printf "\n"

while [ $count1 -ne 10 -a $count2 -ne 10 -a $count3 -ne 10 -a $count4 -ne 10 -a $count5 -ne 10 -a $count6 -ne 10 ]
do
	num=$(((RANDOM%6)+1))
	case $num in
		1) ((count1++)) ; map+=([1]=$count1) ;;
		2) ((count2++)) ; map+=([2]=$count2) ;;
		3) ((count3++)) ; map+=([3]=$count3) ;;
		4) ((count4++)) ; map+=([4]=$count4) ;;
		5) ((count5++)) ; map+=([5]=$count5) ;;
		6) ((count6++)) ; map+=([6]=$count6) ;;
	esac
done

for key in ${!map[@]}
do
	echo "$key  ->  ${map[$key]}"
done

maxValue=0; maxKey=0; minKey=11; minValue=11;

for key in ${!map[@]}
do
	if [ ${map[$key]} -gt $maxValue ]
	then
		maxValue=${map[$key]}
		maxKey=$key
	fi

	if [ ${map[$key]} -lt $minValue ]
	then
		minValue=${map[$key]}
		minKey=$key
	fi
done

printf "\n"
echo "Max freq element = $maxKey"
echo "Min freq element = $minKey"

