ans=0
function FtoC(){
	C=`echo $1 32 | awk '{print $1-$2}'`
	factor=`echo 5 9 | awk '{print $1/$2}'`
	C=`echo $C $factor | awk '{print $1*$2}'`
	printf "\n$1 degF = $C degC \n"
	ans=1
}
function CtoF(){
	factor=`echo 9 5| awk '{print $1/$2}'`
	F=`echo $1 $factor | awk '{print $1*$2}'`
	F=`echo $F 32 | awk '{print $1+$2}'`
	printf "\n$1 degC = $F degF \n"
	ans=1
}
printf "\n"
read -p "Choose :- 1) degF to degC 2) degC to degF : " choice
printf "\n"
case $choice in
	1) read -p "Enter temperature in degF : " F
		if [ $F -lt 32 -o $F -gt 212 ]
		then
			echo "enter between 32 and 212 for this option"
		else
			FtoC $F
		fi
		;;
	2)read -p "Enter temperature in degC : " C
		if [ $C -lt 0 -o $C -gt 100 ]
		then
			echo "enter between 0 and 100 for this option"
		else
			CtoF $C
		fi
		;;
esac

