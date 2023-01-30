printf "\n"
declare -a arr
for((i=0; i<10; i++))
do
        arr+=($((RANDOM%1000)))
done
echo "Array = ${arr[@]}"

for((i=9; i>=0; i--))
do
        for((j=0, k=1; k<=i; j++, k++))
	do
		if [ ${arr[j]} -gt ${arr[k]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[k]}
			arr[$k]=$temp;
		fi
	done
done
printf "\n"
echo "Sorted array = ${arr[@]}"
printf "\n"
echo "2nd Largest = ${arr[8]}"
echo "2nd Smallest = ${arr[1]}"
