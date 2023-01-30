read -p "Enter n : " n
Hnum=0
for ((i=1; i<=n; i++))
do
	smallCal=`echo 1 $i | awk '{print $1/$2}'`
	Hnum=`echo $Hnum $smallCal | awk '{print $1+$2}'`
done
echo "Nth Harmonic Number =" $Hnum
