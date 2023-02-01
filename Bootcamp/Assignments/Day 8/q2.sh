declare -A birthData
declare -A group
printf "\nBirth Data of 50 people :- \n\n"
count1=0; count2=0; count3=0; count4=0; count5=0; count6=0; count7=0; count8=0; count9=0; count10=0; count11=0; count12=0;
for((i=1; i<=50; i++))
do
	Y=$(((RANDOM%2)+1992))
	month=$(((RANDOM%12)+1))
	case $month in
		1) M="January" ;; 2) M="February" ;; 3) M="March" ;; 4) M="April" ;; 5) M="May" ;; 6) M="June";;
		7) M="July" ;; 8) M="August" ;; 9) M="September" ;; 10) M="October" ;; 11) M="November" ;; 12) M="December" ;;
	esac
	birthData+=([$i]="$M/$Y")

	if [ $Y -eq 1992 ]
	then
		case $month in
                	1)M="January"; ((count1++)); group+=(["$M/$Y"]=$count1);;
			2)M="February"; ((count2++)); group+=(["$M/$Y"]=$count2);;
			3)M="March"; ((count3++)); group+=(["$M/$Y"]=$count3);;
			4)M="April"; ((count4++)); group+=(["$M/$Y"]=$count4);;
			5)M="May"; ((count5++)); group+=(["$M/$Y"]=$count5);;
			6)M="June"; ((count6++)); group+=(["$M/$Y"]=$count6);;
        	       	7)M="July"; ((count7++)); group+=(["$M/$Y"]=$count7);;
			8)M="August"; ((count8++)); group+=(["$M/$Y"]=$count8);;
			9)M="September"; ((count9++)); group+=(["$M/$Y"]=$count9);;
			10)M="October"; ((count10++)); group+=(["$M/$Y"]=$count10);;
			11)M="November"; ((count11++)); group+=(["$M/$Y"]=$count11);;
			12)M="December"; ((count12++)); group+=(["$M/$Y"]=$count12);;
 	      	esac
	else
		case $month in
                        1)M="January"; ((countt1++)); group+=(["$M/$Y"]=$countt1);;
                        2)M="February"; ((countt2++)); group+=(["$M/$Y"]=$countt2);;
                        3)M="March"; ((countt3++)); group+=(["$M/$Y"]=$countt3);;
                        4)M="April"; ((countt4++)); group+=(["$M/$Y"]=$countt4);;
                        5)M="May"; ((countt5++)); group+=(["$M/$Y"]=$countt5);;
                        6)M="June"; ((countt6++)); group+=(["$M/$Y"]=$countt6);;
                        7)M="July"; ((countt7++)); group+=(["$M/$Y"]=$countt7);;
                        8)M="August"; ((countt8++)); group+=(["$M/$Y"]=$countt8);;
                        9)M="September"; ((countt9++)); group+=(["$M/$Y"]=$countt9);;
                        10)M="October"; ((countt10++)); group+=(["$M/$Y"]=$countt10);;
                        11)M="November"; ((countt11++)); group+=(["$M/$Y"]=$countt11);;
                        12)M="December"; ((countt12++)); group+=(["$M/$Y"]=$countt12);;
                esac
	fi
done

for((i=1; i<=50; i++))
do
	echo "$i -> ${birthData[$i]}"
done

printf "\nNo of people having birthdays in same month :- \n\n"
printf "Birthdate -> No of people\n\n"

for key in ${!group[@]}
do
	echo "$key  ->  ${group[$key]}"
done


