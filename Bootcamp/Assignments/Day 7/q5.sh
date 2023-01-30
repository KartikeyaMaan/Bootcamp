declare -a arr
for((i=1; i<=100; i++))
do
	if [ $(($i%10)) -eq $(($i/10)) ]
	then
		arr+=($i)
	fi
done
echo "Array = ${arr[@]}"
