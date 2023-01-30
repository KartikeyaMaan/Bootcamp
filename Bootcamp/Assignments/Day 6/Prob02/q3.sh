headCount=0
tailCount=0
while [ $headCount -ne 11 -a $tailCount -ne 11 ]
do
	if [ $((RANDOM%2)) -eq 0 ]
	then
		headCount=$(($headCount+1))
	else
		tailCount=$(($tailCount+1))
	fi
done
if [ $headCount -eq 11 ]
then
	printf "\n Heads won!!! Heads = $headCount , Tails = $tailCount \n"
else
	printf "\n Tails won!!! Heads = $headCount , Tails = $tailCount \n"
fi
