read -p "enter month : " month
month=${month,,}
printf "$month"
if [ $month=="march" ]
then
	echo "true"
else
	echo "false"
fi

