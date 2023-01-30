initialMoney=100
timesWon=0
bets=0
profit=0
loss=0
while [ $profit -lt 100 -a $loss -lt 100 ]
do
	if [ $((RANDOM%2)) -eq 0 ]
	then
		profit=$(($profit+1))
		loss=$(($loss-1))
		timesWon=$(($timesWon+1))
	else
		profit=$(($profit-1))
                loss=$(($loss+1))
	fi
	bets=$(($bets+1))
done
if [ $profit -eq 100 ]
then
	printf "\nGoal of Rs 200 reached!!! No. of times won = $timesWon , No. of bets made = $bets \n"
else
	printf "\nWent broke -_- . No. of times won = $timesWon , No of bets made = $bets \n"
fi
