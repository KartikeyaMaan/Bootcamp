printf "\n"
declare -a arr
for((i=0; i<10; i++))
do
	arr+=($((RANDOM%1000)))
done
echo "Array = ${arr[@]}"
max=0
max2=0
min2=1000
min=1000
for((i=0; i<10; i++))
do
	if [ ${arr[i]} -gt $max ]
	then
		max2=$max
		max=${arr[i]}
	elif [ ${arr[i]} -lt $max ] && [ ${arr[i]} -gt $max2 ]
	then
		max2=${arr[i]}
	fi

	if [ ${arr[i]} -lt $min ]
	then
		min2=$min
		min=${arr[i]}
	elif [ ${arr[i]} -gt $min ] && [ ${arr[i]} -lt $min2 ]
	then
		min2=${arr[i]}
	fi
done
printf "\n"
echo "Largest = $max"
echo "Smallest = $min"
printf "\n"
echo "2nd Largest = $max2"
echo "2nd Smallest = $min2"

