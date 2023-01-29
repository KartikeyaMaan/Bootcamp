function palindrome(){
	num=$1
	new=0
	while [ $num -ne 0 ]
	do
		rem=$(($num%10))
		num=$(($num/10))
		new=$((($new*10)+$rem))
	done
	if [ $new -eq $1 ]
	then
		printf "\n $1 is Palindrome \n"
	else
		printf "\n $1 is Not Palindrome \n"
	fi
}
printf "\n"
for((i=1; i<=2; i++))
do
	read -p "Enter $i th number : " number
	palindrome $number
done
