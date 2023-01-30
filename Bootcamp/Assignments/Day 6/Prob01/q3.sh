read -p "Enter a number : " n
ans=1
for ((i=2; i<n; i++))
do
	if [ $(($n%$i)) -eq 0 ]
	then
		ans=0
		break
	fi
done
if [ $ans -eq 1 ]
then
	echo "It is a Prime Number"
else
	echo "It is Not a prime number"
fi
