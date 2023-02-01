printf "\n"
read -p "Enter first number (a) : " a
read -p "Enter first number (b) : " b
read -p "Enter first number (c) : " c

f=$(($a+$b/$c))
g=$(($a*$b+$c))
h=$(($c+$a/$b))
i=$(($a%$b+$c))
declare -A map=([a+b/c]=$f [a*b+c]=$g [c+a/b]=$h [a%b+c]=$i)
printf "\nDictionary :-\n"
printf "\nComputation -> Answer\n"
for key in ${!map[@]}
do
	echo "$key   ->   ${map[$key]}"
done
declare -a arr
for val in ${map[@]}
do
	arr+=($val)
done
printf "\n"
echo "Array :- ${arr[@]}"
printf "\n"
for((i=0; i<4; i++))
do
	for((j=$i; j<4; j++))
	do
		if [ ${arr[$j]} -le ${arr[$i]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$i]}
			arr[$i]=$temp
		fi
	done
done

echo "Array sorted in ascending order :- ${arr[@]}"
printf "\n"
i=0; j=4
while [ $i -le $j ]
do
	temp=${arr[$j]}
        arr[$j]=${arr[$i]}
        arr[$i]=$temp
	((i++))
	((j--))
done
echo "Array sorted in descending order :- ${arr[@]}"

