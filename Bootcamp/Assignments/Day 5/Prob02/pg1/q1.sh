a=$((RANDOM%1000))
printf "\nFirst Number = $a \n"
b=$((RANDOM%100))
printf "Second Number = $b \n"
c=$((RANDOM%100))
printf "Third Number = $c \n"
d=$((RANDOM%100))
printf "Fourth Number = $d \n"
e=$((RANDOM%100))
printf "Fifth Number = $e \n"
max=0
min=100
for i in $a $b $c $d $e
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done
printf "\n"
echo "Max Value = $max"
echo "Min Value = $min"
















