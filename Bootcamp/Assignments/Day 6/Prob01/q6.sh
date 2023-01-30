read -p "Enter a number : " n
printf "Prime factors are : 1 "
while [ $(($n%2)) -eq 0 ]
do
	printf "2 "
	n=$(($n/2))
done
for ((i=3; i*i<=n; i+=2))
do
	while [ $(($n%$i)) -eq 0 ]
	do
		printf "$i "
		n=$(($n/$i))
	done
done
if [ $n -gt 1 ]
then
	printf "$n"
fi
