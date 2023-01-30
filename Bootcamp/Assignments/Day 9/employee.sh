printf "\nWelcome to Employee Wage Computation Program \n"
twh=0
fullTime=0
partTime=0
	random=$((RANDOM%3))
	for((i=0; i<20; i++))
	do
		case $random in
			1) fullTime=$(($fullTime+1));;
			*) partTime=$(($partTime+1));;
		esac
	done
	twh=$(($fullTime*8 + $partTime*4))
	echo "Total work hours = $twh"

totalWages=$((($fullTime*8 + $partTime*4)*($fullTime+$partTime)))
echo "present count for month = $(($fullTime+$partTime))"
echo "total wages for month = $totalWages"
