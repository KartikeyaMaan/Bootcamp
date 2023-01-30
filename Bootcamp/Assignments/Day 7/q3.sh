read -p "Enter a number : " n
declare -a arr=(1)
while [ $(($n%2)) -eq 0 ]
do
        arr+=(2)
        n=$(($n/2))
done
for ((i=3; i*i<=n; i+=2))
do
        while [ $(($n%$i)) -eq 0 ]
        do
                arr+=($i)
                n=$(($n/$i))
        done
done
if [ $n -gt 1 ]
then
        arr+=($n)
fi
echo "Array of prime factors = ${arr[@]}"
