printf "\n"
headCount=0
tailCount=0
while [ $headCount -ne 21 -a $tailCount -ne 21 ]
do
        if [ $((RANDOM%2)) -eq 0 ]
        then
                headCount=$(($headCount+1))
        else
                tailCount=$(($tailCount+1))
        fi
done
tie=0
if [ $headCount -eq $tailCount ]
then
	echo "Its a Tie -_-"
	tie=$(($tie+1))
	while [ $(($headCount-$tailCount)) -ne 2 -a $(($tailCount-$headCount)) -ne 2 ]
	do
        	if [ $((RANDOM%2)) -eq 0 ]
        	then
            	    	headCount=$(($headCount+1))
        	else
                	tailCount=$(($tailCount+1))
        	fi
	done
	if [ $headCount -gt $tailCount ]
        then
                printf "\nHeads won!!! Heads = $headCount , Tails = $tailCount \n"
        else
                printf "\nTails won!!! Heads = $headCount , Tails = $tailCount \n"
        fi
fi

if [ $tie -eq 0 ]
then
	if [ $headCount -eq 21 ]
	then
        	printf "\nHeads won!!! Heads = $headCount , Tails = $tailCount \n\n"
		echo "Difference = $(($headCount-$tailCount))"
	else
	        printf "\nTails won!!! Heads = $headCount , Tails = $tailCount \n\n"
		echo "Difference = $(($tailCount-$headCount))"
	fi
fi


