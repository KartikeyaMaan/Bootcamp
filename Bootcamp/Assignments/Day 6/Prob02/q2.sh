printf "\nThink of a number\n\n"
printf "Select Range :- \n\n"
read -p "enter starting value : " sv
read -p "enter ending vaue : " ev
printf "\n"
while [ $sv -lt $ev ]
do
	mid=$((($sv+$ev)/2))
	read -p "is $mid your magic number? (Y/N) : " ans1
	if [ $ans1 == "Y" ]
	then
		printf "\nWe have got your magic number!!!\n"
		exit
	fi
	read -p "is $mid less than magic number (L) or more than magic number (M) : " ans2
	if [ $ans2 == "L" ]
	then
		ev=$(($mid-1))
	elif [ $ans2 == "M" ]
	then
		sv=$(($mid+1))
	else
		echo "not a valid answer"
		break
	fi
done
printf "\n$sv is your magic number!!!\n"
