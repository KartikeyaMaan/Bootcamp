printf "\n"
read -p "enter 1st number : " a
read -p "enter 2nd number : " b
read -p "enter 3rd number : " c
first=$(($a+$b*$c))
printf "\n1) a+b*c = $first \n"
second=$(($c+$a/$b))
printf "2) c+a/b = $second \n"
if [ $first -ge $second ]
then
	max1=$first
	min1=$second
else
	max1=$second
	min1=$first
fi
third=$(($a%$b+$c))
printf "3) a%b+c = $third\n"
fourth=$(($a*$b+$c))
printf "4) a*b+c = $fourth \n\n"
if [ $third -ge $fourth ]
then
        max2=$third
        min2=$fourth
else
        max2=$fourth
        min2=$third
fi
if [ $max1 -gt $max2 ]
then
	max=$max1
else
	max=$max2
fi
if [ $min1 -lt $max2 ]
then
        min=$min1
else
        min=$min2
fi
printf "Maximum = $max \n"
printf "Minimum = $min \n"



