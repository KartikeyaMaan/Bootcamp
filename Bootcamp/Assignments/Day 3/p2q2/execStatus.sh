printf "enter command: "
read command
$command
if [ $? -eq 0 ]
then
	printf "Executed successfully"
else
	printf "Not Executed"
fi
