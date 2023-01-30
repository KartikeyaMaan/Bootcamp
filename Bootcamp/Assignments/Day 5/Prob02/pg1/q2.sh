read -p "Enter day : " day
read -p "Enter month : " month
month=${month,,}
if [ $month == "march" ] || [ $month == "april" ] || [ $month == "may" ] || [ $month == "june" ]
then
	if [ $month == "march" ] && [ $day -lt 20 ]
	then
		echo "false"
	elif [ $month == "june" ] && [ $day -gt 20 ]
	then
		echo "false"
	else
		echo "true"
	fi
else
	echo "false"
fi


