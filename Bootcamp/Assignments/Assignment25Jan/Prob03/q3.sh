isPrime=1
function checkPrime(){
	num=$1
	for((i=2; i<num; i++))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			isPrime=0
			printf "\n $1 is not prime \n"
			return
		fi
	done
	printf "\n $1 is a Prime Number \n"
}
function getPalindrome(){
	num=$1
	newNum=0
	while [ $num -ne 0 ]
	do
		rem=$(($num%10))
		newNum=$((($newNum*10)+$rem))
		num=$(($num/10))
	done
	printf "\n Palindrome of $1 = $newNum \n"
}
printf "\n"
read -p "enter a number : " n
checkPrime $n
getPalindrome $n
checkPrime $newNum


