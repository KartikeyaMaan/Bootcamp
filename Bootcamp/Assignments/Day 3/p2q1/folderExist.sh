printf "Enter Folder Name: "
read Name
if [ -d $Name ]
then
	printf "Folder Exist: "
else
	mkdir $Name
	printf "Folder Created: "

fi
printf "\n"
ls

