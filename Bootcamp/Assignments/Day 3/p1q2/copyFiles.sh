for i in *.txt
do
	folder=`echo $i | awk -F. '{print $1}'`
	printf $i
	printf "\n"
	printf $folder
	if [ -d $folder ]
	then
		rm -r $folder
	fi
	mkdir $folder
	cp -r $i $folder
	printf "\n\n"
done
