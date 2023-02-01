printf "\n ~~Singlet Count~~ \n\n"
headCount=0
tailCount=0
totalCount=0
random=$((RANDOM%1000))
while [ $totalCount -lt $random ]
do
        if [ $((RANDOM%2)) -eq 0 ]
        then
                ((headCount++))
        else
                ((tailCount++))
        fi

((totalCount++))
done

echo "Number of times coin flipped : $totalCount"

declare -A singlet=([Heads]=$headCount [Tails]=$tailCount)

printf "\nSinglet dictionary :- \n\n"
for key in ${!singlet[@]}
do
	echo "$key -> ${singlet[$key]}"
done
printf "\n"
hp=`echo $headCount $totalCount | awk '{print ($1/$2)*100}'`
tp=`echo $tailCount $totalCount | awk '{print ($1/$2)*100}'`
echo "Heads % = $hp %"
echo "Tails % = $tp %"
printf "\n ~~~~~~~END~~~~~~~~ \n\n\n"

#~~~~~~~~~~~~~~END~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

printf "\n~~Doublet Count~~ \n\n"

HH=0; HT=0; TH=0; TT=0
firstFlip=-1
secondFlip=-1
totalCount=0
random=$((RANDOM%1000))
while [ $totalCount -lt $random ]
do
	if [ $((RANDOM%2)) -eq 0 ]
        then
                firstFlip=0
        else
		firstFlip=1
        fi

	if [ $((RANDOM%2)) -eq 0 ]
        then
                secondFlip=0
        else
                secondFlip=1
        fi

	if [ $firstFlip -eq 0 -a $secondFlip -eq 0 ]
	then
		((HH++))
	elif [ $firstFlip -eq 0 -a $secondFlip -eq 1 ]
	then
		((HT++))
	elif [ $firstFlip -eq 1 -a $secondFlip -eq 0 ]
	then
		((TH++))
	elif [ $firstFlip -eq 1 -a $secondFlip -eq 1 ]
	then
		((TT++))
	fi
((totalCount++))
done

printf "Number of times coin flipped : $(($totalCount*2)) \n\n"

declare -A doublet=([HH]=$HH [HT]=$HT [TH]=$TH [TT]=$TT)

printf "Doublet dictionary :- \n\n"
for key in ${!doublet[@]}
do
        echo "$key -> ${doublet[$key]}"
done
printf "\n"
HH=`echo $HH $totalCount | awk '{print ($1/$2)*100}'`
HT=`echo $HT $totalCount | awk '{print ($1/$2)*100}'`
TH=`echo $TH $totalCount | awk '{print ($1/$2)*100}'`
TT=`echo $TT $totalCount | awk '{print ($1/$2)*100}'`
echo "Head-Head % = $HH %"
echo "Head-Tail % = $HT %"
echo "Tail-Head % = $TH %"
echo "Tail-Tail % = $TT %"
printf "\n~~~~~~~END~~~~~~\n\n\n"
#~~~~~~~~~~~~~~~~~~~~END~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

printf "~~Triplet Count~~ \n\n"

hhh=0; hht=0; hth=0; htt=0; thh=0; tht=0; tth=0; ttt=0
count=0;
random=$((RANDOM%1000))
while [ $count -lt $random ]
do
        num=$(((RANDOM%8)+1))
	case $num in
		1)hhh=$(($hhh+1)) ;; 2)hht=$(($hht+1)) ;; 3)hth=$(($hth+1)) ;; 4)htt=$(($htt+1)) ;;
		5)thh=$(($thh+1)) ;; 6)tht=$(($tht+1)) ;; 7)tth=$(($hhh+1)) ;; 8)ttt=$(($hhh+1)) ;;
	esac
((count++))
done

printf "Number of times coin flipped : $(($count*3)) \n\n"

declare -A triplet=([HHH]=$hhh [HHT]=$hht [HTH]=$hth [HTT]=$htt [THH]=$thh [THT]=$tht [TTH]=$tth [TTT]=$ttt)

printf "Triplet Dictionary :- \n\n"

for key in ${!triplet[@]}
do
	echo "$key  ->  ${triplet[$key]}"
done
printf "\n"
hhh=`echo $hhh $count | awk '{print ($1/$2)*100}'`
hht=`echo $hht $count | awk '{print ($1/$2)*100}'`
hth=`echo $hth $count | awk '{print ($1/$2)*100}'`
htt=`echo $htt $count | awk '{print ($1/$2)*100}'`
thh=`echo $thh $count | awk '{print ($1/$2)*100}'`
tht=`echo $tht $count | awk '{print ($1/$2)*100}'`
tth=`echo $tth $count | awk '{print ($1/$2)*100}'`
ttt=`echo $ttt $count | awk '{print ($1/$2)*100}'`

echo "Head-Head-Head % = $hhh %"
echo "Head-Head-Tail % = $hht %"
echo "Head-Tail-Head % = $hth %"
echo "Head-Tail-Tail % = $htt %"
echo "Tail-Head-Head % = $thh %"
echo "Tail-Head-Tail % = $tht %"
echo "Tail-Tail-Head % = $tth %"
echo "Tail-Tail-Tail % = $ttt %"
printf "\n ~~~~~~~END~~~~~~~~ \n\n"


#~~~~~~~~~~~~~~~~~~~~~END~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





