echo "coin flipped"
echo "coin in air"
if [ $((RANDOM%2)) -eq 0 ]
then
	echo "And itssss"
	echo "~~~~Heads~~~~"
else
	echo "And itssss"
	echo "~~~~~Tails~~~~~"
fi
