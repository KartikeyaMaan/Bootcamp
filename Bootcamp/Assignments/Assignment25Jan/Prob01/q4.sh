read -p "Enter a number : " n
printf "List of prime numbers till $n is : \n"
for ((k=1; k<=n; k++))
do
	ans=1
	for ((i=2; i<k; i++))
	do
        	if [ $(($k%$i)) -eq 0 ]
        	then
                	ans=0
                	break
        	fi
	done
	if [ $ans -eq 1 ]
	then
        	echo $k
	fi
done
