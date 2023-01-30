#ex:- 0 -1 2 -3 1 , 1 -2 1 0 5
read -p "Enter size of array : " size
declare -a arr
for((i=0; i<size; i++))
do
	read -p "Enter $(($i+1)) element : " ele
	arr+=($ele)
done
printf "\n"
echo "Array = ${arr[@]}"
printf "\nTriplets with sum zero are : \n"
tripletFound=0
for((i=0; i<=size-3; i++))
do
	for((j=i+1; j<=size-2; j++))
	do
		for((k=j+1; k<=size-1; k++))
		do
			if [ $((${arr[i]}+${arr[j]}+${arr[k]})) -eq 0 ]
			then
				echo "  ${arr[i]}  ${arr[j]}  ${arr[k]}"
				tripletFound=1
			fi
		done
	done
done
if [ $tripletFound -eq 0 ]
then
	echo "None"
fi
