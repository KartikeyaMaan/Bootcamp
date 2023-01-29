read -p	"enter input : " num
read -p "choose one : 1) feet to inch 2)feet to meter 3)inch to feet 4)meter to feet : " choice
case $choice in
	1)echo $(($num*12));;
	2)echo $num 0.3048 | awk '{print $1*$2}';;
	3)echo $num 12 | awk '{print $1/$2}';;
	4)echo $num 3.281 | awk '{print $1*$2}';;
	*)echo "wrong input";;
esac
