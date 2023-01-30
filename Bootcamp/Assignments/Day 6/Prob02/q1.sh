read -p "Enter a n : " n
i=1
while [ $((2**$i)) -le 256 ]
do
        echo "2 ^ $i =" $((2**$i))
	i=$(($i+1))
done

